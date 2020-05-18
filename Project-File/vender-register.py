#!C:\Users\DELL-LAPTOP\AppData\Local\Programs\Python\Python37\python

import mysql.connector
import cgi
print("content-type:text/html")
print("")
#print("Hello<br>")
f = cgi.FieldStorage()
us=f.getvalue("username")
em=f.getvalue("email")
pa=f.getvalue("password")
pa1=f.getvalue("password2")
ba=f.getvalue("bankname")
branch=f.getvalue("branch")
cn=f.getvalue("cnum")
dob=f.getvalue("dob")
ge=f.getvalue("gender")
n1=f.getvalue("cnum1")
n2=f.getvalue("cnum2")
mon=f.getvalue("month")
year=f.getvalue("year")


#print(us,em,pa,ba,branch,cn,dob,ge,n1,n2,mon,year)
con = mysql.connector.connect(host = "localhost",
                              user = "root",
                              password="",
                              database = "shravya")
if(con):
    print("Connected")
    c1 = con.cursor()
    q1 = "insert into vender(username,email,password,bankname,branch,cnum,dob,gender,cnum1,cnum2,month,year) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    val = (us,em,pa,ba,branch,cn,dob,ge,n1,n2,mon,year)
    c1.execute(q1,val)
    #c1.execute(q1,(us,em,pa,ba,branch,cn,dob,ge,n1,n2,mon,year))
    con.commit()
    print("<script>alert('Inserted')</script>")
    con.close()
    
     
else:
    print("Not connected")
 
