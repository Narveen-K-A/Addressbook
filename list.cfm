<html>
    <head>
        <link rel="stylesheet" href="css/styles.css"> 
        <link rel="stylesheet" href="assets/modal.css">
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
                        <td class="padding10 tableborder"><button class="viewbutton">EDIT</button></td>
                        <td class="padding10 tableborder"><button class="viewbutton">DELETE</button></td>
                        <td class="padding10 tableborder"><button onclick="document.getElementById('id02').style.display='block'" class="viewbutton">VIEW</button></td>
                    </tr>
                </cfloop>
            </table>
            <div id="id02" class="w3-modal">
                <div class="w3-modal-content">
                    <div class="w3-container">
                        <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                        <p>Some text. Some text. Some text.</p>
                        <p>Some text. Some text. Some text.</p>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>
