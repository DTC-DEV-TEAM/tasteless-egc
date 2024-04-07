<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Http;
use App\GCList;
use Illuminate\Queue\MaxAttemptsExceededException;

class ApiGCIsFetchJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $tries = 10;
    public $maxTries = 10;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        try{

            $url = 'https://devp.digitstrading.ph/api/egc_campaign_fetch';
            $secretKey = env('EGC_SECRET_KEY');
            
            $data = json_decode(file_get_contents("$url/'.$secretKey"));
            
            if ((bool) $data){
                
                GCList::whereIn('id', $data)->update(['is_fetch' => 1]);

                return true;
            }else {
                return false;
            }
        }catch(MaxAttemptsExceededException $e){
            $this->retryUntil(now()->addSeconds(pow(2, $this->attempts())));
        }

    }
}
