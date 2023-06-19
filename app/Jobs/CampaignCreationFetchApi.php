<?php

namespace App\Jobs;

use App\QrCreation;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Http;

class CampaignCreationFetchApi implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

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

            sleep(1);

            $response = Http::withHeaders([
                'Content-Type' => 'application/json',
            ])->post('https://devp.digitstrading.ph/api/get-token', [
                'secret' => '9384c81fb1f9e661946976585fb0d75a',
            ]);

            $get_token = $response->json('data.access_token');

            $campaign_request = Http::withHeaders([
                'Authorization' => 'Bearer ' . $get_token['data']['access_token'],
            ])->get('https://devp.digitstrading.ph/api/campaign_creation');

            $campaign_fetch = $campaign_request->json();
            
            if($campaign_fetch['data']){

                foreach ($campaign_fetch['data'] as $item) {
        
                    QrCreation::firstOrCreate(
                        ['id' => $item['id']],
                        $item
                    );
                }
            }else{
                return;
            }
        }catch(MaxAttemptsExceededException $e){
            $this->release(5);
        }
    }
}
