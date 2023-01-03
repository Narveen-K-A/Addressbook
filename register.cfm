<html>
    <head>
        <link rel="stylesheet" href="css/styles.css">
        <script defer src="js/script.js"></script>
    </head>
    <body>
        <div class="lightbluebg heightbody">
            <cfinclude template="header.cfm">
            <div class="mainBody displayflex">
                <div class="leftbody bgcolor width300 displayflex justifycenter align">
                    <div>
                        <img class="icon50" src="assets/addressbooklogo.png" alt="Logo">
                    </div>
                </div>
                <div class="rightbody padding10 bgwhite">
                    <form method="post" name="myform" onsubmit="return validateform()">
                        <div class="bluecolor margin10 textcenter">SIGN UP</div>
                        <div class="margin20">
                            <input type="text" id="fname" class="fname outlinenone borderbottom bordernone width300" placeholder="Full Name"><br>
                            <small id="fname_error">Please enter your full name!</small>
                        </div>
                        <div class="margin20">
                            <input type="text" id="mailid" class="email outlinenone borderbottom bordernone width300" placeholder="Email ID"><br>
                            <small id="email_error">Please enter your Mail ID!</small>
                        </div>
                        <div class="margin20">
                            <input type="text" id="uname" class="fname outlinenone borderbottom bordernone width300" placeholder="Username"><br>
                            <small id="uname_error">Please enter the username!</small>
                        </div>
                        <div class="margin20">
                            <input type="password" id="pswd" class="userpwd outlinenone borderbottom bordernone width300" placeholder="Password"><br>
                            <small id="pswd_error">Please enter the password!</small>
                        </div>
                        <div class="margin20">
                            <input type="password" id="cpswd" class="userpwd outlinenone borderbottom bordernone width300" placeholder="Confirm Password"><br>
                            <small id="cpswd_error">Please confirm your password!</small>
                        </div>
                        <div class="margin20 displayflex justifycenter">
                            <input type="submit" class="login bluecolor outlinenone padding10 cursorpointer" id="formsubmit" name="formsubmit" value="REGISTER">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>