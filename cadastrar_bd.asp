<!-- #include file="./conect.asp"-->
<% 
dim executar, sql,ip, matricula, data
    matricula = request("matricula_aluno")
    ip = request("ip_aluno")
       sql  = "INSERT INTO [mata68_alunos].[dbo].[Registro]  VALUES ('"&ip&"','"&matricula&"',(select CURRENT_TIMESTAMP))"
    set executar = objConn.Execute(sql)
     Response.Write ("<script>alert('Cliente alterado')</script>")
    response.redirect("./index.asp?msg=sucesso")
%>

