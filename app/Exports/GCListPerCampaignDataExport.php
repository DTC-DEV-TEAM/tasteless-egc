<?php

namespace App\Exports;

use App\GCList;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithCustomChunkSize;

class GCListPerCampaignDataExport implements FromQuery, WithHeadings, WithCustomChunkSize
{
    use Exportable;

    public $campaign_id;
    
    public function __construct($campaign_id)
    {
        $this->campaign_id = $campaign_id;
    }

    public function query()
    {
        return GCList::query()
            ->where('campaign_id', $this->campaign_id)
            ->select('qr_reference_number');
    }

    public function headings(): array
    {
        return ['REFERENCE CODE'];
    }

    public function chunkSize(): int
    {
        return 10000;
    }
}
