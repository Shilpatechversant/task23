    <html>
        <head>
            <title>Employment Application</title>
            <link rel="stylesheet" href="css/style.css">
            <script src="custom_js.js"></script>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        </head>  
        <body data-spy="scroll" class="m-container">
            <div class="col-md-12 col-md-offset-4">
                <form method='post' action="components/task1.cfc?method=display" name="myForm" enctype='multipart/form-data' onsubmit="return(validate());">
                    <h3>Employment Application</h3>
                    <h6> Infinity Box Inc. </h6>
                    <hr>
                    <cfparam name='Message' default="value">
                    <cfif #Message# eq '1'>
                        <div class="alert alert-success col-lg-6 offset-lg-3" role="alert"> Data Saved Successfully </div>
                    </cfif>
                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Which position are you applying for? *</label>
                        <select id="position" name="Position" class="form-control">
                            <option value="ID">Interface Designer</option>
                            <option value="SE">Software Engineer</option>
                            <option value="SA">System Administrator</option>
                            <option value="OM">office Manager</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-check-label" for="exampleRadios1"> Are You Willing to Relocate? </label>
                        <div class="form-check"> Yes <input class="form-check-input" type="radio" name="Relocate" id="Relocate" value="option1" checked> No <input class="form-check-input" type="radio" name="Relocate" id="Relocate" value="option2">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">When Can You start?</label>
                        <input type='date' class='form-control' name='join_date' id='join_date'>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Portfolio Web Site</label>
                        <input type="text" name="wurl" class="form-control" placeholder="http://">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlFile1">Attach a Copy of Your Resume</label>
                        <input type='file' name='doc_file' accept='.pdf,.doc' aria-describedby="emailHelp">
                            <div class='pt-2'>
                                <small id="emailHelp" class="form-text text-muted">Word or PDF Documents Only</small>
                                <p>Word or PDF Documents Only </p>
                            </div>
                   </div>        
                        <div class="row">
                            <label for="exampleFormControlFile1">Salary Requirements.</label>
                                <div class="col-md-12">
                                    <div class="col-md-6">
                                        <small class="form-text text-muted">Dollars</small>
                                        <input type="text" name="dollar" class="form-control" placeholder="$">
                                    </div>
                                    <div class="col-md-3">
                                        <small class="form-text text-muted">Cents</small>
                                        <input type="text" name="cents" class="form-control">
                                    </div>
                                </div>
                        </div>
                                <div class="row">
                                    <label for="exampleFormControlFile1">Your Contact Information *</label>
                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                            <small class="form-text text-muted">First Name</small>
                                            <input type="text" name="Name" class="form-control">
                                        </div>. <div class="col-md-4">
                                            <small class="form-text text-muted">Last Name</small>
                                            <input type="text" name="Lname" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlInput1">Email address *</label>
                                    <input type="email" name="EMail" id="EMail" class="form-control" placeholder="name@example.com">
                                </div>
                                <div class="form-group pt-3 required">
                                    <label for="exampleFormControlInput1">Phone *</label>
                                    <input type="text" name="Phone" id="Phone" class="form-control">
                                </div>
                                <div class="col-md-4">
                                    <input type="submit" name="Submit" value="Submit" class="btn btn-success">
                                </div>
                </form>
            </div>          
        </body>
    </html>