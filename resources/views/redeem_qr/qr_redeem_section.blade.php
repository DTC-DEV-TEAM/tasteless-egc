<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')

@push('head')
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <link rel="stylesheet" href="{{ asset('css/style.css') }}">
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
  {{-- Sweet Alert --}}
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  {{-- Confetti --}}
  <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.6.0/dist/confetti.browser.min.js"></script>

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
      <form method='post' action='{{ route('redeem_code') }}' autocomplete="off" style="display: none;">
        @csrf
        <input class="hidden" type="text" name="user_id" id="user_id" value="{{ $row->id }}" >

        <div class="redeem_layout">

          <div class="qr-reference-card" style="display: none;">
            <div class="close-icon">
              <button type="button" id="close-qr-reference-code"><i class="fa fa-close"></i></button>
            </div>
            @if ($row->status == 'EXPIRED')
            <div class="expired-icon">
              <span><i class="fa fa-close"></i></span>
            </div>
            @else
            <div class="check-icon">
              <span><i class="fa fa-check"></i></span>
            </div>
            @endif
            <div class="redemption-success">
              @if ($row->status == 'EXPIRED')
              <span>REDEMPTION EXPIRED</span>
              @else
              <span>REDEMPTION SUCCESS</span>
              @endif
            </div>
            <div class="qr-reference-content">
              <span id="qr-reference-number">CAMPAIGN ID REFERENCE #: {{ $row->campaign_id }} - {{ $row->qr_reference_number }}</span>
            </div>
            <div class="input-invoice-notes">
              <span style="text-transform: uppercase;">Note: Please copy paste below your POS memo field</span>
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
              @if ($row->invoice_number)
                <span>POS NUMBER</span>
                @else
                <span>INPUT POS NUMBER</span>
              @endif
              
            </div>
            <div class="input-invoice">
              <input type="text" name="invoice_number" value="{{ $row->invoice_number }}" {{ $row->invoice_number ? "readonly" : '' }} required>
              <button type="button" id="submit-invoice-btn" {{ $row->invoice_number ? 'disabled' : '' }}>Save</button>
            </div>
            <div class="input-invoice-notes">
              <span style="text-transform: uppercase;">Note: Please Input POS# use in the transaction.</span>
            </div>
          </div>

          <div class="redemption-period-not-available-card" style="display: none;">
            <div class="redemption-period-close-icon">
              <button type="button" id="close-qr-redemption-period"><i class="fa fa-close"></i></button>
            </div>
            <div class="redemption-period-check-icon">
              <span><i class="fa fa-lock"></i></span>
            </div>
            <div class="redemption-period-success">
              <span>QR CODE NO LONGER REEDEMABLE</span>
            </div>
            <div class="redemption-period-close-transaction">
              <button id="redemption-ended" type="button">Close Transaction</button>
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
                <label for="">GC Description: </label>
                <input type="text" value="{{ $row->gc_description }}" readonly>
              </div>
            </div>
          </div>
          <div class="user-info-content">
            <div class="user-info">
              <div class="user-element">
                <label for="">Redemption Start Date: </label>
                <input id="redemption_start_date" type="text" value="{{ $row->redemption_start }}" readonly>
              </div>
              <div class="user-element">
                <label for="">Redemption End Date: </label>
                <input id="redemption_end_date" type="text" value="{{ $row->redemption_end }}" readonly>
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
                <label for=""><span class="required">*</span> Government ID#: </label>
                <input type="text" name="id_number" 
                id="id_number"  value="{{ $row->id_number }}" {{ $row->id_number ? 'readonly' : '' }} required>
              </div>
            </div>
          </div>
          <div class="user-info-content">
            <div class="user-info">
              <div class="user-element">
                <label for=""><span class="required">*</span> ID Type: </label>
                {{ $row->id_types }}
                <select name="id_type" id="id-type" {{ $row->id_type ? 'disabled': '' }} required>
                  <option value="" disabled selected>Select Valid IDs</option>
                  @foreach ($valid_ids as $valid_id)
                    <option {{ $row->id_type == $valid_id->id ? 'selected': '' }} value="{{ $valid_id->id }}">{{ $valid_id->valid_ids }}</option>
                  @endforeach
                </select>
              </div>
              <div class="user-element" id="id-type-other" style="display: none;">
                <label for=""><span class="required">*</span> Other ID Type: </label>
                <input type="text" name="other_id_type" id="other_id_type" value="{{ $row->other_id_type }}">
              </div>
            </div>
          </div>
        
          <br>
          {{-- @php
          $qrCodeUrl = route('scan_qr', ['data' => 'your-data-goes-here']);
          $qrCodeURL = url()->current();
          @endphp
          {!! QrCode::size(200)->generate(url()->current()); !!} --}}
          <div class="text-center">
              
              <img style="height: 130px; width: 130px;" src="{{ asset('img/scan-women.jpg') }}" alt="">
              <p style="font-weight: bold; font-size: 15px;">Redeem code here and unlock exclusive benefits and rewards.</p>
          </div>
        
          <div class="redeem-btn">
            <button type='button' class='redeem-code' id="show-input-invoice" disabled><i class='fa fa-pencil '></i>Step 3 - Input POS #</button>
            <button type='button' class='redeem-code' id="show-reference-number" disabled><i class='fa fa-sticky-note-o '></i>Step - 2 Show QR Reference #</button>
            <button type='submit' class='redeem-code' id="redeem-code"><i class='fa fa-credit-card-alt '></i> Step 1 - Redeem Code</button>
          </div>
        </div>
      </form>
    </div>
    {{-- <div class='panel-footer' style="background-color: #fff;">
    </div> --}}
  </div>

  <script>

    $(document).ready(function() {

      $('form').css('display','block');
  
      // Transaction Validation 
      function transactionValidation(){

        if('{{ $row->redeem }}' && '{{ $row->invoice_number }}'){
          $('#redeem-code').attr('disabled', true);
          $('#show-reference-number').attr('disabled', false);
          $('#show-input-invoice').attr('disabled', false);
        }else if ('{{ $row->redeem }}' && '{{ !$row->invoice_number }}'){
          $('#redeem-code').attr('disabled', true);
          $('#show-reference-number').attr('disabled', false);
          $('#show-input-invoice').attr('disabled', false);
        } else if ('{{ $row->status }}' == 'EXPIRED') {
          $('#redeem-code').attr('disabled', true);
          $('#show-reference-number').attr('disabled', false);
        }
      }

      // Validate redemption period
      function colorRedemptionPeriod(){
        let redemption_date = $('#redemption_end_date').val();
        let date = new Date();
        let dateValidation = new Date(redemption_date);
        
        if(date > dateValidation){
          $('#redemption_start_date').css({'color' : '#F42B03', 'font-weight' : 'bold'});
          $('#redemption_end_date').css({'color' : '#F42B03', 'font-weight' : 'bold'});
        }else{
          $('#redemption_start_date').css({'color' : '#2BA84A', 'font-weight' : 'bold'});
          $('#redemption_end_date').css({'color' : '#2BA84A', 'font-weight' : 'bold'});
        }
      }

      // Toggle and Closing
      function toggleAndClosing(){
        // Toggle QR Reference Card
        $('#show-reference-number').click(function(event) {
          $('.qr-reference-card').fadeToggle();
        });
        
        // QR Reference Card Close button
        $('#close-qr-reference-code').click(function(){
          $('.qr-reference-card').hide();
        })

        // Redemption End Close Button
        $('#close-qr-redemption-period').click(function(){
          $('.redemption-period-not-available-card').hide();
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
          if (!$(event.target).closest('.qr-reference-card').length && !$('#show-reference-number').is(event.target)){
            $('.qr-reference-card').hide();
          }
        })
      }

      function idType(){

        if("{{ $row->other_id_type }}"){
        $('#id-type-other').show();
        $('#other_id_type').attr('readonly', true);
      }

      $('#id-type').on('change', function(){

        const id_type_value = $(this).val();

        if (id_type_value == '15'){
            $('#id-type-other').show();
            $('#other_id_type').attr('required', true);
          }else{
            $('#id-type-other').hide();
            $('#other_id_type').removeAttr('required');
            $('#other_id_type').val('');
          }
        })
      };

      // Redeem Code Button
      $('#redeem-code').click(function(event){

        const id_type = $('#id-type').val();
        const other_id_type = $('#other_id_type').val();
        const id_number = $('#id_number').val();
        const user_id = $('#user_id').val();

        // Validate redemption period
        const redemption_end_date = $('#redemption_end_date').val();
        const current_date = new Date();
        const redemptionDateValidation = new Date(redemption_end_date);
        
        event.preventDefault();

        if(current_date > redemptionDateValidation || redemptionDateValidation == 'Invalid Date' ){
          
          console.log('Redemption period has ended.')

          $('.redemption-period-not-available-card').fadeToggle();

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
              icon: 'error',
              title: 'Redemption period has ended.'
            })

            return

            
        }else{

          if((id_type == '15' && !other_id_type) || !id_number || !id_type ){
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

              confetti({
                particleCount: 100,
                spread: 70,
                origin: { y: 0.8, x: 0.57 }
              });
              
              $('#qr-reference-number').text(`CAMPAIGN ID REFERENCE #: ${response.test.campaign_id} - ${response.test.qr_reference_number}`)
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
        }

      })
      // End of Redeem Button

      // Invoice Submit Button
      $('#submit-invoice-btn').click(function(){
        
        $(this).parents('form').attr("action", "{{ route('input_invoice') }}")
        $(this).attr('type', 'submit');

      })
      // End of Invoice Submit Button

      // Redemption date validation
      $('#redemption-ended').click(function(){
        
        $('input').removeAttr('required');
        $('select').removeAttr('required');
        $(this).parents('form').attr("action", "{{ route('redemption_ended') }}")
        $(this).attr('type', 'submit');
      })
      // End of Redemption date validation

      colorRedemptionPeriod();

      transactionValidation();

      toggleAndClosing();

      idType();

    });
  </script>
@endsection