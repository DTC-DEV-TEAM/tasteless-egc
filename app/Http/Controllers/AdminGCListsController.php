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
use Mail;



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
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = false;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "g_c_lists";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"ID","name"=>"id"];
			$this->col[] = ["label"=>"Name","name"=>"name"];
			$this->col[] = ["label"=>"Phone","name"=>"phone"];
			$this->col[] = ["label"=>"Email","name"=>"email"];
			$this->col[] = ["label"=>"Number Of Gcs","name"=>"number_of_gcs"];
			$this->col[] = ["label"=>"Gc Description","name"=>"gc_description"];
			$this->col[] = ["label"=>"Redemption Start Date","name"=>"redemption_start"];
			$this->col[] = ["label"=>"Redemption End Date","name"=>"redemption_end"];
			// $this->col[] = ["label"=>"Gc Value","name"=>"gc_value"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Name','name'=>'name','type'=>'text','validation'=>'required|string|min:3|max:70','width'=>'col-sm-10','placeholder'=>'You can only enter the letter only'];
			$this->form[] = ['label'=>'Phone','name'=>'phone','type'=>'number','validation'=>'required|numeric','width'=>'col-sm-10','placeholder'=>'You can only enter the number only'];
			$this->form[] = ['label'=>'Email','name'=>'email','type'=>'email','validation'=>'required|min:1|max:255|email|unique:g_c_lists','width'=>'col-sm-10','placeholder'=>'Please enter a valid email address'];
			$this->form[] = ['label'=>'Number Of Gcs','name'=>'number_of_gcs','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Gc Description','name'=>'gc_description','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Gc Value','name'=>'gc_value','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Redeem','name'=>'redeem','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Name','name'=>'name','type'=>'text','validation'=>'required|string|min:3|max:70','width'=>'col-sm-10','placeholder'=>'You can only enter the letter only'];
			//$this->form[] = ['label'=>'Phone','name'=>'phone','type'=>'number','validation'=>'required|numeric','width'=>'col-sm-10','placeholder'=>'You can only enter the number only'];
			//$this->form[] = ['label'=>'Email','name'=>'email','type'=>'email','validation'=>'required|min:1|max:255|email|unique:g_c_lists','width'=>'col-sm-10','placeholder'=>'Please enter a valid email address'];
			//$this->form[] = ['label'=>'Number Of Gcs','name'=>'number_of_gcs','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Redemption Period','name'=>'redemption_period','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Gc Description','name'=>'gc_description','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Gc Value','name'=>'gc_value','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Redeem','name'=>'redeem','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
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
			if(CRUDBooster::getCurrentMethod() == 'getIndex'){

				$this->index_button[] = ['label'=>'Scan QR','url'=>CRUDBooster::mainpath("scan_qr"),"icon"=>"fa fa-search", 'color'=>'primary'];
				// $this->index_button[] = ['label'=>'Upload GC List','url'=>CRUDBooster::mainpath("upload_gc_list"),"icon"=>"fa fa-plus", 'color'=>'primary'];
			}



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
	        $this->style_css = 'NULL';
	        
	        
	        
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
	    public function hook_query_index(&$query) {

			$query->where('invoice_number', null)->where(function($sub_query) {
				$sub_query->where('status', '!=', 'EXPIRED')->orWhere('status', null);
			})->orderBy('id', 'asc');

			// $faker = Factory::create();

			// $options = [
			// 	"Driver's License",
			// 	"Passport",
			// 	"PRC License",
			// 	"UMID",
			// 	"SSS ID",
			// 	"GSIS ID",
			// 	"Voter's ID",
			// 	"Postal ID",
			// 	"TIN ID",
			// 	"PhilHealth ID",
			// 	"Senior Citizen ID",
			// 	"OFW ID",
			// 	"School ID",
			// 	"Company ID",
			// 	"Other",
			// ];
			
			// foreach ($options as $option) {
			// 	IdType::create(['valid_ids' => strtoupper($option)]);
			// }

			// for($i=0; $i<5; $i++){
			// 	GCList::create([
			// 		'name' => $faker->name,
			// 		'phone' => $faker->phoneNumber,
			// 		'email' => $faker->email,
			// 		'number_of_gcs' => $faker->randomNumber(2),
			// 		'redemption_start' => $faker->date,
			// 		'redemption_end' => $faker->date,
			// 		'gc_description' => $faker->sentence,
			// 		'gc_value' => $faker->randomFloat(2, 0, 100),
			// 	]);
			// }

	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
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

		// public function uploadGCList(IlluminateRequest $request){

		// 	if(!CRUDBooster::isCreate() && $this->global_privilege==FALSE || $this->button_add==FALSE) {    
		// 		CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
		// 	}
			
		// 	$data = [];
		// 	$data['page_title'] = 'Upload GC List';

		// 	$email_data = ['qr_code'=>'Testing'];
	
		// 	return $this->view('redeem_qr.upload_gc_list',$data);

		// }

		// public function uploadGCListPost(IlluminateRequest $request){

		// 	$validatedData = $request->validate([
		// 		'excel_file' => 'required|mimes:xls,xlsx',
		// 	]);

		// 	$uploaded_excel = $request->file('excel_file');

		// 	$rows = Excel::import(new GcListImport, $uploaded_excel);

		// 	return 	CRUDBooster::redirect(CRUDBooster::mainpath(), 'Excel Uploaded Succesfully',"success");

		// }

		// public function exportGCListTemplate(){

		// 	return Excel::download(new GCListTemplateExport, 'gc_list_template.xlsx');
		// }

		public function getEdit($id) {
			//Create an Auth
			if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			}
			
			$data = [];
			$data['page_title'] = 'Redeem QR';
			$data['row'] = DB::table('g_c_lists')
				->leftJoin('id_types as id_name', 'id_name.id' ,'=', 'g_c_lists.id_type')
				->select('g_c_lists.*',
					'id_name.valid_ids')
				->where('g_c_lists.id',$id)->first();

			$data['valid_ids'] = IdType::get();

			// Generate QR Code
			$qrCodeData = $data['row']->email.'|'.$data['row']->id;

			//Please use view method instead view method from laravel
			return $this->view('redeem_qr.qr_redeem_section',$data);

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
				'qr_reference_number' => 'QRN-'.str_pad($id,6,"0", STR_PAD_LEFT)
			]);

			$user_information = GCList::find($id);

			
			return response()->json(['test'=>$user_information]);
		}

		public function inputInvoice(IlluminateRequest $request){

			$return_inputs = $request->all();
			$id = $return_inputs['user_id'];
			$invoice_number = $return_inputs['invoice_number'];

			$user_information = GCList::find($id);
		
			GCList::find($id)->update(
				['invoice_number'=>$invoice_number]
			);

			CRUDBooster::redirect(CRUDBooster::mainpath(), sprintf('Code redemption succesful. QR Reference Number: %s', $user_information->qr_reference_number),"success");

		}

		public function redemptionEnded(IlluminateRequest $request){


			$id = $request->all()['user_id'];

			GCList::where('id', $id)->update([
				'status' => 'EXPIRED'
			]);

			CRUDBooster::redirect(CRUDBooster::mainpath(), 'QR code has ended, and it is no longer valid for redemption',"success");
		}


	}