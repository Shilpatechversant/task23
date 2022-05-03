    <cffunction name="display" access="remote"> 
            <cfset thisDir=expandPath("./upload")>
            <cfif len(trim(arguments.doc_file))>
            <!--- Use the cffile tag to upload the image file. --->
            <cffile action="upload" fileField="arguments.doc_file" destination="#thisDir#" result="fileUpload" nameconflict="makeunique">
            <cfset file_name=#fileUpload.serverfile#>
            <cfelse>
            <cfset file_name="">
            </cfif>
            <cfset salary=#arguments.dollar# & '.' & #arguments.cents#>          
            <cfargument name="Position">
            <cfargument name="Relocate" >
            <cfargument name="join_date" >
            <cfargument name="wurl" >
            <cfargument name="Name" >
            <cfargument name="Lname">
            <cfargument name="EMail" >
            <cfargument name="Phone" >
            <cfquery name="insert" datasource="newtech" result="res">    
            INSERT INTO sakila.emp_details(position,relocate,join_date,website,resume,salary,first_name,last_name,email,phone)
            VALUES ('#Position#', '#Relocate#', '#join_date#','#wurl#','#file_name#','#salary#',
            '#Name#','#Lname#','#EMail#','#Phone#')
            </cfquery>
            <cflocation  url="index.cfm?Message=1">           
    </cffunction>




