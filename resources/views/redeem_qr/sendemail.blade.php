<!DOCTYPE html>
<html>
<head>
    <!-- Add the html2canvas library -->
    <script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <style>
        /* Inline CSS styles */
        body {
            font-family: Arial, sans-serif;
            color: #333;
            background-color: #f7f7f7;
        }
        .container {
            padding: 20px;
            background-color: #ffffff;
        }

        #qr-code-download{
            display: flex;
            justify-content: center;
        }

        #download_qr{
            padding: 20px;
        }

    </style>
</head>
<body>
    <div class="container">
        <h3>QR Code Redemption</h3>
        
            <p>
                Dear {{ $name }},
            </p>

            <p>
                We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.
            </p>

            <div id="qr-code-download">
                <div id="download_qr">

                    {{-- @php
                        // $qrCodeUrl = route('edit_redeem_code', ['data' => 'your-data-goes-here']);
                        $qrCodeUrl = route('edit_redeem_code', ['id' => 13]);
                        // $qrCodeURL = url()->current();
                    @endphp
                    {!! QrCode::size(200)->generate($qrCodeUrl); !!} --}}

                    @php
                    $url = url('admin/g_c_lists/edit/' . $id);
                    $qrCodeApiUrl = 'https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=' . urlencode($url);
                    @endphp
                    {{-- <img src="{{ $qrCodeApiUrl }}" alt="QR Code"> --}}
                    <a href="{{ $qrCodeApiUrl }}" download="qr_code.png">
                        <img src="{{ $qrCodeApiUrl }}" alt="QR Code">
                    </a>
                
                </div>
            </div>

            {{-- <p style="text-align: center; margin: 0;">
                <a href="#" id="download">Download QR CODE</a>
            </p> --}}

            <p>
                Please note that the QR code is unique to you and cannot be shared or transferred. It is valid only for the specified redemption period, so make sure to visit the store within the given timeframe to enjoy the benefits.
            </p>

            <p>
                If you have any questions or need assistance, please don't hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.
            </p>

            <p>
                Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.
            </p>
            <br>
            <p>Best regards,</p> 
            <p>BPG Department</p>
            <p>Digits Trading Corp.</p>
            
    </div>


  {{-- <img id="convertedImg" src="" alt="Converted Image"> --}}

  <script>
    $(document).ready(function() {

        $('#download').on('click', function() {
            var divToConvert = $('#download_qr');
            
            html2canvas(divToConvert[0]).then(function(canvas) {
                var imageDataURL = canvas.toDataURL('image/png');
                
                // Create a temporary link element
                var link = document.createElement('a');
                link.href = imageDataURL;
                link.download = 'qr_image.png'; // Set the desired file name
                
                // Trigger a click event on the link to start the download
                link.click();
                
            });
        });
    });



  </script>
  

</body>
</html>
