<cfcomponent> 
    <cffunction name="insertdetails" access="remote"> 
<cfquery name="insert" datasource="newtech" result="res">    
INSERT INTO sakila.emp_details(position,relocate,join_date,website,resume,salary,first_name,last_name,email,phone)
VALUES ('#position#', '#relocate#', '#join_date#','#wurl#','#file_name#','#salary#',
'#fname#','#lname#','#email#','#phone#') 
</cfquery> 
<cfdump var=#res#>
<cflocation  url="index.cfm?Message=1">
    </cffunction> 
</cfcomponent>

