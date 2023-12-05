//Ejecutar función en el evento click
document.getElementById("btn_open").addEventListener("click", open_close_menu);

//Declaramos variables
var side_menu = document.getElementById("menu_side");
var btn_open = document.getElementById("btn_open");
var body = document.getElementById("body");

//Evento para mostrar y ocultar menú
    function open_close_menu(){
        body.classList.toggle("body_move");
        side_menu.classList.toggle("menu__side_move");
    }

//Si el ancho de la página es menor a 760px, ocultará el menú al recargar la página

if (window.innerWidth < 760){

    body.classList.add("body_move");
    side_menu.classList.add("menu__side_move");
}

//Haciendo el menú responsive(adaptable)

window.addEventListener("resize", function(){

    if (window.innerWidth > 760){

        body.classList.remove("body_move");
        side_menu.classList.remove("menu__side_move");
    }

    if (window.innerWidth < 760){

        body.classList.add("body_move");
        side_menu.classList.add("menu__side_move");
    }

});
$(document).ready(function() {
    var productTable = $('#productTable').DataTable();

    // Register Product
    $('#productForm').submit(function(e) {
        e.preventDefault();
        var code = $('#code').val();
        var category = $('#category').val();
        var product = $('#product').val();
        var price = $('#price').val();
        var stock = $('#stock').val();
        var status = $('#status').val();

        var newRow = [
            '<input type="checkbox" class="product-select">',
            code,
            category,
            product,
            price,
            stock,
            status,
            '<a href="#" class="btn btn-primary edit-btn">Editar</a> | <a href="#" class="btn btn-danger delete-btn">Eliminar</a>'
        ];

        productTable.row.add(newRow).draw(false);
        $('#productModal').modal('hide');
        $('#productForm')[0].reset();
    });

    // Edit Product
    $(document).on('click', '.edit-btn', function() {
        var row = $(this).closest('tr');
        var rowData = productTable.row(row).data();
        var code = rowData[1];
        var category = rowData[2];
        var product = rowData[3];
        var price = rowData[4];
        var stock = rowData[5];
        var status = rowData[6];

        $('#code').val(code);
        $('#category').val(category);
        $('#product').val(product);
        $('#price').val(price);
        $('#stock').val(stock);
        $('#status').val(status);

        $('#productModal').modal('show');

        // Actualizar la fila existente en la tabla al editar
        $('#productForm').off('submit').on('submit', function(e) {
            e.preventDefault();
            rowData[1] = $('#code').val();
            rowData[2] = $('#category').val();
            rowData[3] = $('#product').val();
            rowData[4] = $('#price').val();
            rowData[5] = $('#stock').val();
            rowData[6] = $('#status').val();
            productTable.row(row).data(rowData).draw();
            $('#productModal').modal('hide');
            $('#productForm')[0].reset();
        });
    });

    // Delete Product
    $(document).on('click', '.delete-btn', function() {
        var row = $(this).closest('tr');
        productTable.row(row).remove().draw(false);
    });

    // Select/Deselect All Products
    $('#selectAll').click(function() {
        var checkboxes = $('.product-select');
        checkboxes.prop('checked', $(this).is(':checked'));
    });

    // Show N Entries
    $('#numRows').change(function() {
        var value = $(this).val();
        productTable.page.len(value).draw();
    });

    // Delete All Products
    $('#deleteAllBtn').click(function() {
        productTable.clear().draw();
    });
});
$('#printBtn').click(function() {
        window.print();
    });
    document.getElementById('logoutBtn').addEventListener('click', function() {
        var confirmLogout = confirm('¿Estás seguro de que deseas cerrar sesión?');
        if (confirmLogout) {
            window.location.href = 'login.html';
          // Reemplazar la URL actual por la URL de inicio de sesión en el historial del navegador
          window.history.pushState({}, '', 'login.html');
          // Redirigir al usuario a la página de inicio de sesión
          window.location.href = 'login.html';
        }
      });
      
      document.getElementById('logoutDropdown').addEventListener('click', function() {
        var confirmLogout = confirm('¿Estás seguro de que deseas cerrar sesión?');
        if (confirmLogout) {
            window.location.href = 'login.html';
          // Reemplazar la URL actual por la URL de inicio de sesión en el historial del navegador
          window.history.pushState({}, '', 'login.html');
          // Redirigir al usuario a la página de inicio de sesión
          window.location.href = 'login.html';
        }
      });