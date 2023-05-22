<?php

namespace App\Imports;

use App\GCList;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;
use PhpOffice\PhpSpreadsheet\Shared\Date;
use Illuminate\Contracts\Queue\ShouldQueue;
use Mail;
use CRUDBooster;
use Illuminate\Support\Str;

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
        
        $gcList = new GCList([
            'name' => $row[0],
            'phone' => $row[1],
            'email' => $row[2],
            'campaign_id' => $this->user_id,
            'qr_reference_number' => Str::random(10)
            // 'number_of_gcs' => $row[3],
            // 'redemption_end' => Date::excelToDateTimeObject($row[4])->format('Y-m-d'),
            // 'gc_description' => $row[5],
            // 'gc_value' => $row[6],
        ]);

        $gcList->save();

        $id = $gcList->id;
        $name = $gcList->name;
        $email = $gcList->email;
        $generated_qr_code = $gcList->qr_reference_number;
        

        $data = array('name'=> $name, 'id' => $id, 'qr_reference_number'=>$generated_qr_code);
        
        // Mail::send(['html' => 'redeem_qr.sendemail'], $data, function($message) use ($email) {
        //     $message->to($email, 'Tutorials Point')->subject('Laravel Basic Testing Mail');
        //     $message->from('punzalan2233@gmail.com', 'Patrick Lester Punzalan');
        // });
        

        // return $gcList;
        // return 	CRUDBooster::redirect(CRUDBooster::mainpath(), 'Excel Uploaded Succesfully',"success");
    }
}
