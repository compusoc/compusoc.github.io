<!-- #include file="./conect.asp"-->
<%
  
    dim iporigem, msg
    set iporigem = Request.ServerVariables("REMOTE_ADDR")

    if request("msg") = "sucesso" then
        Response.write("<script> alert('Presença registrada com sucesso!')</script>")
         response.redirect("./index.asp")
        END IF
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
            <form name="envio_presenca" method="post">
                <div class="form-group form-login">
                  <label class="sr-only" for="exampleInputAmount">Matrícula</label>
                  <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></div>
                    <input type="text" class="form-control" id="exampleInputAmount" placeholder="Matrícula" name="matricula_aluno">
                  </div>
                  <div class="col-md-4 text-center" id="div-btn">
                    <a href="javascript:confirmarAluno(document.envio_presenca);" class="btn btn-primary btn-registrar">Registrar Presença</a>
                </div>
                    
                </div>
                
                
              </form>
        </div>
    </body>
    </html>