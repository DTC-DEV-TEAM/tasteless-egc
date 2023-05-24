<?php

namespace App\Imports;

use App\GCList;
use App\QrCreation;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Concerns\WithStartRow;
use PhpOffice\PhpSpreadsheet\Shared\Date;
use Illuminate\Contracts\Queue\ShouldQueue;
use Maatwebsite\Excel\Concerns\Importable;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;
use Mail;
use CRUDBooster;
use Illuminate\Support\Str;
use DB;

class GcListImport implements ToModel, WithStartRow
{

    private $user_id;


    public function __construct($user_id)
    {
        $this->user_id = $user_id;
    }
    
    /**
     * @return int
     */
    public function startRow(): int
    {
        return 2;
    }
    
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {

        $validate = Validator::make($row, [
            '0' => 'required',
            '1' => 'required',
            '2' => 'required|email',
        ]);

        if(!$validate->validate()){
            return;
        }
    
        try {

            DB::beginTransaction();

            do {
                $generated_qr_code = Str::random(10);
            } while (GCList::where('qr_reference_number', $generated_qr_code)->exists());

            $gcList = new GCList([
                'name' => $row[0],
                'phone' => $row[1],
                'email' => $row[2],
                'campaign_id' => $this->user_id,
                'qr_reference_number' => $generated_qr_code
                // 'redemption_end' => Date::excelToDateTimeObject($row[4])->format('Y-m-d'),
            ]);

            $gcList->save();

            DB::commit();


        } catch (\Exception $e) {
            
            DB::rollback();

            // Handle the error and revert any changes made during the transaction
            CRUDBooster::redirect(CRUDBooster::mainpath(), 'Uploading failed',"error");
        }

    }
    
    
}
