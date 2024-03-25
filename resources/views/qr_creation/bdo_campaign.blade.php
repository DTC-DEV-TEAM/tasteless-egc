<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')

@push('head')
  <link rel="stylesheet" href="{{ asset('css/style.css') }}">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jsqr/dist/jsQR.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

  <style>
    .swal2-popup {
        font-size: 17px !important;
        color: rgb(0, 0, 0) !important;
    }

    .progress-wrapper {
        width: 80%;
        position: relative;
    }
    progress {
        width: 100%;
        height: 30px;
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
      <p>Please wait, generating gift code...</p>
    </div>
  </div>
  <p><a title='Return' href='{{ CRUDBooster::mainpath() }}'><i class='fa fa-chevron-circle-left '></i>&nbsp; Back To Redeem QR Home</a></p>
  <div class='panel panel-default'>
    <div class='panel-heading' >Upload Excel File</div>
    <div class='panel-body'>
      <form id="import_excel" method='post' action='{{ route('import_file_bdo') }}' enctype="multipart/form-data">
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
              <p style="font-size: 15px;">4. Duplicate entry is allowed per upload.
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
          </div>
        </div>
        <br>
        <div class="export-import-section">
          <div class="download-template">
            <label for="">Export Template File:</label>
            <div class="export-template-section">
              <a href="{{ route('export_file_bdo') }}">Download Template File</a>
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
        <div class="campaign-information">
          <div class="campaign-row-1">
            <div class="download-template">
              <label for="">Import Progress Bar:</label>
              <div class="export-template-section">
                <div class="progress-wrapper">
                  <progress id="progress-bar" value="{{ $percent }}" max="100"></progress>
                </div>
                <div><span id="importPercent">{{ round($percent, 2) }}% </span>(<span id="countImport">{{ number_format($rowCount) }}</span> of <span id="batch_number_total">{{ number_format($row->total_row) }} </span>rows imported)</div>
              </div>
            </div>
            <div class="download-template">
              <label for="">Build export BDO gclist:</label>
              <div class="export-template-section">
                <button id="build-export" type="button" href="{{ route('export_data_campaign', [$row->id, $row->campaign_id]) }}" {{ $percent == 100 ? '' : 'disabled' }}>Build</button>
              </div>
            </div>
            <div class="download-template">
              <label for="">Download Excel:</label>
              <div class="export-template-section {{ $download_built_export ? '' : 'hide' }}">
                  <button id="download-build-export" href="{{ route('export_build_data', [$row->id, $row->campaign_id]) }}" type="button">Download</button>
              </div>
            </div>
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
        const data = {!! json_encode($row) !!};

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

        setInterval(() => {
            let campaignId = data.id;
            const url = "{{ route('count_import', ['campaign_id' => ':campaignId']) }}"; // Note the change here
            const finalUrl = url.replace(':campaignId', campaignId); // Note the change here
            
            $.ajax({
                url: finalUrl,
                method: 'GET',
                success: function(response){
                  let batch_number_str = $('#batch_number_total').text();
                  // Remove commas from the string and convert it to an integer
                  let batch_number = parseInt(batch_number_str.replace(/,/g, ''));
                  let totalImport = response;
                  let percent = batch_number ? (totalImport / batch_number) * 100 : 0;

                  // Check if the percentage is exactly 100
                  if (percent === 100) {
                      $('#build-export').attr('disabled', false);
                      $('#importPercent').text('100% ');
                  } else {
                      $('#build-export').attr('disabled', true);
                      $('#importPercent').text(`${percent.toFixed(2)}% `);
                  }

                  $('#progress-bar').val(percent);
                  $('#countImport').text(parseInt(totalImport).toLocaleString({ locale: 'eng' }));

                },
                error: function(err){
                    console.log(err);
                }
            });
        }, 3000);

        $('#build-export').on('click', function(){
          const link = $(this).attr('href');
          location.href = link;
        })

        $('#download-build-export').on('click', function(){
          const link = $(this).attr('href');
          location.href = link;
        })
    });
    

  </script>

@endsection

