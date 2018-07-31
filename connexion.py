import pyodbc
server = "simplon.database.windows.net"
database = "chef"
username = "Coco"
password = "Corentin1992@"
driver = "{ODBC Driver 13 for SQL Server}"
cnxn = pyodbc.connect('DRIVER='+driver+';SERVER='+server+';PORT=1433;DATABASE='+database+';UID='+username+';PWD='+ password)
cursor = cnxn.cursor()
cursor.execute("SELECT * FROM dbo.pays")
row = cursor.fetchone()
while row:
    print (str(row[0]) + " " + str(row[1]))
    row = cursor.fetchone()