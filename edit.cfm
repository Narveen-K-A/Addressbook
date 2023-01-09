<html>
    <head>
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="assets/modal.css">
        <script defer src="js/script.js"></script>
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
                <div class="bgwhite padding10 margin10 user displayflex justifycenter">
                    <img src="assets/account.png" class="userwidth">
                </div>
                <div class="bgwhite user displayflex justifycenter">
                    <b class="bluecolor">#session.userInfo#</b>
                </div>
                <div class="bgwhite user displayflex justifycenter padding10 margin10">
                    <button onclick="document.getElementById('id01').style.display='block'" class="modalButton">CREATE CONTACT</button>
                </div>
            </div>
            <div id="id01" class="w3-modal">
                <div class="w3-modal-content">
                    <div class="w3-container">
                        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                        <div class="padding10 margin10">
                            <div class="lightbluebg displayflex justifycenter">
                                <div class="bluecolor padding10 largefont">CREATE CONTACT</div>
                            </div>
                            <div class="padding10 bluecolor blueborder">Personal Contact</div>
                            <form method="post" name="fromCreate" onsubmit="return validatecreateform()">
                                <div class="displayflex justify">
                                    <div>
                                        <div class="bluecolor padding10 margin10">Title</div>
                                            <select name="titlename" id="titleid" class="borderbottom borderstyle">
                                                <option selected="" ></option>
                                                <option value="Mr">Mr</option>
                                                <option value="Mrs">Mrs</option>
                                                <option value="Ms">Ms</option>
                                            </select><br>
                                            <small id="titleid_error">Please fill this field!</small>
                                        </div>
                                    <div>
                                        <div class="bluecolor padding10 margin10">First Name*</div>   
                                        <input type="text" name="firstname" id="firstnameid" placeholder="Your First Name" class="outlinenone width200 borderbottom borderstyle"><br>
                                        <small id="firstnameid_error">Please fill this field!</small>
                                    </div>
                                    <div>
                                        <div class="bluecolor padding10 margin10">Last Name*</div>   
                                        <input type="text" name="lastname" id="lastnameid" placeholder="Your Last Name" class="outlinenone width200 borderbottom borderstyle"><br>
                                        <small id="lastnameid_error">Please fill this field!</small>
                                    </div>
                                </div>
                                <div class="displayflex justify">
                                    <div>
                                        <div class="bluecolor padding10 margin10">Gender*</div>
                                        <select name="gendername" id="genderid" class="borderbottom borderstyle outlinenone width200">
                                            <option selected=""></option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                        </select><br>
                                        <small id="genderid_error">Please fill this field!</small>
                                    </div>
                                    <div>
                                        <div class="bluecolor padding10 margin10">Date Of Birth*</div>   
                                        <input type="date" name="dobname" id="dobid" class="outlinenone width200 borderbottom borderstyle"><br>
                                        <small id="dobid_error">Please fill this field!</small>
                                    </div>
                                </div>
                                <div class="displayflex justify">
                                    <div>
                                        <div class="bluecolor padding10 margin10">Upload Photo*</div>
                                        <input type="file" name="filename" id="fileid" class="outlinenone width200"><br>
                                        <small id="fileid_error">Please fill this field!</small>
                                    </div>
                                </div>
                                <div class="padding10 bluecolor blueborder">Contact Details</div>
                                <div class="displayflex justify">
                                    <div>
                                        <div class="bluecolor padding10 margin10">Address*</div>
                                        <input type="text" name="addressname" id="addressid" placeholder="Your Address" class="outlinenone width200 borderbottom borderstyle"><br>
                                        <small id="addressid_error">Please fill this field!</small>
                                    </div>
                                    <div>
                                        <div class="bluecolor padding10 margin10">Street*</div>   
                                        <input type="text" name="streetname" id="streetid" placeholder="Your Street Name" class="outlinenone width200 borderbottom borderstyle"><br>
                                        <small id="streetid_error">Please fill this field!</small>
                                    </div>
                                </div>
                                <div class="displayflex justify">
                                    <div>
                                        <div class="bluecolor padding10 margin10">Email Id*</div>
                                        <input type="text" name="emailname" id="emailid" placeholder="Your Email Address" class="outlinenone width200 borderbottom borderstyle"><br>
                                        <small id="emailid_error">Please fill this field!</small>
                                    </div>
                                    <div>
                                        <div class="bluecolor padding10 margin10">Phone No*</div>   
                                        <input type="text" name="phonename" id="phoneid" placeholder="Your Phone No" class="outlinenone width200 borderbottom borderstyle"><br>
                                        <small id="phoneid_error">Please fill this field!</small>
                                    </div>
                                </div>
                                <div class="displayflex justifycenter">
                                    <input type="submit" name="createsubmit" id="createformsubmit" class="login padding10 margin10 cursorpointer bluecolor" value="CREATE">
                                </div>
                            </form>
                            <!--- <cfif structKeyExists(form,'createFormSubmit')>
                                <cfinvoke method="" component="components/component">
                                <cfset structClear(form)>
                            </cfif> --->
                        </div>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>