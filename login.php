<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="estilo_login.css" rel="stylesheet">
<div class="sidenav">
         <div class="login-main-text">
		 <h1>R&W</h1>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <form method="post" action="core/usuario_repositorio.php">
				   <h2>Login</h2>
                  <div class="form-group">
                     <label>E-mail</label>
                     <input type="text" class="form-control" placeholder="E-mail">
                  </div>
                  <div class="form-group">
                     <label>Senha</label>
                     <input type="password" class="form-control" placeholder="Senha">
                  </div>
                  <button type="submit" class="btn btn-black">Entrar</button>
                  Ainda não tem uma conta? <a href="cadastro.php" style="text-decoration: underline; color: black">Cadastrar</a>
               </form>
            </div>
         </div>
      </div>