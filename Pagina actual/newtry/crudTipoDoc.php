<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD php - API fetch</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="Style.css">
    
</head>

<body>
    <div class="container">
        <div class="columna">
            <div class="registroProducto">
                <div class="caja">
                    <div class="tituloCaja">
                        <h3 class="texto">Registro Tipo documento</h3>
                    </div>
                    <div class="card-cuerpoCaja">
                        <form action="" method="post" id="frm">
                            <div class="grupoFormulario">
                                <label for="">Codigo</label>
                                <input type="hidden" name="idp" id="idp" value="">
                                <input type="text" name="tipodoc" id="tipodoc" placeholder="tipodocumento" class="form-estiloImput">
                            </div>
                            <div class="grupoFormulario">
                                <input type="button" value="Registrar" id="registrar" class="estiloBoton">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="resultado">
                <div class="buscarContenedor">
                    <div class="buscar">
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="buscra">Buscar:</label>
                                <input type="text" name="buscar" id="buscar" placeholder="Buscar..." class="estiloImput">
                            </div>
                        </form>
                    </div>
                </div>
                <table class="estiloTabla">
                    <thead class="">
                        <tr>
                            <th>id</th>
                            <th>tipoDocumento</th>
                        </tr>
                    </thead>
                    <tbody id="resultado">

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="js/crud.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</body>

</html>