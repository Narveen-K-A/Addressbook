<html>
    <head>
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="assets/modal.css">
    </head>
    <body>
        <cfoutput>
            <div class="lightbluebg padding20">
                <cfinclude template="headerin.cfm">
                <div class="displayflex justifycenter padding30">
                    <div class="bgwhite whitediv displayflex">
                        <div>
                            <img src="assets/pdf.png" class="icon30 cursorpointer">
                        </div>
                        <div>
                            <img src="assets/xls.png" class="icon30 cursorpointer">
                        </div>
                        <div>
                            <img src="assets/printing.png" class="icon30 cursorpointer">
                        </div>
                    </div>
                </div>
                <div class="bgwhite padding10 user displayflex justifycenter">
                    <img src="assets/account.png" class="userwidth">
                </div>
                <div class="bgwhite user displayflex justifycenter">
                    <b class="bluecolor">#session.userInfo#</b>
                </div>
                <div class="bgwhite user displayflex justifycenter padding10">
                    <button onclick="document.getElementById('id01').style.display='block'" class="modalButton">CREATE CONTACT</button>
                </div>
            </div>
            <div id="id01" class="w3-modal">
                <div class="w3-modal-content">
                    <div class="w3-container">
                        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                        <div class="lightbluebg displayflex padding10">
                            <div class="bgwhite margin20">
                                <div class="lightbluebg displayflex justifycenter">
                                    <b class="bluecolor"><h3>CREATE CONTACT</h3></b>
                                </div>
                                <div class="padding10">
                                    <b class="bluecolor"><h4>Personal Contact</h4></b>
                                </div>
                            </div>
                            <div class="iconImage">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>