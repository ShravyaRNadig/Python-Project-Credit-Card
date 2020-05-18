#!C:\Users\DELL-LAPTOP\AppData\Local\Programs\Python\Python37\python
import mysql.connector
import cgi
print("content-type:text/html")
print("")
#print("Hello<br>")
f = cgi.FieldStorage()
us=f.getvalue("username")
ba=f.getvalue("bankname")
cardno=f.getvalue("cardnum")
depo=f.getvalue("deposite")
pro=f.getvalue("product")
amt=f.getvalue("amount")
flag=0
con = mysql.connector.connect(host = "localhost",
                              user = "root",
                              password="",
                              database = "shravya")
if(con):
        print("Connected")
        c = con.cursor()
        q = "select * from depo where username= %s and cardno = %s"
        data = (us,cardno,)
        c.execute(q,data)
        output=c.fetchall()
        #print(output)
        for i in output:
                if(us == i[0] and ba == i[2] and i[5] == "1"):
                        flag=1
                elif(us == i[0] and ba == i[2] and i[5] == "0"):
                        flag=2
                         
                else:
                        flag=0
        if(flag == 1):
                redirectURL ="http://localhost/frontend/viewdeposit.py"
                print('<meta http-equiv="refresh" content="0; url='+str(redirectURL)+'"/>')

        elif(flag == 2):
                print("<script>alert('Transaction On Process')</script>")
                redirectURL ="http://localhost/frontend/viewdeposit.py"
                print('<meta http-equiv="refresh" content="0; url='+str(redirectURL)+'"/>')
                
        else:
                print("<script>alert('Transaction Failed')</script>")
                redirectURL ="http://localhost/frontend/userhome.html"
                print('<meta http-equiv="refresh" content="0; url='+str(redirectURL)+'"/>')
           
else:
        print("not connected")
