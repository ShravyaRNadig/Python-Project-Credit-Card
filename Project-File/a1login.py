#!C:\Users\DELL-LAPTOP\AppData\Local\Programs\Python\Python37\python
import cgi
import mysql.connector
print("Content-type: text/html")
print("")


form=cgi.FieldStorage()

e=form.getvalue("username");

p=form.getvalue("password");
if e=="attack" and p=="attack":
	redirectURL = "a1home.html"
	print('    <meta http-equiv="refresh" content="0;url='+str(redirectURL)+'" />') 
   
else:
   print("<script>alert('Username or Password Incoorect')</script>");
   redirectURL = "http://localhost/frontend/a1login.html"
   print('    <meta http-equiv="refresh" content="0;url='+str(redirectURL)+'" />') 
