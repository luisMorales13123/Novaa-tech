<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
		
		<!-- Font awesome-->
		<script src="https://kit.fontawesome.com/7b89561937.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="login.css">	
</head>
<body>
	<section class="back">
		<div class="containerFrom">
			<form action="validar.php" method="post">
				<h1>Ingreso</h1> 
				
				<div class="inputs">
                    <input type="text" placeholder="ingrese su nombre" name="Correo" autofocus>
					<i class="fa-regular fa-envelope"></i>
				</div>
				
				<div class="inputs">
					 <input type="password" placeholder="ingrese su contraseña" name="Clave">
					<i class="fa-solid fa-lock"></i>
				</div>
				
				<p><a href="#">¿No tienes una cuenta?</a></p>
				
				<input type="submit" value="Ingresar" class="boton">
				
			</form>
		</div>
	</section>
</body>
</html>