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
    <p><a title='Return' href='{{ CRUDBooster::mainpath() }}'><i class='fa fa-chevron-circle-left '></i>&nbsp; Back To Email Home</a></p>
    <div class='panel panel-default'>
        <div class='panel-heading'>Add Form</div>
        <form method='post' action='{{CRUDBooster::mainpath('edit-save/'.$row->id)}}' autocomplete="off">
        @csrf
        <div class='panel-body'>
                <br>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="add_email_header" for="">Title of the email</label>
                            <input type="text" class="form-control" name="title_of_the_email" required>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="add_email_header" for="">Subject</label>
                            <input type="text" class="form-control" name="subject_of_the_email" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="add_email_header" for="">Your Test Email</label>
                            <input type="text" class="form-control" id="test_email" name="test_email" placeholder="youremail@gmail.com" required>
                            <p style="margin-top:10px; color: red;">Required only for testing button.</p>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    {{-- <div class="col-lg-6">
                        <div class="form-group">
                            <div class="box box-primary box-solid">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Notes</h3>
                                </div>
                                <div class="box-body">
                                    <p style="color: green; font-weight: bold;">You can use the following information to personalize the template for each recipient:</p>
                                    <p>Name of the recipient: [name]</p>
                                    <p>Campaign ID: [campaign_id]</p>
                                    <p>GC description:  [qr_description]</p>
                                    <p>Qr Code: [qr_code]</p>
                                    <p>Once you have filled in the required information, click the 'Generate Email' button to create the personalized email template."</p>                   
                                </div>
                            </div>
                        </div>
                    </div> --}}
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="add_email_header" for="">Gmail Preview</label>
                            <img src="{{ asset('img/sample_email1.PNG') }}" alt="" style="width: 100%; object-fit: contain; border: 1px solid rgba(0,0,0,.1);">
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="add_email_header" for="">Email Content</label>
                            <textarea id="email-test" name="email_content" required></textarea>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="add_email_header" for="">Sample Email</label>
                            <textarea id="email-sample">
                                <h4><b>QR Code Redemption</b></h4><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>QR Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>If you have any questions or need assistance, please don't hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp</p>
                            </textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class='panel-footer'>
                <a href="{{ CRUDBooster::mainpath() }}" class="btn btn-default">Cancel</a>
                <input class='btn btn-warning pull-right' id="proceed" value="Proceed" name="selected_button" style="margin-left: 10px; width: 100px" readonly>
                <input class='btn btn-primary pull-right' id='create_email' value='Create Email Template' name="selected_button" style="margin-left: 10px; width: 160px;" readonly/>
                <input class='btn btn-info pull-right' id='testing' value='Testing' name="selected_button" style="width: 75px;" readonly/>
                <button class="hide" id="hidden-submit" type="submit">submit</button>
            </div>
        </form>
    </div>

    <script>
    $(document).ready(function() {
        let clicked_btn;
        $('#email-test').summernote();
        $('#email-sample').summernote();
        $('.note-editable').eq(0).css('height', '300px');
        $('.note-editable').eq(1).attr('contenteditable', 'false');

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
                    $('#proceed').removeAttr('name');
                    $('#testing').removeAttr('name');
                    clicked_btn = null;
                    $('#hidden-submit').click();
                }
            })
        })

        $('#proceed').click(function(event){
            $(this).attr('name', 'selected_button');
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, Proceed!',
                returnFocus: false,
            }).then((result) => {
                if (result.isConfirmed) {
                    clicked_btn = null;
                    $('#testing').removeAttr('name');
                    $('#create_email').removeAttr('name');
                    $('#email-test').removeAttr('required');
                    $('input').removeAttr('required');
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
                event.preventDefault();

                const subject_of_the_email = $("input[name='subject_of_the_email']").val();
                const test_email = $("input[name='test_email']").val();
                const email_content = $("textarea[name='email_content']").val();

                $.ajax({
                    url: "{{ route('emailtesting') }}",
                    dataType: 'json',
                    type: 'POST',
                    data: {
                        subject_of_the_email: subject_of_the_email,
                        test_email: test_email,
                        email_content: email_content
                    },
                    success: function(response){
                        console.log(response);
                        Swal.fire(
                            'Good job!',
                            'Email successfully sent.',
                            'success'
                        )
                    },
                    error: function(error){
                        console.log(error);
                        Swal.fire(
                            'Error Occured!',
                            'Make sure the input data are correct.',
                            'error'
                        )
                    }
                
                })
            }
        })
    });


    </script>
@endsection

@push('bottom')
    <script type="text/javascript" src="{{asset('vendor/crudbooster/assets/summernote/summernote.min.js')}}"></script>
@endpush