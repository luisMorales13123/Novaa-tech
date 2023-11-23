<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registro</title>
	<link rel="stylesheet" href="https://necolas.github.io/normalize.css/8.0.1/normalize.css">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"> 
	<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<main>
		<form method="post" action="send.php" class="formulario" id="formulario">
			<!-- Grupo: Primer nombre -->
			<div class="formulario__grupo" id="grupo__usuario">
				<label for="usuario" class="formulario__label">Primer Nombre</label>
				<div class="formulario__grupo-input">
					<input type="text" class="formulario__input" name="pnombre" id="nombre" placeholder="Primer Nombre">
					<i class="formulario__validacion-estado fas fa-times-circle"></i>
				</div>
				<p class="formulario__input-error">El usuario tiene que ser de 4 a 16 dígitos y solo puede contener numeros, letras y guion bajo.</p>
			</div>

			<!-- Grupo: Nombre -->
			<div class="formulario__grupo" id="grupo__nombre">
				<label for="nombre" class="formulario__label">Segundo Nombre</label>
				<div class="formulario__grupo-input">
					<input type="text" class="formulario__input" name="snombre" id="nombre" placeholder="Segundo Nombre">
					<i class="formulario__validacion-estado fas fa-times-circle"></i>
				</div>
				<p class="formulario__input-error">El usuario tiene que ser de 4 a 16 dígitos y solo puede contener numeros, letras y guion bajo.</p>
			</div>

			<!-- Grupo: Apellido -->
			<div class="formulario__grupo" id="grupo__nombre">
				<label for="nombre" class="formulario__label"> Apellido</label>
				<div class="formulario__grupo-input">
					<input type="text" class="formulario__input" name="apellido" id="Apellido" placeholder= "Primer Apellido">
					<i class="formulario__validacion-estado fas fa-times-circle"></i>
				</div>
				<p class="formulario__input-error">Solo letras, sin números.</p>
			</div>

			<!-- Grupo: Segundo Apellido -->
			<div class="formulario__grupo" id="grupo__nombre">
				<label for="nombre" class="formulario__label">Segundo Apellido</label>
				<div class="formulario__grupo-input">
					<input type="text" class="formulario__input" name="sapellido" id="Apellido" placeholder= "Segundo Apellido">
					<i class="formulario__validacion-estado fas fa-times-circle"></i>
				</div>
				<p class="formulario__input-error">Solo letras, sin números.</p>
			</div>

			<!-- Grupo: Teléfono -->
			<div class="formulario__grupo" id="grupo__telefono">
				<label for="telefono" class="formulario__label">Teléfono</label>
				<div class="formulario__grupo-input">
					<input type="text" class="formulario__input" name="telefono" id="telefono" placeholder="telefono">
					<i class="formulario__validacion-estado fas fa-times-circle"></i>
				</div>
				<p class="formulario__input-error">El telefono solo puede contener numeros y el maximo son 14 dígitos.</p>
			</div>
		<!-- Grupo: Documento -->
		<div class="formulario__grupo" id="grupo__telefono">
				<label for="telefono" class="formulario__label">Número de documento</label>
				<div class="formulario__grupo-input">
					<input type="text" class="formulario__input" name="documento" id="telefono" placeholder="Documento">
					<i class="formulario__validacion-estado fas fa-times-circle"></i>
				</div>
				<p class="formulario__input-error">El telefono secundario solo puede contener numeros y el maximo son 14 dígitos.</p>
			</div>

			<!-- Grupo: Teléfono 2 -->
			<div class="formulario__grupo" id="grupo__telefono">
				<label for="telefono" class="formulario__label">Teléfono Secundario</label>
				<div class="formulario__grupo-input">
					<input type="text" class="formulario__input" name="telefonosec" id="telefono" placeholder="telefono aux">
					<i class="formulario__validacion-estado fas fa-times-circle"></i>
				</div>
				<p class="formulario__input-error">El telefono secundario solo puede contener numeros y el maximo son 14 dígitos.</p>
			</div>

	

			<div class="formulario__grupo" id="grupo__telefono">
				<label for="telefono" class="formulario__label">Tipo de documento</label>
				<div class="formulario__grupo-input">
			<select name="Tipodoc" id="">
			     <option value="">seleccione su dococumento</option>
				<option value="1">Cédula</option>
				<option value="2">Tarjeta de indetidad</option>
				<option value="3">Cédula de extranjería</option>
			</select>
		</div>
	</div>


			<!-- Grupo: Fecha Nacimiento -->
			<div class="formulario__grupo" id="grupo__telefono">
				<label for="telefono" class="formulario__label"> Fecha Nacimiento</label>
				<div class="formulario__grupo-input">
					<input type="date" class="formulario__input" name="fechanac" id="telefono" placeholder="Cuando naciste?">
					<i class="formulario__validacion-estado fas fa-times-circle"></i>
				</div>
				<p class="formulario__input-error">Cuentanos cuando naciste</p>
			</div>

			<!-- Grupo: Terminos y Condiciones -->
			<div class="formulario__grupo" id="grupo__terminos">
				<label class="formulario__label">
					<input class="formulario__checkbox" type="checkbox" name="terminos" id="terminos">
					Acepto los Terminos y Condiciones
				</label>
			</div>

			<div class="formulario__mensaje" id="formulario__mensaje">
				<p><i class="fas fa-exclamation-triangle"></i> <b>Error:</b> Por favor rellena el formulario correctamente. </p>
			</div>

			<div class="formulario__grupo formulario__grupo-btn-enviar">
			<input type="submit" name="send" class="btn-send" value="Enviar">
				<p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
			</div>
		</form>
	</main>
	<?php

include("send.php");


?>

</body>
</html>