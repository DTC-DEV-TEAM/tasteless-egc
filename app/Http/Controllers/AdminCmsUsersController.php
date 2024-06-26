<?php namespace App\Http\Controllers;

use App\CompanyId;
use App\Jobs\CompanyIdsJob;
use Session;
use Request;
use DB;
use CRUDbooster;
use crocodicstudio\crudbooster\controllers\CBController;
use Illuminate\Support\Facades\Http;

class AdminCmsUsersController extends CBController {

	public function cbInit() {
		# START CONFIGURATION DO NOT REMOVE THIS LINE
		$this->table               = 'cms_users';
		$this->primary_key         = 'id';
		$this->orderby = "id_cms_privileges,asc";
		$this->title_field         = "name";
		$this->button_action_style = 'button_icon';	
		$this->button_import 	   = FALSE;	
		$this->button_export 	   = FALSE;	
		$this->button_edit = CRUDBooster::myPrivilegeName() == 'Admin' ? false : true;
		# END CONFIGURATION DO NOT REMOVE THIS LINE
	
		# START COLUMNS DO NOT REMOVE THIS LINE
		$this->col = array();
		$this->col[] = array("label"=>"Name","name"=>"name");
		$this->col[] = array("label"=>"Email","name"=>"email");
		$this->col[] = array("label"=>"Privilege","name"=>"id_cms_privileges","join"=>"cms_privileges,name");
		$this->col[] = array("label"=>"Photo","name"=>"photo","image"=>1);		
		# END COLUMNS DO NOT REMOVE THIS LINE

		# START FORM DO NOT REMOVE THIS LINE
		$this->form = array(); 		
		$this->form[] = array("label"=>"Name","name"=>"name",'required'=>true,'validation'=>'required|alpha_spaces|min:3');
		$this->form[] = array("label"=>"Email","name"=>"email",'required'=>true,'type'=>'email','validation'=>'required|email|unique:cms_users,email,'.CRUDBooster::getCurrentId());		
		$this->form[] = array("label"=>"Photo","name"=>"photo","type"=>"upload","help"=>"Recommended resolution is 200x200px",'required'=>true,'validation'=>'required|image|max:1000','resize_width'=>90,'resize_height'=>90);											
		$this->form[] = array("label"=>"Privilege","name"=>"id_cms_privileges","type"=>"select","datatable"=>"cms_privileges,name",'required'=>true);						
		$this->form[] = array("label"=>"Company Name","name"=>"company_id","type"=>"select","datatable"=>"company_ids,company_name",'required'=>true);						
		// $this->form[] = array("label"=>"Password","name"=>"password","type"=>"password","help"=>"Please leave empty if not change");
		$this->form[] = array("label"=>"Password","name"=>"password","type"=>"password","help"=>"Please leave empty if not change");
		$this->form[] = array("label"=>"Password Confirmation","name"=>"password_confirmation","type"=>"password","help"=>"Please leave empty if not change");
		# END FORM DO NOT REMOVE THIS LINE

		if(CRUDBooster::myPrivilegeName()=='Admin'){

			$this->script_js = "
		
				$(document).ready(function(){

					$('#company_id').attr('required', false);

					$('#form-group-company_id').hide();

					$('#id_cms_privileges option').each(function(){

						if($(this).val() == 1 || $(this).val() == 3){

							$(this).remove();
						}	
					});
					
					$('#id_cms_privileges').on('change', function(){

						const company_id = $(this).val();
						if(company_id == 2 || company_id == 4){
							$('#form-group-company_id').show();
							$('#company_id').attr('required', true);
						}else{
							$('#form-group-company_id').hide();
							$('#company_id').attr('required', false);
						}
					});
				});
			";	
		}else{
			
			$this->script_js = "
		
				$(document).ready(function(){

					$('#company_id').attr('required', false);

					$('#form-group-company_id').hide();
					
					$('#id_cms_privileges').on('change', function(){

						const company_id = $(this).val();
						if(company_id == 2){
							$('#form-group-company_id').show();
							$('#company_id').attr('required', true);
						}else{
							$('#form-group-company_id').hide();
							$('#company_id').attr('required', false);
						}
					});
				});
			";
		}
	}
	
	public function hook_query_index(&$query) {
		//Your code here
		if(CRUDBooster::myPrivilegeName()=='Admin'){

			$query->where('company_id', '!=', null);
		}
	}

	public function getProfile() {			

		$this->button_addmore = FALSE;
		$this->button_cancel  = FALSE;
		$this->button_show    = FALSE;			
		$this->button_add     = FALSE;
		$this->button_delete  = FALSE;	
		$this->hide_form 	  = ['id_cms_privileges'];

		$data['page_title'] = cbLang("label_button_profile");
		$data['row']        = CRUDBooster::first('cms_users',CRUDBooster::myId());

        return $this->view('crudbooster::default.form',$data);
	}
	public function hook_before_edit(&$postdata,$id) { 
		unset($postdata['password_confirmation']);
	}
	public function hook_before_add(&$postdata) {      
	    unset($postdata['password_confirmation']);
	}
}
