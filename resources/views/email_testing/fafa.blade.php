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
    </style>
@endpush

@section('content')
    <!-- Your html goes here -->
    <div class="sk-chase-position" style="display: none;">
        <div class="sk-chase">
            <div class="sk-chase-dot"></div>
            <div class="sk-chase-dot"></div>
            <div class="sk-chase-dot"></div>
            <div class="sk-chase-dot"></div>
            <div class="sk-chase-dot"></div>
            <div class="sk-chase-dot"></div>
        </div>
        <div class="sk-chase-text">
            <p>Please wait, system is on process...</p>
        </div>
    </div>
    
    <p><a title='Return' href='{{ CRUDBooster::mainpath() }}'><i class='fa fa-chevron-circle-left '></i>&nbsp; Back To Email Home</a></p>
    <div class='panel panel-default'>
        <div class='panel-heading'>Add Form</div>
        <form method='post' action='{{CRUDBooster::mainpath('edit-save/'.$row->id)}}' autocomplete="off" enctype='multipart/form-data'>
        @csrf
        <div class='panel-body'>
                <br>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="add_email_header" for="">Template of the email</label>
                            <input type="text" class="form-control" name="title_of_the_email" value="{{ $row->title_of_the_email }}" required>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="add_email_header" for="">Subject</label>
                            <input type="text" class="form-control" name="subject_of_the_email" value="{{ $row->subject_of_the_email }}" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label class="add_email_header" for="">Email content</label>
                            <select class="form-control" id="email_option" name="email_option" required>
                                <option value="" selected disabled>Choose one</option>
                                @if (!$row->html_email && !$row->html_email_img)   
                                <option value="1" disabled>Text</option>
                                <option value="2">Image</option>
                                @elseif ($row->html_email)
                                <option value="1" selected>Text</option>
                                <option value="2">Image</option>
                                @elseif ($row->html_email_img)
                                <option value="1" disabled>Text</option>
                                <option value="2" selected>Image</option>
                                @endif
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label class="add_email_header" for="">Your Test Email</label>
                            <input type="text" class="form-control" id="test_email" name="test_email" placeholder="youremail@gmail.com" required>
                            <p style="margin-top:10px; color: red;">Required only for testing button.</p>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-6 hide">
                        <div class="form-group">
                            <label class="add_email_header" for="">Gmail Preview</label>
                            <img src="{{ asset('img/sample_email1.PNG') }}" alt="" style="width: 100%; object-fit: contain; border: 1px solid rgba(0,0,0,.1);">
                        </div>
                    </div>
                    <div class="col-lg-6 mail_img_content" style="display: none;">
                        @if($row->html_email_img)
                        <label class="add_email_header" for="">Upload new image</label>
                        <input type="file" class="form-control" name="mail_img">
                        @else
                        <label class="add_email_header" for="">Upload Image</label>
                        <input type="file" class="form-control" name="mail_img" required>
                        @endif

                        <div class="form-group" style="display:flex; flex-direction:column; align-items: center;">

                        @if($row->store_logo == 1)
                        <img class="uploaded_img" src="{{ asset("store_logo/img/digital_walker.png") }}" alt="No image" style="max-height: 500px; width: 100%; max-width: 500px; object-fit: contain; text-align: center; margin-top: 5px;">
                        <img class="uploaded_img" src="{{ asset("store_logo/img/digital_walker_claiming.png") }}" alt="No image" style="max-height: 500px; width: 100%; max-width: 500px; object-fit: contain; text-align: center; margin-top: 5px;">
                        @elseif($row->store_logo == 2)
                        <img class="uploaded_img" src="{{ asset("store_logo/img/beyond_the_box.png") }}" alt="No image" style="max-height: 500px; width: 100%; max-width: 500px; object-fit: contain; text-align: center; margin-top: 5px;">
                        <img class="uploaded_img" src="{{ asset("store_logo/img/beyond_the_box_claiming.png") }}" alt="No image" style="max-height: 500px; width: 100%; max-width: 500px; object-fit: contain; text-align: center; margin-top: 5px;">
                        @elseif ($row->store_logo == 3)
                        <img class="uploaded_img" src="{{ asset("store_logo/img/btb_and_dw.png") }}" alt="No image" style="max-height: 500px; width: 100%; max-width: 500px; object-fit: contain; text-align: center; margin-top: 5px;">
                        <img class="uploaded_img" src="{{ asset("store_logo/img/beyond_the_box_claiming.png") }}" alt="No image" style="max-height: 500px; width: 100%; max-width: 500px; object-fit: contain; text-align: center; margin-top: 5px;">
                        @endif

                        @if($row->html_email_img)
                        <img id="uploaded_img" src="{{ asset("uploaded_item/email_img/$row->html_email_img") }}" alt="No image" style="max-height: 500px; object-fit: contain; width: 100%; max-width: 500px; text-align: center; margin-top: 5px;">
                        @else
                        <img id="uploaded_img" src="" alt="" style="height: 500px; width: 100%; max-width: 500px; object-fit: contain; text-align: center; margin-top: 5px;">
                        @endif

                        </div>

                    </div>
                </div>
                <div class="row show_email" style="display: none;">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="add_email_header" for="">Email Content</label>
                            <textarea id="email-test" name="email_content">
                                {{ $row->html_email }}
                            </textarea>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="add_email_header" for="">Sample Email</label>
                            <textarea id="email-sample">
                                <h4><b>QR Code Redemption</b></h4><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>QR Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>We kindly ask you to bring a valid government ID when redeeming your code. This is necessary for identification purposes and to ensure a smooth and secure process. We also request that you review the terms and conditions that apply to the code redemption process. You can find the detailed terms and conditions by visiting the following link: [Insert link to terms and conditions]<p></p><p>If you have any questions or need assistance, please don't hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp</p>
                            </textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class='panel-footer'>
                <a href="{{ CRUDBooster::mainpath() }}" class="btn btn-default">Cancel</a>
                <input class='btn btn-success pull-right' id='create_email' value='Create Email Template' name="selected_button" style="margin-left: 10px; width: 160px;" readonly/>
                <input class='btn btn-primary pull-right' id='testing' value='Send Test Email' name="selected_button" readonly/>
                <button class="hide" id="hidden-submit" type="submit">submit</button>
            </div>
        </form>
    </div>

    <script>
    $(document).ready(function() {

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
                    $('#test_email').removeAttr('required');
                    $('#testing').removeAttr('name');
                    clicked_btn = null;
                    $('#hidden-submit').click();
                }
            })
        })

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
        
        $('form').on('submit', function(event){
            if(clicked_btn == 'test_email'){

                $('.sk-chase-position').show();
                event.preventDefault();

                const subject_of_the_email = $("input[name='subject_of_the_email']").val();
                const test_email = $("input[name='test_email']").val();
                const email_content = $("textarea[name='email_content']").val();
                const mail_img = $("input[name='mail_img']")[0].files[0];
                const email_content_val = $('#email_option').val();
                
                const formData = new FormData();
                formData.append('subject_of_the_email', subject_of_the_email);
                formData.append('test_email', test_email);
                formData.append('email_content', email_content);
                formData.append('mail_img', mail_img || '');
                formData.append('email_option', email_content_val);
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
                        $('.sk-chase-position').hide();

                        Swal.fire(
                            'Error Occured!',
                            'Make sure the input data are correct.',
                            'error'
                        )
                    }
                
                })
            }
        })

        $('#email_option').on('change',function(){
            const email_content_val = $(this).val();

            if(email_content_val == 1){
                $('.show_email').show();
                $('.mail_img_content').hide();
                $("input[name='mail_img']").removeAttr('required');
            }else{
                $('.show_email').hide();
                $('.mail_img_content').show();
                $('.note-editable').eq(0).text('');
                $("input[name='mail_img']").attr('required');
            }
        });

        if("{{ $row->html_email_img }}"){
            $('.mail_img_content').show();
        }else if("{{ $row->html_email }}"){
            $('.show_email').show();
            $("input[name='mail_img']").removeAttr('required');
        }
    });


    </script>
@endsection

@push('bottom')
    <script type="text/javascript" src="{{asset('vendor/crudbooster/assets/summernote/summernote.min.js')}}"></script>
@endpush