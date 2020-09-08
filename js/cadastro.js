function removeSeparador(obj){
  var id = obj.id;
  document.getElementById(id).value = obj.value.replace(/[^\d]+/g,'');
}


function confirmarAluno(campo){
	var matricula_aluno = campo.matricula_aluno.value
	if(matricula_aluno===""){
		alert("Por favor, digite sua matrícula")
	}
	
	else{
		campo.action = "./confirmar_identidade.asp?matricula_aluno="+matricula_aluno;
		campo.submit();
	}
	
	
	
}

function validarEnvio(f){
	var ip_aluno =  f.ip_aluno.value;
	var matricula_aluno = f.matricula_aluno.value;
	f.action = "./cadastrar_bd.asp?ip_aluno="+ip_aluno;
	f.submit();
		
}

function voltar(){
	action = "./index.asp"
}