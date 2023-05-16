<?php

namespace App\Imports;

use App\GCList;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

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

        return new GCList([
            'name' => $row[0],
            'phone' => $row[1],
            'email' => $row[2],
            'number_of_gcs' => $row[3],
            'redemption_period' => $row[4],
            'gc_description' => $row[5],
            'gc_value' => $row[6],
        ]);
    }
}
