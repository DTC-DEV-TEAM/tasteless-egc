<?php

namespace App\Http\Controllers;

use App\GCList;
use Illuminate\Http\Request;
use DB;

class EGCCampaignApiController extends Controller
{
    
    public function campaignDataApi($secretKey){
        if($secretKey == env('EGC_SECRET_KEY')){
            return DB::table('g_c_lists')->where('is_fetch', 0)
            ->select(
                'id',
                'campaign_id',
                'email_template_id',
                'name',
                'phone',
                'email',
                'email_is_sent',
                'id_number',
                'id_type',
                'customer_reference_number',
                'qr_reference_number',
                'invoice_number',
                'redeem',
                'uploaded_img',
                'cashier_name',
                'cashier_date_transact',
            )
            ->limit(500)
            ->get();
        }else{
            return false;
        }
    }

    public function campaignfetchApi() 
    {
        $secretKey = config('jobs-url.api.egc_campaign_fetch_key');
        
        $url = config('jobs-url.api.egc_campaign_URL');
        $data = json_decode(file_get_contents($url.'/egc_campaign_fetch/'.$secretKey));
        
        if ((bool) $data){
            
            GCList::whereIn('id', $data)->update(['is_fetch' => 1]);

            return true;
        }else {
            return false;
        }
    }


}