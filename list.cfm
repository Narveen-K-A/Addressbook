<html>
    <head>
        <link rel="stylesheet" href="css/styles.css"> 
        <link rel="stylesheet" href="assets/modal.css">
        <script defer src="js/viewmodal.js"></script>
        <script defer src="assets/jquery.js"></script>
        <script defer src="assets/jquery.min.js"></script>
    </head>
    <body>
        <cfoutput>
            <cfinvoke component="components/component" method="selectData" returnVariable="datacollection">
            <table class="bgwhite">
                <tr>
                    <th class="padding10 tableborder"></th>
                    <th class="padding10 bluecolor tableborder">NAME</th>
                    <th class="padding10 bluecolor tableborder">EMAIL ID</th>
                    <th class="padding10 bluecolor tableborder">PHONE NUMBER</th>
                    <th class="padding10 tableborder"></th>
                    <th class="padding10 tableborder"></th>
                    <th class="padding10 tableborder"></th>
                </tr>
                <cfloop query="datacollection">
                    <tr>
                        <td class="padding10 tableborder">
                            <cfset var=datacollection.Gender>
                            <cfif var eq "Female">
                                <img src="assets/female.png" class="icon53">
                            <cfelse>
                                <img src="assets/male.png" class="icon53">
                            </cfif>
                        </td>
                        <td class="padding10 tableborder">#datacollection.Title# #datacollection.Firstname# #datacollection.Lastname#</td>
                        <td class="padding10 tableborder">#datacollection.Emailid#</td>
                        <td class="padding10 tableborder">#datacollection.Phonenumber#</td>
                        <td class="padding10 tableborder"><button onclick="document.getElementById('id02').style.display='block'" class="viewbutton">EDIT</button></td>
                        <cfset local.value=datacollection.Firstname>
                        <td class="padding10 tableborder"><button class="viewbutton"><a class="delete" href="components/component.cfc?method=deletedata&emailid=#datacollection.Emailid#">DELETE</a></button></td>
                        <td class="padding10 tableborder"><button onclick="document.getElementById('id03').style.display='block';openPage(values)" class="viewbutton">VIEW</button></td>
                    </tr>
                </cfloop>
            </table>
            <div id="id02" class="w3-modal">
                <div class="w3-modal-content">
                    <div class="w3-container">
                        <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                        <div class="displayflex lightbluebg">
                            <div class="padding10 margin10 bgwhite">
                                <div class="lightbluebg displayflex justifycenter">
                                    <div class="bluecolor padding10 largefont">EDIT CONTACT</div>
                                </div>
                                <div class="padding10 bluecolor blueborder">Personal Contact</div>
                                <form method="post" name="fromCreate" onsubmit="validatecreateform()">
                                    <div class="displayflex justify">
                                        <div>
                                            <div class="bluecolor padding10">Title</div>
                                                <select name="titlename" id="titleid" class="borderbottom borderstyle">
                                                    <option selected="" ></option>
                                                    <option value="Mr">Mr</option>
                                                    <option value="Mrs">Mrs</option>
                                                    <option value="Ms">Ms</option>
                                                </select><br>
                                                <small id="titleid_error">Please fill this field!</small>
                                            </div>
                                        <div>
                                            <div class="bluecolor padding10">First Name*</div>   
                                            <input type="text" name="firstname" id="firstnameid" placeholder="Your First Name" class="outlinenone width200 borderbottom borderstyle"><br>
                                            <small id="firstnameid_error">Please fill this field!</small>
                                        </div>
                                        <div>
                                            <div class="bluecolor padding10">Last Name*</div>   
                                            <input type="text" name="lastname" id="lastnameid" placeholder="Your Last Name" class="outlinenone width200 borderbottom borderstyle"><br>
                                            <small id="lastnameid_error">Please fill this field!</small>
                                        </div>
                                    </div>
                                    <div class="displayflex justify">
                                        <div>
                                            <div class="bluecolor padding10">Gender*</div>
                                            <select name="gendername" id="genderid" class="borderbottom borderstyle outlinenone width200">
                                                <option selected=""></option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </select><br>
                                            <small id="genderid_error">Please fill this field!</small>
                                        </div>
                                        <div>
                                            <div class="bluecolor padding10">Date Of Birth*</div>   
                                            <input type="date" name="dobname" id="dobid" class="outlinenone width200 borderbottom borderstyle"><br>
                                            <small id="dobid_error">Please fill this field!</small>
                                        </div>
                                    </div>
                                    <div class="displayflex justify">
                                        <div>
                                            <div class="bluecolor padding10">Upload Photo*</div>
                                            <input type="file" name="filename" id="fileid" class="outlinenone width200"><br>
                                            <small id="fileid_error">Please fill this field!</small>
                                        </div>
                                    </div>
                                    <div class="padding10 bluecolor blueborder">Contact Details</div>
                                    <div class="displayflex justify">
                                        <div>
                                            <div class="bluecolor padding10">Address*</div>
                                            <input type="text" name="addressname" id="addressid" placeholder="Your Address" class="outlinenone width200 borderbottom borderstyle"><br>
                                            <small id="addressid_error">Please fill this field!</small>
                                        </div>
                                        <div>
                                            <div class="bluecolor padding10">Street*</div>   
                                            <input type="text" name="streetname" id="streetid" placeholder="Your Street Name" class="outlinenone width200 borderbottom borderstyle"><br>
                                            <small id="streetid_error">Please fill this field!</small>
                                        </div>
                                    </div>
                                    <div class="displayflex justify">
                                        <div>
                                            <div class="bluecolor padding10">Email Id*</div>
                                            <input type="text" name="emailname" id="emailid" placeholder="Your Email Address" class="outlinenone width200 borderbottom borderstyle"><br>
                                            <small id="emailid_error">Please fill this field!</small>
                                        </div>
                                        <div>
                                            <div class="bluecolor padding10">Phone No*</div>   
                                            <input type="text" name="phonename" id="phoneid" placeholder="Your Phone No" class="outlinenone width200 borderbottom borderstyle"><br>
                                            <small id="phoneid_error">Please fill this field!</small>
                                        </div>
                                    </div>
                                    <div class="displayflex justifycenter">
                                        <input type="submit" name="editsubmit" id="editformsubmit" class="login padding10 margin10 cursorpointer bluecolor" value="EDIT">
                                    </div>
                                </form>
                                <!--- <cfif structKeyExists(form,'editsubmit')>
                                    <cfinvoke method="getEditData" component="components/component">
                                    <cfset structClear(form)>
                                </cfif> --->
                            </div>
                            <div class="displayflex justifycenter align width200 margin10">
                                <img src="assets/account.png" class="userwidth">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="id03" class="w3-modal">
                <div class="w3-modal-content">
                    <div class="w3-container">
                        <span onclick="document.getElementById('id03').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                        <div class="displayflex lightbluebg">
                            <div class="padding10 margin10 bgwhite">
                                <div class="lightbluebg displayflex justifycenter">
                                    <div class="bluecolor padding10 largefont">CONTACT DETAILS</div>
                                </div>
                                <div class="name bluecolor">
                                    Name:<p id="viewtitle"></p>
                                        <p id="viewfname"></p>
                                        <p id="viewlname"></p>
                                </div>
                                <div class="name bluecolor">
                                    Gender:<p id="viewgender"></p>
                                </div>
                                <div class="name bluecolor">
                                    Date of birth:<p id="viewdob"></p>
                                </div>
                                <div class="name bluecolor">
                                    Address:<p id="viewaddress"></p>
                                            <p id="viewstreet"></p>
                                </div>
                                <div class="name bluecolor">
                                    Email ID:<p id="viewmail"></p>
                                </div>
                                <div class="name bluecolor">
                                    Phone:<p id="viewphone"></p>
                                </div>
                                <div class="displayflex justifycenter">
                                    <a href="view.cfm">
                                        <input type="submit" name="createsubmit" id="createformsubmit" class="login padding10 margin10 cursorpointer bluecolor" value="CLOSE">
                                    </a>
                                </div>
                            </div>
                            <div class="displayflex justifycenter align width200 margin10">
                                <img src="assets/account.png" class="userwidth">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>
