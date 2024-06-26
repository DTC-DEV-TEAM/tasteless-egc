<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')

@push('head')
  <link rel="stylesheet" href="{{ asset('css/style.css') }}">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jsqr/dist/jsQR.min.js"></script>
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
      <p>Please wait, generating QR code and sending to emails...</p>
    </div>
  </div>
  <p><a title='Return' href='{{ CRUDBooster::mainpath() }}'><i class='fa fa-chevron-circle-left '></i>&nbsp; Back To Redeem QR Home</a></p>
  <div class='panel panel-default'>
    <div class='panel-heading' >Upload Excel File</div>
    <div class='panel-body'>
      <a href="{{ route('email_template',$row->id) }}">Back to email Template</a>
      <form id="import_excel" method='post' action='{{ route('import_file') }}' enctype="multipart/form-data">
        @csrf
        <input type="text" name="campaign_id" value="{{ $row->id }}" style="display: none;">
        @if($errors->has(0))
        <div class="callout callout-danger">
          <h4>Excel File Validation:</h4>
          <p style="font-size: 16px;">The errors displayed during the import process indicate that the row was not inserted into our database. To address this issue, please fix the errors mentioned in the error messages and re-upload the excel. Once you have made the necessary corrections, try uploading the excel again to ensure it is inserted correctly into the database.</p>
          <div class="csv-instructions">
            @foreach (session('errors')->getBag('default')->all() as $error)
            <p style="font-size: 16px;">{{ $error }}</p>
            @endforeach
          </div>
        </div>
        @elseif (session()->has('success'))
        <div class="callout callout-success">
          <h4>Your QR Redemption Upload and Email Sending were Successful.</h4>
          <div class="csv-instructions">
            <p style="font-size: 16px;">All the QR codes associated with this campaign have been successfully uploaded, and the corresponding emails containing the QR codes have been sent to the recipients.</p>
            <p style="font-size: 16px;">1. If you have any further questions or need assistance, please feel free to reach out to our support team.</p>
            <p style="font-size: 16px;">2. We are here to ensure a smooth and successful redemption experience for you and your customers.</p>
          </div>
          <br>
        </div>
        @else
        <div class="box box-solid box-primary">
          <div class="box-header">
            <h3 class="box-title">Before uploading the file, please follow these instructions:</h3>
          </div>
          <div class="box-body">
            <div class="csv-instructions">
              <p style="font-size: 15px;">1. Ensure that the file you are uploading is either in CSV format or in Microsoft Excel format (XLS or XLSX).</p>
              <p style="font-size: 15px;">2. Please make sure the file contains the data you intend to upload</p>
              <p style="font-size: 15px;">3. The uploaded file should start with the second row, as the first row is typically used for column headers or label.</p>
              <p style="font-size: 15px;">4. To ensure that there are no conflicts in the backend process, it is advisable to set the system time ahead by at least 2 to 3 minutes relative to the current time.
              <p style="font-size: 15px;">5. Duplicate entry is allowed per upload.
              </p>
              <p style="font-size: 15px;"><span style="color: red; font-weight: bold;">If you have any questions or face any issues during the upload process, please feel free to ask for assistance.</span></p>
            </div>
          </div>
        </div>
        @endif
        <div class="campaign-information">
          <div class="campaign-row-1">
            <div class="campaign-id-info">
              <label for="">Campaign ID</label>
              <p>{{ $row->campaign_id }}</p>
            </div>
            <div class="campaign-id-info">
              <label for="">GC Description</label>
              <p>{{ $row->gc_description }}</p>
            </div>
            @if($row->upload_limit_control != null)
            <div class="campaign-id-info">
              <label for="">Number of GC List</label>
              <p>{{ $row->upload_limit_control }}</p>
            </div>
            @else
            <div class="campaign-id-info">
              <label for="">Number of GC List</label>
              <p>{{ $row->batch_number }}</p>
            </div>
            @endif
            <div class="campaign-id-info">
              <label for="">Date To Send</label>
              <input type="datetime-local" name="date_to_send" id="date_to_send" class="form-control" value="{{ $row->date_to_send }}" required>
            </div>            
            {{-- @if (!is_null($row->upload_limit_control) )
            <div class="campaign-id-info">
              <label for="">Upload Limit</label>
              <p>{{ $row->upload_limit_control }}</p>
            </div>
            @else
            <div class="campaign-id-info">
              <label for="">Upload Limit</label>
              <p>{{ $row->upload_limit }}</p>
            </div>
            @endif --}}
          </div>
        </div>
        <br>
        <div class="export-import-section">
          {{-- <div class="email-template-section">
            <label for="">Email Template</label>
            <select name="email_template_id" id="" required>
              <option value="" selected disabled>Choose an email template</option>
              @foreach($email_templates as $mail)
              <option value="{{ $mail->id }}">{{ $mail->title_of_the_email }}</option>
              @endforeach
            </select>
          </div> --}}
          <div class="download-template">
            <label for="">Export Template File:</label>
            <div class="export-template-section">
              <a href="{{ route('export_file') }}">Download Template File</a>
            </div>
          </div>
          <div class="file-upload-content">
            <label for="">File XLS / CSV</label>
            <input type="file" name="excel_file" accept=".csv, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" required>
            <br>
            @if ($errors->has('excel_file'))
            <p class="required">{{ $errors->first('excel_file') }}</p>
            @endif
          </div>
        </div>
        <!-- etc .... -->
        @if ($row->upload_limit_control == '0')
        <input class="btn btn-primary excel_file_btn_submit" id="input_btn" value="Submit" style="width: 100px;" disabled>
        <p style="margin-top: 15px; color: red;">Your upload has reached the limit. Please contact the distribution assignee for assistance.</p>
        @else
        <input class="btn btn-primary excel_file_btn_submit" id="input_btn" value="Submit" style="width: 100px;" readonly>
        @endif
        {{-- <input class="btn btn-primary excel_file_btn_submit" id="input_btn" value="Submit" style="width: 100px;" readonly> --}}
        <button class="hide" id="btn_submit" type="submit">Submit</button>
        
      </form>
    </div>
    <div class='panel-footer'>
    </div>
  </div>

  <script>
    $(document).ready(function(){

        $('#import_excel').submit(function(){
          $('.sk-chase-position').show();
        })

        $('#input_btn').click(function(){
          Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, save it!',
                returnFocus: false,
            }).then((result) => {
                if (result.isConfirmed) {
                  $('#btn_submit').click();
                }
            })
        })
    
        
    });
    

  </script>

@endsection

