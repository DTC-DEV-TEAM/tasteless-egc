<!DOCTYPE html>
<html>
<head>
    <!-- Add the html2canvas library -->
    <script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <style>
        /* Inline CSS styles */
        @import url('https://fonts.googleapis.com/css2?family=Lato:wght@300;400&display=swap'); 

        html{
            width: 100%;
        }
        body {
            font-family: Arial, sans-serif;
            color: #333;
            
        }

        .container {
            width: 100%;
            text-align: center;
       }
        .container1 {
            width: 100%;
        }

        .test{
            max-height:0;
            position: relative;
            opacity: 0.999;
            max-width: 800px;
            text-align: center;
        }

        .test1{
            max-height:0;
            position: relative;
            opacity: 0.999;
            max-width: 800px;
            text-align: left;
        }

        .position{
            margin-top: 62px;
            margin-left: 427px;
            text-align: right;
            display: inline-block;
        }

        .position2{
            margin-top: 59.5px;
            margin-left: 422px;
            text-align: right;
            display: inline-block;
        }

        .position3{
            margin-top: 36.5px;
            margin-left: 401px;
            text-align: right;
            display: inline-block;
        }

        .position_campaign_value{
            margin-top: 10px;
            margin-left: 30px;
            text-align: right;
            display: inline-block;
        }

        .position_campaign_value span{
            font-weight: bold;
            font-family: 'Lato', sans-serif;
            color: white;
            font-size: 40px; 
        }

        @media only screen and (max-width: 600px) {
            .position_campaign_value{
                margin-top: 20px;
                margin-left: 30px;
                text-align: right;
                display: inline-block;
            }

            .position_campaign_value span{
                font-weight: bold;
                font-family: 'Lato', sans-serif;
                font-size: 65px; 
            }
        }

    </style>
</head>
<body> 
    @if ($html_email_img)
    <table cellpadding="0" cellspacing="0" style="border-collapse: collapse; width: 100%; width: 800px; margin: auto;">
        <tr>
            <td align="center">
                <div class="container">
                    <img src="{{ $message->embed(public_path() . '/uploaded_item/email_img/' . $html_email_img) }}" style="height: 800px; width: 800px; object-fit: contain; text-align: center; margin-top: 15px;" />
                </div>
            </td>
        </tr>
        @if($store_logo == 1)
        <tr>
            <td align="center">
                <div class="test" style="margin: auto;">
                    <div class="position">
                        {!! $qr_code !!}
                    </div>
                </div>
                <div class="test1" style="margin: auto;">
                    <div class="position_campaign_value">
                        <span>₱500</span>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td align="center">
                <div style="width: 100%; text-align:center;">
                    <img src="{{ $message->embed(public_path() . '/store_logo/img/digital_walker.png') }}" style="height: 300px; min-width: 800px; object-fit: contain; text-align: center; pointer-events: none;" />
                </div>
            </td>
        </tr>
        @endif
        @if($store_logo == 2)
        <tr>
            <td align="center">
                <div class="test" style="margin: auto;">
                    <div class="position2">
                        {!! $qr_code !!}
                    </div>
                </div>
                <div class="test1" style="margin: auto;">
                    <div class="position_campaign_value">
                        <span style="color: black;">₱500</span>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td align="center">
                <div style="width: 100%; text-align:center;">
                    <img src="{{ $message->embed(public_path() . '/store_logo/img/beyond_the_box.png') }}" style="height: 300px; min-width: 800px; object-fit: contain; text-align: center; pointer-events: none;" />
                </div>
            </td>
        </tr>
        @endif
        @if($store_logo == 3)
        <tr>
            <td align="center">
                <div class="test" style="margin: auto;">
                    <div class="position3">
                        {!! $qr_code !!}
                    </div>
                </div>
                <div class="test1" style="margin: auto;">
                    <div class="position_campaign_value">
                        <span>₱500</span>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td align="center">
                <div style="width: 100%; text-align:center;">
                    <img src="{{ $message->embed(public_path() . '/store_logo/img/btb_and_dw.png') }}" style="height: 300px; min-width: 800px; object-fit: contain; text-align: center; pointer-events: none;" />
                </div>
            </td>
        </tr>
        @endif
    </table>
    <table cellpadding="0" cellspacing="0" style="border-collapse: collapse; width: 100%; max-width: 800px; margin: auto;">
        <tr>
            <td align="center" style="background-color: #EBEBEC;">
                <div>
                    <p>This is an auto-generated email. Please do not reply to this message.</p>
                    <p>&copy; digitsph</p>
                </div>
            </td>
        </tr>
    </table>

    @else
    <div class="container1">
        {!! html_entity_decode($html_email) !!}
    </div>
    @endif

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
