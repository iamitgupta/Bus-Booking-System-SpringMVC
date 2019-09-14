<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<title>Login</title>
</head>
<body>
	<!-- <form action="./adminLogin" method="post">
		<label>Admin ID: </label><input type="text" name="adminId">
		 <label>Password:</label>
		 <input type="password" name="passwd"> 
		 <input type="submit"	value="Login">
	</form> -->
	
	              <div class="col-md-4 offset-4 mt-4 card">
                <div class="card-body">
                    <h1 class="h1 text-center">Admin Login</h1>
                    <form action="./adminLogin" method="post"">
                        <label for="username">Admin Id</label>
                            <div class="form-group">
                                <input type="text" class="form-control" name="adminId" required>
                            
                            </div>
                            <label for="password">Password</label>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password"  name="passwd"  required>
                            
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-lg btn-block">login</button>
                            </div>

                    </form>
                </div>

             </div>
	
	
	
	
	
</body>
</html>