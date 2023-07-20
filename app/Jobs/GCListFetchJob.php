<?php

namespace App\Jobs;

use App\GCList;
use Illuminate\Bus\Queueable;
use Illuminate\Support\Facades\Http;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\MaxAttemptsExceededException;

class GCListFetchJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $gc_list_data;
    public $tries = 10;
    public $maxTries = 10;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        
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

            // Localhost Fetch Gclist
			$response = Http::withHeaders([
				'Content-Type' => 'application/json',
			])->post('https://devp.digitstrading.ph/api/get-token', [
				'secret' => '9384c81fb1f9e661946976585fb0d75a',
			]);

			$get_token = $response->json('data.access_token');

			$redemption_list = Http::withHeaders([
				'Authorization' => 'Bearer ' . $get_token['data']['access_token'],
			])->get('https://devp.digitstrading.ph/api/redemption_code');

			$gc_list_fetch = $redemption_list->json();
			
			if($gc_list_fetch['data']){

				foreach ($gc_list_fetch['data'] as $item) {
                    
					GCList::find($item['id'])->update([
                        
						'is_fetch' => $item['is_fetch'],
                        'status' => $item['status']
					]);
				}
			}else{
                return;
            }

        }catch(MaxAttemptsExceededException $e){
            $this->retryUntil(now()->addSeconds(pow(2, $this->attempts())));
        }
    }
}
