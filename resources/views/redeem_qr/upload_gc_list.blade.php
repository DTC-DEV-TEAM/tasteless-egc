<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')

@push('head')
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jsqr/dist/jsQR.min.js"></script>
@endpush

@section('content')
  <!-- Your html goes here -->
  <p><a title='Return' href='{{ CRUDBooster::mainpath() }}'><i class='fa fa-chevron-circle-left '></i>&nbsp; Back To Redeem QR Home</a></p>
  <div class='panel panel-default'>
    <div class='panel-heading'>Upload Excel File</div>
    <div class='panel-body'>
      <form method='post' action='{{ route('import_file') }}' enctype="multipart/form-data">
        @csrf
        <div class="callout callout-info">
          <h4>Before uploading the file, please follow these instructions:</h4>
          <div class="csv-instructions">
            <p>1. Ensure that the file you are uploading is either in CSV format or in Microsoft Excel format (XLS or XLSX).</p>
            <p>2. Please make sure the file contains the data you intend to upload</p>
            <p>3. The uploaded file should start with the second row, as the first row is typically used for column headers or label</p>
          </div>
          <br>
          <h4>If you have any questions or face any issues during the upload process, please feel free to ask for assistance.</h4>
        </div>
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
@endsection