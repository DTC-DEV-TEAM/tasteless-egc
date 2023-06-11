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
        $response = Http::withHeaders([
			'Content-Type' => 'application/json',
		])->post('http://127.0.0.1:1000/api/get-token', [
			'secret' => '9384c81fb1f9e661946976585fb0d75a',
		]);

		$get_token = $response->json('data.access_token');

		$campaign_request = Http::withHeaders([
			'Authorization' => 'Bearer ' . $get_token['data']['access_token'],
		])->get('http://127.0.0.1:1000/api/campaign_creation');

		$campaign_data = $campaign_request->json();
		
		$campaign_list = array_reverse($campaign_data['data']);

		foreach ($campaign_list as $item) {

			QrCreation::firstOrCreate(
				['id' => $item['id']],
				$item
			);
		}
    }
}
