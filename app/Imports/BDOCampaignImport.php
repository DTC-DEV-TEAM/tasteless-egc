<?php

namespace App\Imports;

use App\GCList;
use CRUDBooster;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\SkipsRows;

use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithBatchInserts;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\BeforeImport;

class BDOCampaignImport implements
    ToModel, 
    WithHeadingRow,
    WithEvents 
{

    private $bdo_data;
    private $total_row = 0;

    public function __construct($bdo_campaign)
    {
        $this->bdo_data = $bdo_campaign;
    }

    public function registerEvents(): array
    {
        return[BeforeImport::class => function (BeforeImport $event) {

            $qr_creation = $this->bdo_data;
            $qr_creation_batch_number = $qr_creation->batch_number;
            $qr_creation_upload_limit_control = $qr_creation->upload_limit_control;
            $totalRow = $event->getReader()->getTotalRows();

            $this->total_row = $totalRow['Worksheet']-1;
            
            if (($this->total_row > $qr_creation_batch_number && $qr_creation_upload_limit_control == null) || ($qr_creation_upload_limit_control == 0 && $qr_creation_upload_limit_control != null) || ($this->total_row > $qr_creation_upload_limit_control && $qr_creation_upload_limit_control != null)){
                return CRUDBooster::redirect(CRUDBooster::adminPath("qr_creations/edit/$qr_creation->id"),'Total row count exceeds the batch limit.', 'danger');
            }
        }];
    }

    public function model(array $row)
    {
    }

    // public function rules(): array{
    //     return [
    //         '*.name' => 'required',
    //     ];
    // }
    
    // public function batchSize(): int
    // {
    //     return 500;
    // }

    // public function chunkSize(): int
    // {   
    //     return 500;
    // }

    public function getTotalRows(): int
    {
        return $this->total_row;
    }
}

