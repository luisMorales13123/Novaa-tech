listarProductos();
function listarProductos(){

    fetch("listar/listar.php",{
method: "POST",


    }).then(response => response.text()).then(response => {
        resultado.innerHTML = response;
    })

}



registrar.addEventListener("click", () => {
   
    fetch("insert/registrar.php", {

        method: "POST",
        body: new FormData(frm)
    }).then(response => response.text()).then(response => {
        console.log(response); 
    if (response.trim() === "ok") {
            Swal.fire({
                icon: 'success',
                title: 'Registrado',
                showConfirmButton: false,
                timer: 1500
            })
           frm.reset();
           listarProductos();
        }else{
            Swal.fire({
                icon: 'success',
                title: 'Modificado',
                showConfirmButton: false,
                timer: 1500
                
            })
            registrar.value = "Registrar";
            idp.value = "";
            listarProductos();
            frm.reset();
            
            
        }


    })


});
function Eliminar(idTipodeDocumento){

    Swal.fire({
        title: "¿Esta seguro de eliminar?",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "SI!",
        cancelButtonText: "No!"
      }).then((result) => {
        if (result.isConfirmed) {
            fetch("delete/elimiar.php" , {

                method: "POST",
                body: idTipodeDocumento


            }).then(response => response.text()).then(response =>{
if (response.trim() === "ok") {
    listarProductos();
    Swal.fire({
        icon: 'success',
        title: 'Eliminado',
        showConfirmButton: false,
        timer: 1500
    })
}
              
           

            })
       
        }
      })


}





function Editar(idTipodeDocumento) {
    fetch("edit/editar.php", {
        method: "POST",
        body: idTipodeDocumento
    }).then(response => response.json()).then(response => {
        idp.value = response.idTipodeDocumento;
        tipodoc.value = response.TipoDocumento;
        registrar.value = "Actualizar"
    })
}