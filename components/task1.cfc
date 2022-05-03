    <cffunction name="display" access="remote"> 
        <cfargument name="Position" required="true">
        <cfargument name="Relocate" required="true">
        <cfargument name="join_date" required="true">
        <cfargument name="wurl" required="true">
        <cfargument name="Name" required="true">
        <cfargument name="Lname" required="true">
        <cfargument name="EMail" required="true">
        <cfargument name="Phone" required="true">

        <cffile action="upload"
        fileField="doc_file"
        nameconflict="overwrite"
        destination="C:\coldFusion2021\cfusion\wwwroot\task23\upload\">
        <cfset imageValue = #cffile.serverFile#>
        <cfset salary=#arguments.dollar# & '.' & #arguments.cents#>
        <cfquery name="insert" datasource="newtech" result="res">    
        INSERT INTO sakila.emp_details(position,relocate,join_date,website,resume,salary,first_name,last_name,email,phone)
            VALUES(
               <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.Position#">,
               <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.Relocate#">,
               <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#arguments.join_date#">,
               <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.wurl#">,
               <cfqueryparam  CFSQLType="cf_sql_varchar" value="#imageValue#">,
               <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#salary#">,
               <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.Name#">,
               <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.Lname#">,
               <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#arguments.EMail#">,
               <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#arguments.Phone#">            
               )
       </cfquery>            
       <cflocation  url="../index.cfm?Message=1">           
    </cffunction>




