<?php

namespace App\Jobs;

use App\CompanyId;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Http;
use Illuminate\Queue\MaxAttemptsExceededException;

class CompanyIdsJob implements ShouldQueue
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
            $localhost = 'http://127.0.0.1:1000';
            $ip_address = 'http://192.168.4.101:1000';
            $prod = 'https://tevp.tasteless.com.ph';

            sleep(1);
            // Localhost fetch CompanyIds
            $response = Http::withHeaders([
                'Content-Type' => 'application/json',
            ])->post("$prod/api/get-token", [
                'secret' => '9384c81fb1f9e661946976585fb0d75a',
            ]);

            $get_token = $response->json('data.access_token');

            $company_ids = Http::withHeaders([
                'Authorization' => 'Bearer ' . $get_token['data']['access_token'],
            ])->get("$prod/api/company_ids");
            
            $company_fetch = $company_ids->json();
            
            if($company_fetch['data']){

                foreach ($company_fetch['data'] as $item) {
                    CompanyId::updateOrCreate(
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
