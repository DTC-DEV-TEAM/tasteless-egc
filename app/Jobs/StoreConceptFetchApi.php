<?php

namespace App\Jobs;

use App\StoreConcept;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Http;
use Illuminate\Queue\MaxAttemptsExceededException;

class StoreConceptFetchApi implements ShouldQueue
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
    
            $prod = config("jobs-url.api.egc_campaign_URL");

            sleep(1);
            // Localhost fetch campaign
            $response = Http::withHeaders([
                'Content-Type' => 'application/json',
            ])->post("$prod/get-token", [
                'secret' => config("jobs-url.api.egc_token_key"),
            ]);
            $get_token = $response->json('data.access_token');
            
            $redemption_list = Http::withHeaders([
                'Authorization' => 'Bearer ' . $get_token['data']['access_token'],
            ])->get("$prod/store_concept");

            $gc_list_fetch = $redemption_list->json();
            
            if($gc_list_fetch['data']){

                foreach ($gc_list_fetch['data'] as $item) {
                    StoreConcept::updateOrCreate(
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