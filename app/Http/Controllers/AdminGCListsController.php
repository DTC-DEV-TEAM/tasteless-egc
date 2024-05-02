<?php namespace App\Http\Controllers;

use App\GCList;
use App\IdType;
use Session;
use Request;
use DB;
use CRUDBooster;
use Faker\Factory;
use Illuminate\Support\Facades\Validator;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Illuminate\Http\Request as IlluminateRequest;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\GcListImport;
use App\Exports\GCListTemplateExport;
use App\QrCreation;
use Mail;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Spatie\ImageOptimizer\OptimizerChainFactory;
use App\EmailTesting;
use App\Jobs\ApiGCIsFetchJob;
use App\Jobs\GCListFetchJob;


	class AdminGCListsController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "name";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = false;
			$this->button_edit = false;
			$this->button_delete = false;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = true;
			$this->table = "g_c_lists";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Status","name"=>"status"];
			$this->col[] = ["label"=>"Campaign ID","name"=>"campaign_id","join"=>"qr_creations,campaign_id"];
			$this->col[] = ["label"=>"Name","name"=>"name"];
			$this->col[] = ["label"=>"Phone","name"=>"phone"];
			$this->col[] = ["label"=>"Email","name"=>"email"];
			$this->col[] = ["label"=>"GC Description","name"=>"campaign_id","join"=>"qr_creations,gc_description"];
			$this->col[] = ["label"=>"GC Value","name"=>"campaign_id","join"=>"qr_creations,gc_value"];
			$this->col[] = ["label"=>"Batch Group","name"=>"campaign_id","join"=>"qr_creations,batch_group"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Name','name'=>'name','type'=>'text','validation'=>'required|string|min:3|max:70','width'=>'col-sm-10','placeholder'=>'You can only enter the letter only'];
			$this->form[] = ['label'=>'Phone','name'=>'phone','type'=>'number','validation'=>'required|numeric','width'=>'col-sm-10','placeholder'=>'You can only enter the number only'];
			$this->form[] = ['label'=>'Email','name'=>'email','type'=>'email','validation'=>'required|min:1|max:255|email|unique:g_c_lists','width'=>'col-sm-10','placeholder'=>'Please enter a valid email address'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Name','name'=>'name','type'=>'text','validation'=>'required|string|min:3|max:70','width'=>'col-sm-10','placeholder'=>'You can only enter the letter only'];
			//$this->form[] = ['label'=>'Phone','name'=>'phone','type'=>'number','validation'=>'required|numeric','width'=>'col-sm-10','placeholder'=>'You can only enter the number only'];
			//$this->form[] = ['label'=>'Email','name'=>'email','type'=>'email','validation'=>'required|min:1|max:255|email|unique:g_c_lists','width'=>'col-sm-10','placeholder'=>'Please enter a valid email address'];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();
			// if(CRUDBooster::getCurrentMethod() == 'getIndex'){

				// $this->index_button[] = ['label'=>'Scan QR','url'=>CRUDBooster::mainpath("scan_qr"),"icon"=>"fa fa-search", 'color'=>'primary'];
				// $this->index_button[] = ['label'=>'Upload GC List','url'=>CRUDBooster::mainpath("upload_gc_list"),"icon"=>"fa fa-plus", 'color'=>'primary'];
			// }



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {;

			ApiGCIsFetchJob::dispatch();

			$cb_id = CRUDBooster::myId(); 
			$cb_companyId = DB::table('cms_users')
				->where('id', $cb_id)
				->value('company_id');

			if(CRUDBooster::myPrivilegeName() != 'Super Administrator'){

				$query->where('qr_creations.company_id', $cb_companyId);
			}
			
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
			if($column_index == '2'){
				if($column_value == ''){
					$column_value = '<span class="label" style="background-color: rgb(34 211 238); color: white; font-size: 12px;">UNCLAIMED</span>';
				}else if($column_value == 'CLAIMED'){
					$column_value = '<span class="label" style="background-color: rgb(74 222 128);
					; color: white; font-size: 12px;">CLAIMED</span>';
				}
			}
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :) 

		public function getScanQR(IlluminateRequest $request) {
			//Create an Auth
			if(!CRUDBooster::isCreate() && $this->global_privilege==FALSE || $this->button_add==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}
			
			$data = [];
			$data['page_title'] = 'Scan QR';
			$data['scannedData'] = $request->input('data'); 

			
			//Please use view method instead view method from laravel
			return $this->view('redeem_qr.scan_qr',$data);
		}

		public function getEdit($id) {
			//Create an Auth
			if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}

			$slug = Request::all()['value'];
			$user = GCList::find($id);

			if ($user->qr_reference_number == $slug || CRUDBooster::isSuperAdmin()){
			
				$data = [];
				$data['page_title'] = 'Redeem QR';
				$data['row'] = DB::table('g_c_lists')
					->leftJoin('id_types as id_name', 'id_name.id' ,'=', 'g_c_lists.id_type')
					->leftJoin('qr_creations as qr', 'qr.id', '=', 'g_c_lists.campaign_id')
					->select('g_c_lists.*',
						'qr.campaign_id',
						'qr.gc_description',
						'qr.gc_value',
						'qr.number_of_gcs',
						'qr.batch_group',
						'qr.batch_number',
						'id_name.valid_ids')
					->where('g_c_lists.id',$id)
					->first();

				$data['valid_ids'] = IdType::orderBy('valid_ids', 'asc')->get();
				
				//Please use view method instead view method from laravel
				return $this->view('redeem_qr.qr_redeem_section',$data);

			}

			else{
				CRUDBooster::redirect(CRUDBooster::mainpath(), sprintf("You don't have privilege to access this area."),"danger");

			}

		}

		public function redeemCode(IlluminateRequest $request){
			
			$return_inputs = $request->all();
			$id = $return_inputs['user_id'];
			$id_number = $return_inputs['id_number'];
			$id_type = $return_inputs['id_type'];
			$other_id_type = $return_inputs['other_id_type'];

			GCList::where('id', $id)->update([

				'redeem' => 1,
				'cashier_name' => CRUDBooster::myId(),
				'cashier_date_transact' => date('Y-m-d H:i:s'),
				'id_number' => $id_number,
				'id_type' => $id_type,
				'other_id_type' => $other_id_type,
				'status' => 'CLAIMED',
			]);

			$user_information = DB::table('g_c_lists')
			->leftJoin('id_types as id_name', 'id_name.id' ,'=', 'g_c_lists.id_type')
			->leftJoin('qr_creations as qr', 'qr.id', '=', 'g_c_lists.campaign_id')
			->select('g_c_lists.*',
				'qr.campaign_id',
				'qr.gc_description',
				'qr.gc_value',
				'qr.number_of_gcs',
				'qr.batch_group',
				'qr.batch_number',
				'id_name.valid_ids')
			->where('g_c_lists.id',$id)
			->first();

			return response()->json(['test'=>$user_information]);
		}

		public function inputInvoice(IlluminateRequest $request){

			$return_inputs = $request->all();
			$id = $return_inputs['userId'];
			$invoice_number = $return_inputs['posInvoiceNumber'];

			$user_information = GCList::find($id);

			$user_information->update(
				['invoice_number'=>$invoice_number]
			);

			return response()->json(['success'=>'Successful saving invoice number']);

		}

		public function closeTransaction(IlluminateRequest $request){
			
			$validate = $request->validate([
				'item_image' => 'required|image'
			]);

			$img_file = $request->all()['item_image'];
			$id = $request->all()['user_id'];

			$data = [];
			$data['row'] = DB::table('g_c_lists')
			->leftJoin('id_types as id_name', 'id_name.id' ,'=', 'g_c_lists.id_type')
			->leftJoin('qr_creations as qr', 'qr.id', '=', 'g_c_lists.campaign_id')
			->select('g_c_lists.*',
				'qr.campaign_id',
				'qr.gc_description',
				'qr.gc_value',
				'qr.number_of_gcs',
				'qr.batch_group',
				'qr.batch_number',
				'id_name.valid_ids')
			->where('g_c_lists.id',$id)
			->first();
			
			$filename = 'redeemed_item'.'_'.$user_information->id.'_'.substr(uniqid(), 0, 5).'.'.$img_file->getClientOriginalExtension();
			$image = Image::make($img_file);

			$image->resize(1024, 768, function ($constraint) {
				$constraint->aspectRatio();
				$constraint->upsize();
			});

			// Save the resized image to the public folder
			$image->save(public_path('uploaded_item/img/' . $filename));
			// Optimize the uploaded image
			$optimizerChain = OptimizerChainFactory::create();
			$optimizerChain->optimize(public_path('uploaded_item/img/' . $filename));

			GCList::find($id)->update([
				'uploaded_img'=>$filename,
				'cashier_date_transact' => date('Y-m-d'),
				'cashier_name' => CRUDBooster::myId()
			]);
			
			// Send Mail
			$email = $data['row']->email;

			try {

				Mail::send(['html' => 'redeem_qr.redeemedemail'], $data, function($message) use ($email) {
					$message->to($email)->subject('Qr Code Redemption!');
					$message->from('punzalan2233@gmail.com', 'Patrick Lester Punzalan');
				});

			} catch (\Exception $e) {
				dd($e);
			}
			
			CRUDBooster::redirect(CRUDBooster::mainpath(), sprintf('Code redemption succesful. CAMPAIGN ID REFERENCE # : %s', $data['row']->campaign_id.' - '.$data['row']->qr_reference_number),"success")->send();
		}

		public function getDetail($id) {
			//Create an Auth
			if(!CRUDBooster::isRead() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}
			
			$data = [];
			$data['page_title'] = 'Detail Data';
			$data['row'] = DB::table('g_c_lists')
				->leftJoin('id_types as id_name', 'id_name.id' ,'=', 'g_c_lists.id_type')
				->leftJoin('qr_creations as qr', 'qr.id', '=', 'g_c_lists.campaign_id')
				->select('g_c_lists.*',
					'qr.campaign_id',
					'qr.gc_description',
					'qr.gc_value',
					'qr.number_of_gcs',
					'qr.batch_group',
					'qr.batch_number',
					'id_name.valid_ids')
				->where('g_c_lists.id',$id)
				->first();
			
			//Please use view method instead view method from laravel
			return $this->view('redeem_qr.qr_redeem_section_view',$data);
		}

	}