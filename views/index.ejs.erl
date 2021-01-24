<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VShare - File Sharing Made Easy</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <img src="./logo.png" alt="Inshare logo" class="logo">
    <section class="upload-container">
        <form action="">
            <div class="drop-zone">
                <div class="icon-container">
                    <img src="file.svg" draggable="false" class="center" alt="File Icon">
                    <img src="file.svg" draggable="false" class="left" alt="File Icon">
                    <img src="file.svg" draggable="false" class="right" alt="File Icon">
                </div>
                <input type="file" id="fileInput">
                <div class="title">Drop your Files here or, <span id="browseBtn">browse</span></div>
            </div>
        </form>
        <div class="progress-container">
            <div class="bg-progress"></div>

            <div class="inner-container">
                <div class="status">Uploading...</div>
                <div class="percent-container">
                    <span class="percentage" id="progressPercent">0</span>%
                </div>
                <div class="progress-bar"></div>
            </div>

        </div>
        <div class="sharing-container">
            <p class="expire">Link expires in 24 hrs</p>


            <div class="input-container">
                <input type="text" id="fileURL" readonly>
                <img src="./copy-icon.svg" id="copyURLBtn" alt="copy to clipboard icon">
            </div>


            <p class="email-info">Or Send via Email</p>
            <div class="email-container">
                <form id="emailForm">
                    <div class="filed">
                        <label for="fromEmail">Your email</label>
                        <input type="email" autocomplete="email" required name="from-email" id="fromEmail">
                    </div>

                    <div class="filed">
                        <label for="toEmail">Receiver's email</label>
                        <input type="email" required autocomplete="receiver" name="to-email" id="toEmail">
                    </div>
                    <div class="send-btn-container">
                        <button type="submit">Send</button>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <div class="image-vector"></div>
   
    <script src="index.js"></script>
</body>

</html>