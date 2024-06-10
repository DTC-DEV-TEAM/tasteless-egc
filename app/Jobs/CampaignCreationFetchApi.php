<?php

namespace App\Jobs;

use App\QrCreation;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Http;
use Illuminate\Queue\MaxAttemptsExceededException;

class CampaignCreationFetchApi implements ShouldQueue
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

        try {
            $prod = config("jobs-url.api.egc_campaign_URL");

            sleep(1);
            
            $response = Http::withHeaders([
                'Content-Type' => 'application/json',
            ])->post("$prod/get-token", [
                'secret' => config("jobs-url.api.egc_token_key"),
            ]);

            $get_token = $response->json('data.access_token');

            $campaign_request = Http::withHeaders([
                'Authorization' => 'Bearer ' . $get_token['data']['access_token'],
            ])->get("$prod/campaign_creation");

            $campaign_fetch = $campaign_request->json();
            
            if($campaign_fetch['data']){

                foreach ($campaign_fetch['data'] as $item) {

                    $item['status_id'] = 1;
                    
                    QrCreation::updateOrCreate(
                        ['id' => $item['id']],
                        $item
                    );
                }
            }else{
                return;
            }
        }catch(MaxAttemptsExceededException $e){
            $this->retryUntil(now()->addSeconds(pow(2, $this->attempts())));
        }
    }
}