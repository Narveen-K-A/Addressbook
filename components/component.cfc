<cfcomponent>
    <cffunction name="getRegisterdata" access="remote">
        <cfargument name="fieldFname" type="any" default="#form.fullname#">
        <cfargument name="fieldMailid" type="any" default="#form.emailid#">
        <cfargument name="fieldUname" type="any" default="#form.username#">
        <cfargument name="fieldPswd" type="any" default="#form.password#">
        <cfargument name="fieldCpswd" type="any" default="#form.cpassword#">
        <cfquery name="datacollection">
            INSERT INTO registerdata VALUES(<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldFname#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldMailid#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldUname#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldPswd#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldCpswd#">)
        </cfquery>
        <cflocation url="login.cfm">
    </cffunction>
    <cffunction name="checkFordata" access="remote">
        <cfargument name="fieldPswd" default="#form.password#">
        <cfargument name="fieldUname" default="#form.username#">
        <cfif structKeyExists(form,'formsubmit')>
            <cfquery name="infoCheck">
                SELECT Firstname
                FROM registerdata
                WHERE Username = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldUname#">
                AND Userpassword = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldPswd#">
            </cfquery>
            <cfset session.userInfo=infoCheck.Firstname>
            <cfif infoCheck.recordCount>
                <cfset session.flag = 1>
                <cflocation url="view.cfm" addtoken="no">
            <cfelse>
                <cfreturn "Please enter a valid password!">
            </cfif>
        </cfif>
    </cffunction>
    <cffunction name="getCreateData" access="remote">
        <cfargument name="fieldtitlename" type="any" default="#form.titlename#">
        <cfargument name="fieldfirstname" type="any" default="#form.firstname#">
        <cfargument name="fieldlastname" type="any" default="#form.lastname#">
        <cfargument name="fieldgendername" type="any" default="#form.gendername#">
        <cfargument name="fielddobname" type="any" default="#form.dobname#">
        <cfargument name="fieldaddressname" type="any" default="#form.addressname#">
        <cfargument name="fieldstreetname" type="any" default="#form.streetname#">
        <cfargument name="fieldemailname" type="any" default="#form.emailname#">
        <cfargument name="fieldphonename" type="any" default="#form.phonename#">
        <cfquery name="addresscollection">
            INSERT INTO createdata VALUES(<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldtitlename#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldfirstname#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldlastname#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldgendername#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fielddobname#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldaddressname#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldstreetname#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldemailname#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldphonename#">)
        </cfquery>
        <cflocation url="view.cfm">
    </cffunction>
    <cffunction name="selectData" access="public" returnType="query">
        <cfquery name="datacollection">
            SELECT Title,Firstname,Lastname,Gender,Emailid,Phonenumber FROM createdata
        </cfquery>
        <cfreturn datacollection>
    </cffunction>
</cfcomponent>