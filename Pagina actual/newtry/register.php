<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registro</title> 
	<link rel="stylesheet" href="css/register.css">
	<!--Fontawesome-->
	<script src="https://kit.fontawesome.com/7b89561937.js" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10">
</head>
<body>
	<section>
    <form method="post" action="register.php" class="formulario" id="formulario">
			<h1>Registrate</h1>
			<div class="Nombres">
				<div class="inContainer">
					<input type="text" placeholder="Primer nombre" autofocus name="pnombre" id="nombre">
					<i class="fa-regular fa-face-smile"></i>
				</div>
				
				<div class="inContainer">
					<input type="text" placeholder="Segundo nombre" name="snombre" id="nombre">
					<i class="fa-regular fa-face-smile SNI"></i>
				</div>
			</div>
			
			<div class="Apellidos">
				<div class="inContainer">
					<input type="text" placeholder="Primer apellido" name="apellido" id="Apellido">
					<i class="fa-regular fa-face-smile"></i>
				</div>
				
				<div class="inContainer">
					<input type="text" placeholder="Segundo apellido" name="sapellido" id="Apellido">
					<i class="fa-regular fa-face-smile SNI"></i>
				</div>
			</div>
			
			<div class="Documento">
				<div class="inContainer">
					<input type="text" placeholder="Número de documento" name="documento" id="telefono">
					<i class="fa-regular fa-id-card"></i>
				</div>
				
				<div class="inContainer">
					<select name="Tipodoc" id="">
						<option value="">Tipo de documento</option>
						<option value="1">Cédula</option>
						<option value="2">Targeta de identidad</option>
						<option value="3">Cédula de extrangería</option>
					</select>
					<i class="fa-regular fa-id-card SNI"></i>
				</div>
			</div>

			<div class="Telefono">
				<div class="inContainer">
					<input type="tel" placeholder="Telefono" name="telefono" id="telefono">
					<i class="fa-solid fa-phone"></i>
				</div>
				
				<div class="inContainer">
					<input type="tel" placeholder="Telefono auxiliar" name="telefonosec" id="telefono">
					<i class="fa-solid fa-phone FP"></i>
				</div>
				<div class="inContainer">
					<input type="date" placeholder="Fecha de nacimiento" name="fechanac" id="telefono">
					<i class="fa-regular fa-calendar-days FN"></i>
				</div>
			</div>
			
			<div class="Correo">
				<div class="inContainer">
					<input type="email" placeholder="Correo" name="correo" id="correo">
					<i class="fa-solid fa-envelope"></i>
				</div>
				
				<div class="inContainer">
					<input type="password" placeholder="Contraseña" name="contraseña" id="contraseña">
					<i class="fa-solid fa-lock SNI"></i>
				</div>
			</div>
			<input type="submit" name="send"  value="Enviar" class="boton">
		</form>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	</section>
    <?php

include("send.php");


?>

</body>
</html>