<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')

@push('head')
    {{-- Summernote --}}
    <link rel="stylesheet" type="text/css" href="{{asset('vendor/crudbooster/assets/summernote/summernote.css')}}">
    {{-- Jquery --}}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    {{-- Css --}}
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    {{-- Swal --}}
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <style>
        .swal2-popup {
            /* padding: 100px 0; */
            font-size: 17px !important;
            color: rgb(0, 0, 0) !important;
        }

        .select2-selection__choice{
            font-size:14px !important;
            color:black !important;
        }
        .select2-selection__rendered {
            line-height: 31px !important;
        }
        .select2-container .select2-selection--single {
            height: 35px !important;
        }
        .select2-selection__arrow {
            height: 34px !important;
        }

    </style>
@endpush

@section('content')
    <!-- Your html goes here -->

    <p><a title='Return' href='{{ CRUDBooster::mainpath() }}'><i class='fa fa-chevron-circle-left '></i>&nbsp; Back To Email Home</a></p>
    <div class='panel panel-default'>
        <div class='panel-heading'>Email Templates Form</div>
        <form method='post' action='{{CRUDBooster::mainpath('edit-save/'.$row->id)}}' autocomplete="off" enctype='multipart/form-data'>
        @csrf
        <input type="hidden" value="{{csrf_token()}}" name="_token" id="token">
        <input type="hidden" value="{{$row->id}}" name="qr_creation_id" id="qr_creation_id">
        <div class='panel-body'>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="require control-label"> <span style="color: red">*</span> Select Template:</label>
                        <select class="selected_template" data-placeholder="Please select email template"  style="width: 100%;" name="selected_template" id="selected_template">
                            <option value=""></option>
                            @foreach($email_templates as $template)                       
                                <option value="{{$template->id}}" {{ $row->selected_template == $template->id ? 'selected':'' }}>{{ $template->title_of_the_email }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>

            <div class="email-content" id="email-content">

            </div>

        </div>
            <div class='panel-footer'>
                <a href="{{ CRUDBooster::mainpath() }}" class="btn btn-default">Cancel</a>
                <input class='btn btn-primary pull-right' id='create_email' value='Submit' name="selected_button" style="margin-left: 10px; width: 160px;" readonly/>
                <button class="hide" id="hidden-submit" type="submit">submit</button>
            </div>
        </form>
    </div>

    <script>

    $(document).ready(function() {
        
        $('#selected_template').select2();
        let clicked_btn;
        $('#email-test').summernote();
        $('#email-sample').summernote();
        const note_editable_check_text = $('.note-editable').eq(0).text();
        $('.note-editable').eq(1).attr('contenteditable', 'false');
        
        if (/\w/gi.test(note_editable_check_text)) {
            $('.note-editable').eq(0).css('height', '100%');
        }else{
            $('.note-editable').eq(0).css('height', '300px');
        }

        $('#testing').click(function(event){
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, Send test email!',
                returnFocus: false,
            }).then((result) => {
                if (result.isConfirmed) {
                    $('#test_email').attr('required', true);
                    clicked_btn = 'test_email';
                    $('#hidden-submit').click();
                }
            })      
        })

        $('#create_email').click(function(event){
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, create it!',
                returnFocus: false,
            }).then((result) => {
                if (result.isConfirmed) {
                    $('#create_email').val('Create Email Template');
                    $('#hidden-submit').click();
                }
            })      
        })

        
        $('form').on('submit', function(event){
            if(clicked_btn == 'test_email'){
                $('.sk-chase-position').show();
                event.preventDefault();
                const subject_of_the_email = $("input[name='subject_of_the_email']").val();
                const test_email = $("input[name='test_email']").val();
                const email_template_id = $("#email_testings_id").val();
                const email_content = $("textarea[name='email_content']").val();
                // const mail_img = $("input[name='mail_img']")[0].files[0];
                // const email_content_val = $('#email_option').val();
                
                const formData = new FormData();
                formData.append('subject_of_the_email', subject_of_the_email);
                formData.append('test_email', test_email);
                formData.append('email_template_id', email_template_id);
                formData.append('email_content', email_content);
                //formData.append('mail_img', mail_img || '');
                //formData.append('email_option', email_content_val);
                formData.append('qr_creation_id', '{{ $row->id }}');

                $.ajax({
                    url: "{{ route('emailtesting') }}",
                    dataType: 'json',
                    type: 'POST',
                    processData: false,
                    contentType: false,
                    data: formData,
                    success: function(response){
                        console.log(response);
                        var timestamp = new Date().getTime();

                        $('.sk-chase-position').hide();
                        
                        Swal.fire(
                            'Good job!',
                            'Email successfully sent.',
                            'success'
                        )
                    
                        if(response.email_img){
                            $('#uploaded_img').attr('src', '{{ asset('uploaded_item/email_img/') }}' + '/' + response.email_img+ '?' + timestamp);
                        }
                    },
                    error: function(error){
                        console.log(error);
                        //$('.sk-chase-position').hide();

                        Swal.fire(
                            'Error Occured!',
                            'Make sure the input data are correct.',
                            'error'
                        )
                    }
                
                })
            }
        })

        if("{{ $row->html_email_img }}"){
            $('.mail_img_content').show();
        }else if("{{ $row->html_email }}"){
            $('.show_email').show();
            $("input[name='mail_img']").removeAttr('required');
        }

        var token = $("#token").val();
        $('.selected_template').change(function () {
            let campaignId = $('#qr_creation_id').val();
            selected_header = this.value;
            console.log(selected_header, campaignId);
            $.ajax({
                    type: 'POST',
                    url: ADMIN_PATH + "/selectedHeader",
                    data: {
                        "_token": token,
                        "id": selected_header,
                        "campaign_id": campaignId,
                    },
                    success: function(data) {
                        $('.email-content').empty().append(data.emailContent);
                    },
                    error: function(e) {
                        alert(e);
                        console.log(e);
                    }
            });

        });

        $('.selected_template').trigger('change');
    });

   

    </script>
@endsection

@push('bottom')
    <script type="text/javascript" src="{{asset('vendor/crudbooster/assets/summernote/summernote.min.js')}}"></script>
@endpush