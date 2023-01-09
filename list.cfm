<html>
    <head>
        <link rel="stylesheet" href="css/styles.css"> 
    </head>
    <body>
        <cfoutput>
            <cfinvoke component="components/component" method="selectData" returnVariable="datacollection">
            <table class="padding10">
                <tr>
                    <th class="padding10"></th>
                    <th class="padding10 bluecolor">NAME</th>
                    <th class="padding10 bluecolor">EMAIL ID</th>
                    <th class="padding10 bluecolor">PHONE NUMBER</th>
                </tr>
                <cfloop query="datacollection">
                    <tr>
                        <td class="padding10"></td>
                        <td class="padding10">#datacollection.Title# #datacollection.Firstname# #datacollection.Lastname#</td>
                        <td class="padding10">#datacollection.Emailid#</td>
                        <td class="padding10">#datacollection.Phonenumber#</td>
                        <td class="padding10"><button class="viewbutton">EDIT</button></td>
                        <td class="padding10"><button class="viewbutton">DELETE</button></td>
                        <td class="padding10"><button class="viewbutton">VIEW</button></td>
                    </tr>
                </cfloop>
            </table>
        </cfoutput>
    </body>
</html>
