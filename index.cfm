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
   <form id="myform" name = "myForm" method="post" action="" onsubmit = "return(validate());">
   <h4 style="align:center;">Employment Application</h4>
   <hr> 
  <div class="form-group">
    <label for="exampleFormControlSelect1">Which position are you applying for? *</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>Interface Designer</option>
      <option>Software Engineer</option>
      <option>System Administrator</option>
      <option>office Manager</option>
    </select>
  </div>

 <div class="form-group">
        <label class="form-check-label" for="exampleRadios1">
        Are You Willing to Relocate?
  </label>
   <div class="form-check">
     Yes
  <input class="form-check-input" type="radio" name="relocate" id="exampleRadios1" value="option1" checked>
  No <input class="form-check-input" type="radio" name="relocate" id="exampleRadios1" value="option2">
</div>
</div>
    <div class="form-group">
    <label for="exampleFormControlInput1">When Can You start?</label>
    <input type="date" class="form-control" name="join_date">
  </div>


  <div class="form-group">
    <label for="exampleFormControlTextarea1">Portfolio Web Site</label>
   <input type="text" name="wurl" class="form-control" placeholder="webiste Url">
  </div>

    <div class="form-group">
    <label for="exampleFormControlFile1">Attach a Copy of Your Resume</label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1">
    <p>Word or PDF Documents Only </p>
  </div>
   
  
         <div class="col-md-12">        
              <div class="col-md-6">
                   <label for="exampleFormControlFile1">Salary Requirements</label>
                   <input type="text"  name="dolars" class="form-control" placeholder="Dollars">
             </div>
             <div class="col-md-3">
                  <label for="exampleFormControlFile1"> &nbsp; </label>
             <input type="text" name="cents" class="form-control" placeholder="cents">
             </div>
        </div>
 


     
     <div class="col-md-12">    
    <div class="col-md-4">
    <label>First Name</label>
      <input type="text"  name="Name" class="form-control" placeholder="First Name">
      </div>.
     <div class="col-md-4">
         <label>Last Name</label>
      <input type="text" name="Lname" class="form-control" placeholder="Last Name">
    </div>
    </div>


  
    <div class="form-group">
    <label for="exampleFormControlInput1">Email address</label>
    <input type="email" name="Email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
  </div>

      <div class="col-md-12">    
    <div class="col-md-4">
    <label>First Name</label>
      <input type="text"  name="Name" class="form-control" placeholder="First Name">
      </div>.
     <div class="col-md-4">
         <label>Last Name</label>
      <input type="text" name="Lname" class="form-control" placeholder="Last Name">
    </div>
    </div>

        <div class="form-group">
    <label for="exampleFormControlInput1">Phone <p style="color:red;">*</p></label>
    <input type="email" name="Phone" class="form-control"  >
  </div>

       <div class="col-md-4">
  <input type = "submit" class="btn btn-sm btn-primary" value = "Submit" />
  </div>
</form>
</div>
</div>



   </body>
</html>

<script type = "text/javascript">
   <!--
      // Form validation code will come here.
      function validate() {
       
         if( document.myForm.Name.value == "" ) {
            alert( "Please provide your name!" );
            document.myForm.Name.focus() ;
            return false;
         }
         if( document.myForm.Lname.value == "" ) {
            alert( "Please provide your name!" );
            document.myForm.Name.focus() ;
            return false;
         }
         if( document.myForm.EMail.value == "" ) {
            alert( "Please provide your Email!" );
            document.myForm.EMail.focus() ;
            return false;
         }
             if( document.myForm.EMail.value != "" ) {
                  var x=document.myform.email.value;  
                  var atposition=x.indexOf("@");  
                  var dotposition=x.lastIndexOf(".");  
                  if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
                    alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
                   document.myForm.EMail.focus() ;
                 return false; 
         }
             }
         if( document.myForm.join_date.value == "" ) {
             alert("dfdfg");
            alert( "Please provide your Email!" );
            document.myForm.join_date.focus() ;
            return false;
         }       

       




 
 

   
         return( true );
      }
   //-->
</script>
    

  
      <cfif structKeyExists(form, "form_submit")>
        <cfinvoke component="components.task1"  method="createContact" returnvariable="process">
        <cfoutput>  
         Data Inserted Successfully
        </cfoutput>
    </cfif>
                  