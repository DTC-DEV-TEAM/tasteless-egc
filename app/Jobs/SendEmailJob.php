<?php
  
namespace App\Jobs;
  
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Mail\QrEmail;
use Illuminate\Support\Facades\Mail;
use App\GCList;
use Illuminate\Queue\MaxAttemptsExceededException;


class SendEmailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
  
    protected $details;
    public $tries = 10;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($details)
    {
        $this->details = $details;
    }
  
    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {

        try{

            $email = new QrEmail($this->details);
            
            Mail::to($this->details['email'])->send($email);
            
        }catch(MaxAttemptsExceededException $e){
            $this->retryUntil(now()->addSeconds(pow(2, $this->attempts())));
        }
    }
    
}