    <html>
    <head>
        <title>Employment Application</title>
        <link rel="stylesheet" href = "css/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <body data-spy="scroll"  class="m-container">
           <div class="col-md-12 col-md-offset-4">
              <cfform method='post' id="myform" name = "myForm"  action="" onsubmit = "return(validate());">
                   <h3 style="align:center;">Employment Application</h3>
                   <h6> Infinity Box Inc. </h6>
                   <hr> 
                   <cfparam name='Message' default = "value" >
                    <cfif #Message# eq '1'>
                        <div class="alert alert-success col-lg-6 offset-lg-3" role="alert">
                          Data Saved Successfully
                      </div>
                  </cfif>

                  <div class="form-group">
                    <label for="exampleFormControlSelect1">Which position are you applying for? *</label>
                    <cfselect  id="position" name="Position" class="form-control">
                      <option value="ID">Interface Designer</option>
                      <option value="SE">Software Engineer</option>
                      <option value="SA">System Administrator</option>
                      <option value="OM">office Manager</option>
                  </cfselect>
              </div>

              <div class="form-group">
                <label class="form-check-label" for="exampleRadios1">
                    Are You Willing to Relocate?
                </label>
                <div class="form-check">
                 Yes
                    <cfinput class="form-check-input" type="radio" name="Relocate" id="Relocate"  value="option1" checked>
                 No <cfinput class="form-check-input" type="radio" name="Relocate" id="Relocate"  value="option2">
             </div>
         </div>
         <div class="form-group">
            <label for="exampleFormControlInput1">When Can You start?</label>
           <cfinput type="date" class="form-control" name="join_date">
        </div>


        <div class="form-group">
            <label for="exampleFormControlTextarea1">Portfolio Web Site</label>
         <cfinput type="text" name="wurl" class="form-control" placeholder="http://">
        </div>

        <div class="form-group">
            <label for="exampleFormControlFile1">Attach a Copy of Your Resume</label>
            <cfinput type='file' name='doc_file' accept='.pdf,.doc' aria-describedby="emailHelp">
    <div class='pt-2'>
  <small id="emailHelp" class="form-text text-muted">Word or PDF Documents Only</small>
            <p>Word or PDF Documents Only </p>
        </div>
        <div class="row">  
         <label for="exampleFormControlFile1">Salary Requirements.</label> 
         <div class="col-md-12">    
          <div class="col-md-6">                 
            <small  class="form-text text-muted">Dollars</small>
          <cfinput type="text"  name="dollar" class="form-control">
        </div>
        <div class="col-md-3">
            <small  class="form-text text-muted">Cents</small>
        <cfinput type="text" name="cents" class="form-control" >
        </div>
    </div>
</div>

<div class="row">   
    <label for="exampleFormControlFile1">Your Contact Information</label> 
    <div class="col-md-12">    

        <div class="col-md-4">
           <small  class="form-text text-muted">First Name</small>
         <cfinput type="text"  name="Name" class="form-control">
       </div>.
       <div class="col-md-4">
           <small  class="form-text text-muted">Last Name</small>
        <cfinput type="text" name="Lname" class="form-control" >
       </div>
   </div>
</div>



<div class="form-group">
    <label for="exampleFormControlInput1">Email address</label>
   <cfinput type="email" name="EMail" id="EMail" class="form-control"  placeholder="name@example.com">
</div>      

<div class="form-group pt-3 required">
    <label for="exampleFormControlInput1">Phone </label>
    <cfinput type="text" name="Phone" id="Phone" class="form-control">
</div>

<div class="col-md-4">
  <input type = "submit" class="btn btn-sm btn-primary" value = "Submit" />
</div>
</cfform>
</div>
</div>
</body>
</html>

<script type = "text/javascript">
   <!--
          // Form validation code will come here.
          function validate() {

            var relocate=document.getElementById('Relocate').checked;
            var email=document.getElementById('EMail').value;
            var phone=document.getElementById('Phone').value;                  
            var p_length=phone.length;
            var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/ ;
            if( document.myForm.position.value == "" ) {
                alert( "Please select atleast one position !" );
                document.myForm.Position.focus() ;
                event.preventDefault();
                return false;
            }

            if(relocate==false)
            { alert("Select yes or no !!");
              event.preventDefault();
              return false;
            }

          if( document.myForm.Name.value == "" ) {
            alert( "Please provide your name!" );
            document.myForm.Name.focus() ;
            event.preventDefault();
            return false;
           }
        if( document.myForm.Lname.value == "" ) {
            alert( "Please provide your name!" );
            document.myForm.Name.focus() ;
            event.preventDefault();
            return false;
        }
        if( document.myForm.EMail.value == "" ) {
            alert( "Please provide your Email!" );
            document.myForm.EMail.focus() ;
            event.preventDefault();
            return false;
        }

        if(!(email.match(mailformat)))
        {  alert("Email is not in correct format");
           event.preventDefault();
           return false;
       }

       if( document.myForm.join_date.value == "" ) {       
         alert( "Please provide yourJoin date!" );
         document.myForm.join_date.focus() ;
         event.preventDefault();
         return false;
     }
       if(isNaN(phone) ==true)
         {alert("Phone should not be in string format");
         event.preventDefault();
         return false; 
        }   
     if(p_length!=10)
       {alert("Phone length should be equal to 10");
       event.preventDefault();
       return false;
       }  

  return( true );
}
       //-->
   </script>
   <cfif structKeyExists(form, "form_submit")>
             <cfset thisDir = expandPath("./uploads")>
              <cfif len(trim(form.doc_file)) >
                      <!--- Use the cffile tag to upload the image file. --->
                              <cffile action="upload" fileField="form.doc_file"  destination="#thisDir#" result="fileUpload"
                                nameconflict="overwrite">

                                <cfset file_name=#fileupload.serverfile# >
                                <cfelse>
                                <cfset file_name="" >
                                </cfif>
                                <cfset salary=#form.dollar# & '.' & #form.cents#>
                                <cfinvoke component="components.task1" method="insertdetails" returnvariable="res">
<cfinvokeargument name="position" value="#Form.Position#"> 
<cfinvokeargument name="relocate" value="#Form.Relocate#">
<cfinvokeargument name="join_date" value="#Form.join_date#">
<cfinvokeargument name="wurl" value="#Form.wurl#">
<cfinvokeargument name="file_name" value="#file_name#">
<cfinvokeargument name="salary" value="#salary#">
<cfinvokeargument name="fname" value="#form.Name#">
<cfinvokeargument name="lname" value="#form.Lname#">
<cfinvokeargument name="email" value="#form.EMail#">
<cfinvokeargument name="phone" value="#form.Phone#">
</cfinvoke>  
 </cfif>
