<cffunction name="view" access="remote" returnType="struct" returnFormat="json"> 
    <cfargument name="Email" type="string" required="yes">
    <cfquery name="selectQuery">
        SELECT *
        FROM registerdata
        WHERE FirstName = <cfqueryparam value="#arguments.Email#" cfsqltype="cf_sql_varchar">
    </cfquery>
    <cfdump var="#Email#">       
    <cfset local.viewQuery=structNew()>
    <cfset local.viewQuery.Title = selectQuery.Title> 
    <cfset local.viewQuery.Firstname = selectQuery.Firstname>
    <cfset local.viewQuery.Lastname = selectQuery.Lastname>
    <cfset local.viewQuery.Gender = selectQuery.Gender>
    <cfset local.viewQuery.Dateofbirth = selectQuery.Dateofbirth>
    <cfset local.viewQuery.Addressofuser = selectQuery.Addressofuser>
    <cfset local.viewQuery.Street = selectQuery.Street>
    <cfset local.viewQuery.Emailid = selectQuery.Emailid>        
    <cfset local.viewQuery.Phonenumber = selectQuery.Phonenumber>       
    <cfreturn local.viewQuery>
</cffunction>