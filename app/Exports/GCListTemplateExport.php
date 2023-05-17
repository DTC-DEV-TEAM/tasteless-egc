<?php

namespace App\Exports;

use App\GCList;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\FromCollection;

class GCListTemplateExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return new Collection([]);
    }

    public function headings(): array
    {
        return ['NAME', 'PHONE', 'EMAIL', 'NUMBER OF GCS', 'REDEMPTION PERIOD', 'GC DESCRIPTION', 'GC VALUE'];
    }
}
