

<cfcomponent displayname="task1" hint="Data from user side">

    <cffunction  name="createContact" access="remote">
    
        <cfargument name="fname" type="string"/>
        <cfargument name="lname" type="string"/>
        <cfargument name="gender" type="string"/>
        <cfargument name="dob" type="string"/>
        <cfargument name="address" type="string"/>
        <cfargument name="street" type="string"/>
        <cfargument name="email" type="string"/>
       

        <cfif form.file != "">
            <cffile action="upload"
                fileField="file"
                destination="F:\ColdFusion2021\cfusion\wwwroot\phonebook\assets\userImage"
                nameconflict="makeunique"
                result="img">
            <cfset img = "assets/userImage/#img.clientFile#">
        <cfelse>
            <cfset img = "">
        </cfif>
        <cfquery datasource="coldfusion" result="result">
                INSERT INTO contact_book_user (user_id, title, fname, lname, gender, dob, image, address, street, email, phone) VALUES (
                    <cfqueryparam value="#Session.userId#" cfsqltype="CF_SQL_INTEGER">,          
                    <cfqueryparam value="#img#" cfsqltype="cf_sql_varchar">,
               
        </cfquery>

    </cffunction>