<?php

namespace App\Imports;

use App\GCList;
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
        ])->validate();
            

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

            $id = $gcList->id;
            $name = $gcList->name;
            $email = $gcList->email;
            $generated_qr_code = $gcList->qr_reference_number;
            

            $data = array('name'=> $name, 'id' => $id, 'qr_reference_number'=>$generated_qr_code);
            
            Mail::send(['html' => 'redeem_qr.sendemail'], $data, function($message) use ($email) {
                $message->to($email)->subject('Redeem Your QR Code Now!');
                $message->from('punzalan2233@gmail.com', 'Patrick Lester Punzalan');
            });
            

            // return $gcList;
            // return 	CRUDBooster::redirect(CRUDBooster::mainpath(), 'Excel Uploaded Succesfully',"success");

            DB::commit();
        } catch (\Exception $e) {
            DB::rollback();
            // Handle the error and revert any changes made during the transaction
            CRUDBooster::redirect(CRUDBooster::mainpath(), 'Uploading failed',"error");
        }
    }
    
}
