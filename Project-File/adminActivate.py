#!C:\Users\DELL-LAPTOP\AppData\Local\Programs\Python\Python37\python
import mysql.connector
import secrets
import cgi
print("content-type:text/html")
print("")
#print("Hello<br>")
f = cgi.FieldStorage()

upem=f.getvalue("txnm")
val3 =f.getvalue("val")
key4 = secrets.token_urlsafe(20)
key3 = secrets.token_urlsafe(20)

print(val3)
print(upem)
print(key4)
print(key3)
#act3 = "1"
if val3 == "1" :
    act3 = "0"
else:
       
    act3 = "1"

print(act3)

#print(us,em,pa,ba,branch,cn,dob,ge,n1,n2,mon,year)
con = mysql.connector.connect(host = "localhost",
                              user = "root",
                              password="",
                              database = "shravya")
if(con):
    print("Connected")
    c1 = con.cursor()
    q2 = "UPDATE user set Active =%s , privateKey = %s , key2 = %s where email = %s"
    
    val2 = (act3,key3,key4, upem)
    c1.execute(q2,val2)
    #c1.execute(q2,(act,key,key2,upem))
    con.commit()
    print("<script>alert('updated')</script>")
    redirectURL = "http://localhost/frontend/viewuser.py"
    print('    <meta http-equiv="refresh" content="0;url='+str(redirectURL)+'" />') 

    con.close()
    
     
else:
    print("Not connected")
 
