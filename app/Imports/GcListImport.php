<?php

namespace App\Imports;

use App\GCList;
use App\QrCreation;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use PhpOffice\PhpSpreadsheet\Shared\Date;
use Illuminate\Contracts\Queue\ShouldQueue;
use Maatwebsite\Excel\Concerns\Importable;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;
use Maatwebsite\Excel\Concerns\WithBatchInserts;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Maatwebsite\Excel\Concerns\SkipsOnError;
use Mail;
use CRUDBooster;
use Illuminate\Support\Str;
use DB;
use Maatwebsite\Excel\Concerns\SkipsFailures;
use Maatwebsite\Excel\Concerns\SkipsOnFailure;
use Maatwebsite\Excel\Validators\Failure;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\BeforeImport;

class GcListImport implements 
    ToModel, 
    WithValidation, 
    WithHeadingRow,
    // SkipsOnFailure,
    WithBatchInserts,
    WithChunkReading,
    WithEvents 
{

    use Importable;

    private $gc_information;
    private $count_row = 0;
    private $total_row = 0;
    private $errors = [];


    public function __construct($gc_information)
    {
        $this->gc_information = $gc_information;
    }

    public function registerEvents(): array
    {

        return[BeforeImport::class => function (BeforeImport $event) {

            $campaign_id = $this->gc_information['campaign_id'];
            $qr_creation = QrCreation::find($this->gc_information['campaign_id']);
            $qr_creation_batch_number = $qr_creation->batch_number;
            $qr_creation_upload_limit_control = $qr_creation->upload_limit_control;
            $totalRow = $event->getReader()->getTotalRows();

            $this->total_row = $totalRow['Worksheet']-1;
            
            if (($this->total_row > $qr_creation_batch_number && $qr_creation_upload_limit_control == null) || ($qr_creation_upload_limit_control == 0 && $qr_creation_upload_limit_control != null) || ($this->total_row > $qr_creation_upload_limit_control && $qr_creation_upload_limit_control != null)){
                // throw new \Exception('Total row count exceeds the batch limit.');
                return CRUDBooster::redirect(CRUDBooster::adminPath("qr_creations/edit/$campaign_id"),'Total row count exceeds the batch limit.', 'danger');
            }     
        }];
    }
    
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {

        $count_row = 0;
        $count_row+=1;
        
        $campaign_id = $this->gc_information['campaign_id'];
        $qr_creation = QrCreation::find($this->gc_information['campaign_id']);
        $qr_creation_batch_number = $qr_creation->batch_number;
        $qr_creation_upload_limit_control = $qr_creation->upload_limit_control;

        if($qr_creation_upload_limit_control == null){
            $qr_creation->upload_limit_control = $qr_creation_batch_number - $count_row;
        }else{
            $qr_creation->upload_limit_control = $qr_creation->upload_limit_control - $count_row;
        }

        $qr_creation->save();
            
        do {
            $generated_qr_code = Str::random(10);
        } while (GCList::where('qr_reference_number', $generated_qr_code)->exists());

        $gcList = new GCList([
            'name' => $row['name'],
            'phone' => $row['phone'],
            'email' => $row['email'],
            'is_fetch' => 0,
            'customer_reference_number' => null,
            'campaign_id' => $this->gc_information['campaign_id'],
            'qr_reference_number' => $generated_qr_code,
            'email_template_id' => $qr_creation->selected_template,
            'date_to_send' => $qr_creation->date_to_send,
            'created_by' => CRUDBooster::myId()
        ]);

        $gcList->save();
    }

    public function rules(): array{
        return [
            '*.name' => 'required',
            '*.email' => 'required|email',
            '*.phone' => 'required',
        ];
    }
    
    public function batchSize(): int
    {
        return 500; 
    }

    public function chunkSize(): int
    {   
        return 500;
    }

}
