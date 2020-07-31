<!--#include virtual="/inc/conn.asp"-->
<!--此处使用绝对路径包含了Conn文件。可以使用相对路径（include file），位置、文件名自己修改。如不愿包含Conn文件，自己写入数据库连接字符串-->
<%
dim id,sqlStr,hits
id=int(trim(request.querystring("id")))
"获得参数ID。自己改成相应的内容。
sqlStr="update tablename set viewnum = viewnum +1 where id= "&id
"tablename 为指定的数据表的名称，自己改。
"viewnum 为该ID浏览量统计字段，ACC数据库为数字类型，SQL选用合适数据类型。自己改。
"ID 为该ID的ID号，根据自己的情况改成相应的字段名称。
"功能：给该ID的浏览量加1
conn.execute(sqlStr)
"执行操作
viewnum=conn.execute("select viewnum from tablename where id="&id)(0)
"读取该ID内容访问次数
%>
document.write(<%=viewnum%>)
//输出该ID内容访问次数
