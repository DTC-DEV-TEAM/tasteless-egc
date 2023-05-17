<?php

namespace App\Imports;

use App\GCList;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Mail;
use CRUDBooster;

class GcListImport implements ToModel, WithStartRow
{
    
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
            'number_of_gcs' => $row[3],
            'redemption_period' => $row[4],
            'gc_description' => $row[5],
            'gc_value' => $row[6],
        ]);

        $gcList->save();

        $id = $gcList->id;
        $name = $gcList->name;
        $email = $gcList->email;

        $data = array('name'=> $name, 'id' => $id);
        
        Mail::send(['html' => 'redeem_qr.sendemail'], $data, function($message) use ($email) {
            $message->to($email, 'Tutorials Point')->subject('Laravel Basic Testing Mail');
            $message->from('punzalan2233@gmail.com', 'Patrick Lester Punzalan');
        });
        

        // return $gcList;
        // return 	CRUDBooster::redirect(CRUDBooster::adminPath('g_c_lists'), 'Excel Uploaded Succesfully',"success");
    }
}
