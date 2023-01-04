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
    </cffunction>
    <cffunction name="checkFordata" access="remote">
        <cfargument name="fieldPswd" default="#form.password#">
        <cfargument name="fieldUname" default="#form.username#">
        <cfif structKeyExists(form,'formsubmit')>
            <cfquery name="infoCheck">
                SELECT count(*) records
                FROM registerdata
                where Username = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldUname#">
                and Userpassword = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldPswd#">
            </cfquery>
            <cfif infoCheck.records == 1>
                <cfset session.flag = 1>
                <cflocation url="view.cfm" addtoken="no">
            <cfelse>
                <cflocation url="login.cfm" addtoken="no">
                <cfset structClear(session)>
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>