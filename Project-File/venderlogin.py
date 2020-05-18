#!C:\Users\DELL-LAPTOP\AppData\Local\Programs\Python\Python37\python
import mysql.connector
import cgi

print("Content-type: text/html")
print("")


form=cgi.FieldStorage()

e=form.getvalue("username");

p=form.getvalue("password");

st="Yes"
flag=0
con = mysql.connector.connect(host = "localhost",
                              user = "root",
                              password="",
                              database = "shravya")
if(con):
        print("Connected")
        c = con.cursor()
        q = "select * from vender where username= %s and password = %s"
        data = (e,p,)
        c.execute(q,data)
        output=c.fetchall()
        #print(output)
        for i in output:
                if(e == i[1] and p == i[3]):
                        flag=1
                         
                else:
                        flag=0
        if(flag == 1):
                redirectURL ="http://localhost/frontend/venderhome.html"
                print('<meta http-equiv="refresh" content="0; url='+str(redirectURL)+'"/>')
        else:
                print("<script>alert('Password or Username is not correct')</script>")
                redirectURL ="http://localhost/frontend/venderlogin.html"
                print('<meta http-equiv="refresh" content="0; url='+str(redirectURL)+'"/>')
           
else:
        print("not connected")
