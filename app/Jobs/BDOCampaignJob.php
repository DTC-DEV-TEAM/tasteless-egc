<?php

namespace App\Jobs;

use App\GCList;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Str;
use Illuminate\Queue\MaxAttemptsExceededException;

class BDOCampaignJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $tries = 10;
    public $maxTries = 10;

    /**
     * Create a new job instance.
     *
     * @return void
     */

    public $gc_list;

    public function __construct($data)
    {
        $this->gc_list = $data;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        // Max
        try{
            $total_row = $this->gc_list['total_rows'];
            
            for ($i = 0; $i < $total_row; $i++) {
                do {
                    $generated_qr_code = Str::upper(Str::random(7));
                } while (GCList::where('qr_reference_number', "BDO$generated_qr_code")->exists());
            
                GCList::create([
                    'campaign_id' => $this->gc_list['qr_creations']->id,
                    'name' => 'BDO CUSTOMER',
                    'qr_reference_number' => "BDO$generated_qr_code",
                    'is_fetch' => 0,
                    'created_by' => $gc_list['created_by']
                ]);
            }
        }catch(MaxAttemptsExceededException $e){
            $this->retryUntil(now()->addSeconds(pow(2, $this->attempts())));
        }
    }
    
}
