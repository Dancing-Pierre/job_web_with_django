import pymysql

pymysql.install_as_MySQLdb()

conn = pymysql.connect(host="127.0.0.1", port=3306, user="root", password="123456", db="job_echarts", charset="utf8")
