<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiQrCreationController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "qr_creations";        
				$this->permalink   = "qr_creation";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
				$query->orderBy('id','asc');
		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process

		    }

		}