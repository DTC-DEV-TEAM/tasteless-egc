<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')

@push('head')
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <link rel="stylesheet" href="{{ asset('css/style.css') }}">
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
  {{-- Sweet Alert --}}
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

  <style>
    .swal2-popup {
      width: 350px !important;
      padding: 100px 0;
      font-size: 17px !important;
      margin-right: 8px !important;
      background-color: #222D32 !important;
      color: white !important;
    }

  </style>
@endpush

@section('content')
  <!-- Your html goes here -->
  <p><a title='Return' href='{{ CRUDBooster::mainpath() }}'><i class='fa fa-chevron-circle-left '></i>&nbsp; Back To Redeem QR Home</a></p>
  <div class='panel panel-default'>
    <div class='panel-heading' style="background-color: #fff;">Redeem Form</div>
    <div class='panel-body qr_redeem_section'>
      <form method='post' action='{{ route('redeem_code') }}' autocomplete="off">
        @csrf
        <input class="hidden" type="text" name="user_id" id="user_id" value="{{ $row->id }}" >

        <div class="redeem_layout">

          <div class="qr-reference-card" style="display: none;">
            <div class="close-icon">
              <button type="button" id="close-qr-reference-code"><i class="fa fa-close"></i></button>
            </div>
            <div class="check-icon">
              <span><i class="fa fa-check"></i></span>
            </div>
            <div class="redemption-success">
              <span>REDEMPTION SUCCESS</span>
            </div>
            <div class="qr-reference-content">
              <span id="qr-reference-number"></span>
            </div>
          </div>

          <div class="qr-invoice-number-card" style="display: none;">
            <div class="invoice-number-close-icon">
              <button type="button" id="close-qr-invoice_number"><i class="fa fa-close"></i></button>
            </div>
            <div class="invoice-number-check-icon">
              <span><i class="fa fa-pencil-square-o"></i></span>
            </div>
            <div class="redemption-success">
              <span>INPUT INVOICE #</span>
            </div>
            <div class="input-invoice">
              <input type="text" placeholder="INVOICE#" name="invoice_number" required>
              <button type="button" id="submit-invoice-btn">Save</button>
            </div>
          </div>

          <div class="user-info-content">
            <div class="user-info">
              <div class="user-element">
                <label for="">Name: </label>
                <input type="text" value="{{ $row->name }}" readonly>
              </div>
              <div class="user-element">
                <label for="">Email: </label>
                <input type="text" value="{{ $row->email }}" readonly>
              </div>
            </div>
          </div>
          <div class="user-info-content">
            <div class="user-info">
              <div class="user-element">
                <label for="">Phone Number: </label>
                <input type="text" value="{{ $row->phone }}" readonly>
              </div>
              <div class="user-element">
                <label for=""># of GCS: </label>
                <input type="text" value="{{ $row->number_of_gcs }}" readonly>
              </div>
            </div>
          </div>
          <div class="user-info-content">
            <div class="user-info">
              <div class="user-element">
                <label for="">Redemption Period: </label>
                <input type="text" value="{{ $row->redemption_period }}" readonly>
              </div>
              <div class="user-element">
                <label for="">GC Description: </label>
                <input type="text" value="{{ $row->gc_description }}" readonly>
              </div>
            </div>
          </div>
          <div class="user-info-content">
            <div class="user-info">
              <div class="user-element">
                <label for="">GC Value: </label>
                <input type="text" value="{{ $row->gc_value }}" readonly>
              </div>
              <div class="user-element">
                <label for=""><span class="required">*</span> ID#: </label>
                <input type="text" name="id_number" id="id_number" value="" required>
              </div>
            </div>
          </div>
          <div class="user-info-content">
            <div class="user-info">
              <div class="user-element">
                <label for=""><span class="required">*</span> ID Type: </label>
                <select name="id_type" id="id-type" required>
                  <option value="" selected disabled>Select ID Type</option>
                  <option value="Driver's License">Driver's License</option>
                  <option value="Passport">Passport</option>
                  <option value="PRC License">PRC License</option>
                  <option value="UMID">UMID</option>
                  <option value="SSS ID">SSS ID</option>
                  <option value="GSIS ID">GSIS ID</option>
                  <option value="Voter's ID">Voter's ID</option>
                  <option value="Postal ID">Postal ID</option>
                  <option value="TIN ID">TIN ID</option>
                  <option value="PhilHealth ID">PhilHealth ID</option>
                  <option value="Senior Citizen ID">Senior Citizen ID</option>
                  <option value="OFW ID">OFW ID</option>
                  <option value="School ID">School ID</option>
                  <option value="Company ID">Company ID</option>
                  <option value="other">Other</option>
                </select>
              </div>
              <div class="user-element" id="id-type-other" style="display: none;">
                <label for=""><span class="required">*</span> Other ID Type: </label>
                <input type="text" name="other_id_type" id="other_id_type" value="">
              </div>
            </div>
          </div>
        
          <br>
          {{-- @php
          $qrCodeUrl = route('scan_qr', ['data' => 'your-data-goes-here']);
          $qrCodeURL = url()->current();
          dd($qrCodeURL);
          @endphp
          {!! QrCode::size(200)->generate(url()->current()); !!} --}}
          <div class="text-center">
              
              <img style="height: 130px; width: 130px;" src="{{ asset('img/scan-women.jpg') }}" alt="">
              <p style="font-weight: bold; font-size: 15px;">Redeem code here and unlock exclusive benefits and rewards.</p>
          </div>
        
          <div class="redeem-btn">
            <button type='button' class='redeem-code' id="show-input-invoice" disabled><i class='fa fa-pencil '></i> Input Invoice #</button>
            <button type='button' class='redeem-code' id="show-reference-number" disabled><i class='fa fa-sticky-note-o '></i> Show QR Reference #</button>
            <button type='submit' class='redeem-code' id="redeem-code"><i class='fa fa-credit-card-alt '></i> Redeem Code</button>
          </div>
        </div>
      </form>
    </div>
    {{-- <div class='panel-footer' style="background-color: #fff;">
    </div> --}}
  </div>

  <script>

    $(document).ready(function() {

      // Toggle QR Reference Card
      $('#show-reference-number').click(function(event) {
        $('.qr-reference-card').fadeToggle();
      });
      
      // QR Reference Card Close button
      $('#close-qr-reference-code').click(function(){
        $('.qr-reference-card').hide();
      })
      
      // Close QR Reference Card
      $(document).click(function(event){
        if (!$(event.target).closest('.qr-reference-card').length && !$('#show-reference-number').is(event.target)){
          $('.qr-reference-card').hide();
        }

      })
      // Input Invoice Number
      $('#show-input-invoice').click(function(event) {
        $('.qr-invoice-number-card').fadeToggle();
      });
      
      // Input Invoice Number Close buttonn
      $('#close-qr-invoice_number').click(function(){
        $('.qr-invoice-number-card').hide();
      })

      // Close QR Reference Card
      $(document).click(function(event){
        if (!$(event.target).closest('.qr-invoice-number-card').length && !$('#show-input-invoice').is(event.target)){
          $('.qr-invoice-number-card').hide();
        }
      })

      $('#id-type').on('change', function(){
        const id_type_value = $(this).val();

        if (id_type_value == 'other'){
          $('#id-type-other').show();
          $('#other_id_type').attr('required', true);
        }else{
          $('#id-type-other').hide();
          $('#other_id_type').removeAttr('required');
        }
      })

      // Redeem Code Button
      $('#redeem-code').click(function(event){

        const id_type = $('#id-type').val();
        const other_id_type = $('#other_id_type').val();
        const id_number = $('#id_number').val();
        const user_id = $('#user_id').val();

        event.preventDefault();
        
        if((id_type == 'other' && !other_id_type) || !id_number || !id_type ){
            const Toast = Swal.mixin({
            toast: true,
            position: 'bottom-end',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
              toast.addEventListener('mouseenter', Swal.stopTimer)
              toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
          })

          Toast.fire({
            icon: 'warning',
            title: 'All required field must be filled'
          })
          return

        }
            

        $.ajax({
          url: "{{ route('redeem_code') }}",
          dataType: 'json',
          type: 'POST',
          data: {
            id_type: id_type,
            other_id_type: other_id_type,
            id_number: id_number,
            user_id: user_id,
          },
          success: function(response){

            console.log(response.test.qr_reference_number);
            
            $('#qr-reference-number').text(`QR REFERENCE #: ${response.test.qr_reference_number}`)
            $('#redeem-code').css({'box-shadow': 'none', 'transform': 'translateY(5px)', 'opacity': '0.9'});
            $('#redeem-code').attr('disabled', true);
            $('#show-reference-number').attr('disabled', false)
            $('#show-input-invoice').attr('disabled', false)
            
            $('#id-type').attr('disabled', true);
            $('#id-type').css({'background-color': '#eeeeee'});
            $('#id_number').attr('readonly', true);
            $('#other_id_type').attr('readonly', true);

            const Toast = Swal.mixin({
              toast: true,
              position: 'bottom-end',
              showConfirmButton: false,
              timer: 3000,
              timerProgressBar: true,
              didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
              }
            })

            Toast.fire({
              icon: 'success',
              title: 'Code Redeemed Successfully'
            })
          },
          error: function(error){
            console.log(error)
          }


        })

      })
      // End of Redeem Button

      // Invoice Submit Button
      $('#submit-invoice-btn').click(function(){
        
        $(this).parents('form').attr("action", "{{ route('input_invoice') }}")
        $(this).attr('type', 'submit');

      })
      // End of Invoice Submit Button

      

      

    });
  </script>
@endsection