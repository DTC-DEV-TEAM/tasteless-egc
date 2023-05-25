<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')

@push('head')
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jsqr/dist/jsQR.min.js"></script>
    {{-- <script src="https://nominatim.openstreetmap.org/ui/reverse-geocode.js"></script> --}}

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
      <form id="import_excel" method='post' action='{{ route('import_file') }}' enctype="multipart/form-data">
        @csrf
        <input type="text" name="campaign_id" value="{{ $row->id }}" style="display: none;">
        @if ($errors->has('0') || $errors->has('1') || $errors->has('2'))
        <div class="callout callout-danger">
          <h4>Excel File Validation:</h4>
          <div class="csv-instructions">
            <p style="font-size: 16px;">An error occurred during the import process. Please try again.</p>
            <p style="font-size: 16px;">1. Ensure that all rows has value.</p>
            <p style="font-size: 16px;">2. Ensure the email has a valid format.</p>
          </div>
          <h4>Errors:</h4>
          <div class="csv-instructions">
            @foreach ($errors->all() as $error)
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
        {{-- <div class="callout callout-info">
          <h4>Before uploading the file, please follow these instructions:</h4>
          <div class="csv-instructions">
            <p style="font-size: 16px;">1. Ensure that the file you are uploading is either in CSV format or in Microsoft Excel format (XLS or XLSX).</p>
            <p style="font-size: 16px;">2. Please make sure the file contains the data you intend to upload</p>
            <p style="font-size: 16px;">3. The uploaded file should start with the second row, as the first row is typically used for column headers or label</p>
          </div>
          <br>
          <h4>If you have any questions or face any issues during the upload process, please feel free to ask for assistance.</h4>
        </div> --}}
        <div class="box box-solid box-primary">
          <div class="box-header">
            <h3 class="box-title">Before uploading the file, please follow these instructions:</h3>
          </div>
          <div class="box-body">
            <div class="csv-instructions">
              <p style="font-size: 15px;">1. Ensure that the file you are uploading is either in CSV format or in Microsoft Excel format (XLS or XLSX).</p>
              <p style="font-size: 15px;">2. Please make sure the file contains the data you intend to upload</p>
              <p style="font-size: 15px;">3. The uploaded file should start with the second row, as the first row is typically used for column headers or label</p>
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
            <div class="campaign-id-info">
              <label for="">Redemption Start Date:</label>
              <p>{{ $row->redemption_start }}</p>
            </div>
            <div class="campaign-id-info">
              <label for="">Redemption End Date:</label>
              <p>{{ $row->redemption_end }}</p>
            </div>
          </div>
        </div>
        <br>
        <div class="export-import-section">
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
        <button class="btn btn-primary excel_file_btn_submit" type="submit">Submit</button>
      </form>
    </div>
    <div class='panel-footer'>
    </div>
  </div>

  <script>
    $('#import_excel').submit(function(){
      $('.sk-chase-position').show();
    })
  </script>

  </script>
@endsection