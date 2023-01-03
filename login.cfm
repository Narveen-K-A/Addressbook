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
                    <form method="post" name="myform" onsubmit="return validatemyform()">
                        <div class="bluecolor margin10 textcenter">LOGIN</div>
                        <div class="margin20">
                            <input type="text" class="username outlinenone borderbottom bordernone width300" id="uname" placeholder="Username"><br>
                            <small id="uname_error">Please enter the username!</small>
                        </div>
                        <div class="margin20">
                            <input type="password" class="userpwd outlinenone borderbottom bordernone width300" id="pswd" placeholder="Password"><br>
                            <small id="pswd_error">Please enter your password!</small>
                        </div>
                        <div class="margin20 displayflex justifycenter">
                            <input type="submit" id="formsubmit" name="formsubmit" class="login bluecolor outlinenone padding10 cursorpointer" value="LOGIN">
                        </div>
                        <div class="textcenter">Or Sign in using</div>
                        <div class="displayflex justifycenter">
                            <div class="displayflex">
                                <div class="margin10">
                                    <img class="icon50 cursorpointer" src="assets/facebook.png" alt="Facebook Logo">
                                </div>
                                <div class="margin10">
                                    <img class="icon53 cursorpointer" src="assets/google.png" alt="Google Logo">
                                </div>
                            </div>
                        </div>
                        <div class="displayflex justifycenter margin10">
                            Don't have an account? <a class="bluecolor" href="register.cfm">Register here</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
