<!-- #include file="./conect.asp"-->
<%
    dim SQL, executar, nome_mostrar, quantidade, SQL2, ocultar, digitarNovamente
    
    ocultar = "block"
    digitarNovamente="none"
    matricula_alunos = request("matricula_aluno")
    SQL2= "SELECT count(left(NOME_ALUNOS, charindex(' ', NOME_ALUNOS)-1)) as NOME  FROM [mata68_alunos].[dbo].[Alunos] WHERE MATRICULA_ALUNOS = "&matricula_alunos
    executar= objConn.Execute(SQL2)
    quantidade = executar("NOME")
    IF quantidade > 0 then
        SQL = "SELECT rtrim(left(NOME_ALUNOS, charindex(' ', NOME_ALUNOS)-1)) as NOME  FROM [mata68_alunos].[dbo].[Alunos] WHERE MATRICULA_ALUNOS = "&matricula_alunos&"order by NOME_ALUNOS"
        set pesquisa = objConn.Execute(SQL)
        set nome_mostrar=pesquisa("nome")
        
    ELSE
        nome_mostrar = "Matrícula não encontrada"
        ocultar = "none"
        digitarNovamente="block"
    end IF
    dim iporigem 
    set iporigem = Request.ServerVariables("REMOTE_ADDR")    


%>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>MATA68 - REGISTRO DE PRESENÇA</title>
        <link rel="stylesheet" type="text/css" href="./css/bootstrap3/css/bootstrap.min.css">
        <link rel="stylesheet" href="/css/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="/css/style.css">
        <script src="/js/jquery.js"></script>
        <script type="text/javascript" src="./js/cadastro.js"></script>
    </head>
    <body>
        <div class="div-central">
          <img id="logo-compusoc" class="img-responsive"src="/img/COMPUSOC_LOGO.svg" alt="Logo Compusoc">
        </div>
        <div  class="">
            <form name="envio_presenca" method="post" action="submit">
                <div class="form-group form-login">
                  <label for="exampleInputAmount" id="text-pergunta"  style="display: <%=ocultar%>">O seu primeiro nome é : </label>
                  <div class="input-group">
                    <input type="text" hidden value="<%=iporigem%>" id="ip_aluno">
                    <input type="text" hidden id="exampleInputAmount" name="matricula_aluno" value="<%=matricula_alunos%>">
                    
                    <div class="input-group-addon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></div>
                    <input class="form-control" id="disabledInput" type="text" placeholder="<%response.write (nome_mostrar)%>" disabled>
                  </div>
                  <div class="row text-center" id="div-confirma" style="display: <%=ocultar%>">
                      <div class="col-md-1">
                    </div>
                    <div class=" btn-confirmar">
                    <a href="javascript:validarEnvio(document.envio_presenca);" class="btn btn-primary col-md-4">Sim</a>
                    </div>
                    <div class="col-md-1">
                    </div>
                    <div class=" btn-confirmar">
                    <a href="./index.asp" class="btn btn-danger col-md-4">Não</a>
                    </div>
                </div>
                <div class="col-md-8" style="display:<%=digitarNovamente%>"></div>
                <div class=" btn-error col-md-6" style="display:<%=digitarNovamente%>">
                    <a href="./index.asp" class="btn btn-danger">Digitar novamente</a>
                    </div>
                    
                </div>
                
                
              </form>
        </div>
    </body>
    </html>