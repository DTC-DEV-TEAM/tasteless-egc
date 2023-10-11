<?php

namespace App\Jobs;

use App\DateToSendCampaigns;
use App\EmailTesting;
use App\GCList;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Mail\QrEmail;
use App\Jobs\SendEmailJob;
use App\Models\EmailTemplateImg;
use App\QrCreation;

class EmailScheduler implements ShouldQueue
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
        $date_time = new \DateTime();

        $date_to_send_campaigns = DateToSendCampaigns::get();
        $gc_list = GCList::get();
        $to_send = $date_to_send_campaigns->where('date_to_send', $date_time->format('Y-m-d\TH:i'))->pluck('date_to_send')->toArray();
        $gc_list_available_email = GCList::
            where('email_is_sent', 0)
            ->whereIn('date_to_send', $to_send)
            ->get();
        if($to_send){

            foreach($gc_list_available_email as $gcList){

                $generated_qr_info = QrCreation::find($gcList->campaign_id);
                $id = $gcList->id;
                $name = $gcList->name;
                $email = $gcList->email;
                $generated_qr_code = $gcList->qr_reference_number;
                $campaign_id_qr = $generated_qr_info->campaign_id;
                $gc_description = $generated_qr_info->gc_description;
                $gc_value = $generated_qr_info->gc_value;
                $email_template_id = $gcList->email_template_id;

                $email_template = $generated_qr_info->html_email;
                $email_subject = $generated_qr_info->subject_of_the_email;

                $url = "/g_c_lists/edit/$id?value=$generated_qr_code";
                $qrCodeApiUrl = 'https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=' . urlencode($url);
                $qr_code = "<div id='qr-code-download'><div id='download_qr'><a href='$qrCodeApiUrl' download='qr_code.png'> <img src='$qrCodeApiUrl' alt='QR Code'> </a></div></div>";

                $emailTesting = EmailTesting::where('id',$gcList->email_template_id)->first();
                $emailTestingImg = EmailTemplateImg::where('header_id', $emailTesting->id)->get();

                $subject_of_the_email = $emailTesting->subject_of_the_email;
                $email_content = $emailTesting->html_email;

                $html_email_img = [];

                foreach($emailTestingImg as $file){
                    $filename = $file->file_name;
                    $html_email_img[]= $filename;
                }

                // if(count($html_email_img) != 1){
                //     $qr_img = array_shift($html_email_img);
                // }else{
                //     $qr_img = $html_email_img[0];
                // }

                $html_email = str_replace(
                    ['[name]', '[campaign_id]', '[gc_description]'],
                    [$name, $campaign_id_qr, $gc_description],
                    $email_content
                );

                $data = array(
                    'id' => $id,
                    'html_email' => $html_email,
                    'email_subject' => $subject_of_the_email,
                    'html_email_img' => $html_email_img,
                    'email' => $email,
                    'qrCodeApiUrl' => $qrCodeApiUrl,
                    'qr_code' => $qr_code,
                    'gc_value' => $gc_value,
                    'store_logo' => $generated_qr_info->store_logo,
                    'gc_description' => $gc_description,
                    'qr_reference_number'=>$generated_qr_code,
                    'campaign_id_qr' => $campaign_id_qr,
                    // 'qr_img' => $qr_img
                );

                SendEmailJob::dispatch($data);
            }
        }
    }
}
