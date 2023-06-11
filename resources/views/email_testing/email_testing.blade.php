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
        {!! html_entity_decode($html_email) !!}
    </div>
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
