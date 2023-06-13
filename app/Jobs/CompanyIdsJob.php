<?php

namespace App\Jobs;

use App\CompanyId;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Http;


class CompanyIdsJob implements ShouldQueue
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

        sleep(1);
       	// Localhost fetch CompanyIds
		$response = Http::withHeaders([
			'Content-Type' => 'application/json',
		])->post('http://127.0.0.1:1000/api/get-token', [
			'secret' => '9384c81fb1f9e661946976585fb0d75a',
		]);

		$get_token = $response->json('data.access_token');

		$company_ids = Http::withHeaders([
			'Authorization' => 'Bearer ' . $get_token['data']['access_token'],
		])->get('http://127.0.0.1:1000/api/company_ids');

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
    }
}
