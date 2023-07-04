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
            text-align: center;
        }
        .container1 {
            padding: 20px;
            background-color: #ffffff;
        }

        /* #qr-code-download{
            display: flex;
            justify-content: center;
        } */

        #download_qr{
            padding: 20px;
        }

    </style>
</head>
<body>
    @if ($html_email_img)
    <div class="container">
        {{-- {!! html_entity_decode($html_email) !!} --}}
        {{-- <img src="{{ $message->embed(public_path() . "/uploaded_item/email_img/email_img3_0df24f.jpg") }}" style="height: 500px; width: 100%; object-fit: contain; text-align: center; margin-top: 15px;" /> --}}
        
        <img src="{{ $message->embed(public_path() . "/uploaded_item/email_img/$html_email_img") }}" style=" max-width: 800px; object-fit: contain; text-align: center; margin-top: 15px;" />

        <table cellpadding="0" cellspacing="0" style="border-collapse: collapse; width:100%; max-width: 800px; margin: auto; box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px, rgba(0, 0, 0, 0.22) 0px 10px 10px;">
            <tr>
                <td style="border-radius: 5px; background: #8e9eab;
                background: -webkit-linear-gradient(to right, #eef2f3, #8e9eab); 
                background: linear-gradient(to right, #eef2f3, #8e9eab); padding: 10px; ">
                    {!! $qr_code !!}
                    <span style="display: block; font-weight: bold;">Campaign ID: {{ $campaign_id_qr }}</span>
                    <span style="display: block; font-weight: bold;">GC Description: {{ $gc_description }}</span>
                </td>
            </tr>
        </table>  
    </div>
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
