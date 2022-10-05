<html>
    <head>
        <link rel="stylesheet" href="lib/bootstrap-4.2.1-dist/css/bootstrap.min.css">
    </head>
    <body>
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
      
                    <?php
                        require_once 'includes/funcoes.php';
                        require_once 'core/conexao_mysql.php';
                        require_once 'core/sql.php';
                        require_once 'core/mysql.php';

                        if(isset($_SESSION['login'])){
                            $id = (int) $_SESSION['login']['usuario']['id'];

                            $criterio = [
                                ['id', '=', $id]
                            ];
                            $retorno = buscar(
                                'usuario',
                                ['id', 'username', 'email'],
                                $criterio 
                            );

                            $entidade = $retorno[0];
                        }
                    ?>
                    <div class="main">
                     <div class="col-md-6 col-sm-12">
                        <div class="login-form">
                           <h2>Cadastro</h2>
                           <form  method="post" action="core/repositorios/usuario_repositorio.php">
                           <input  type="hidden" name="acao"
                                value="<?php echo empty($id) ? 'insert' : 'update' ?>">
                           <input type="hidden" name="id"
                                value="<?php echo $entidade['id'] ?? '' ?>">
                           <div class="form-group">
                               <label for="username">Username</label>
                               <input class="form-control" type="text"
                                require="required" id="username" name="username"
                                value="<?php echo $entidade['username'] ?? ''?>">
                           </div>
                           <div class="form-group">
                              <label for="email">E-mail</label>
                              <input  class="form-control" type="text"
                                require="required" id="email" name="email"
                                value="<?php echo $entidade['email'] ?? '' ?>">
                           </div>
                        
                           <?php if(!isset($_SESSION['login'])): ?>
                        <div class="form-group">
                            <label for="senha">Senha</label>
                            <input  class="form-control" type="password"
                                require="required" id="senha" name="senha">
                        </div>
                        
                        <?php endif; ?>
                        <button type="submit" class="btn btn-black">Cadastrar</button>
                        Já tem uma conta? <a href="login.php" style="text-decoration: underline; color: black">Entrar</a>
                    </form>
                </div>
            </div>
        </div>
        <script src="lib/bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
    </body>
</html>