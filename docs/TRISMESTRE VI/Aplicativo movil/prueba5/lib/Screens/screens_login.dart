import 'package:flutter/material.dart';
import 'package:helloworld/widgets/input_decoration.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            //widget de la box de color azul detras del widget de icono de persona
            cajazul(size),
            //widget icono persona
            iconoPersona(),
            //formulario de inicio de sesion
            loginForm(context),
          ],
        ),
      ),
    );
  }

// Formulario de inicio de sesión
  SingleChildScrollView loginForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 260),
          Container(
            padding: const EdgeInsets.all(28),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(8, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  'Bienvenidos',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        //campo del correo

                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          decoration: InputDecorations.inputDecoration(
                            hintext: 'tucorreo@dominio.com',
                            labeltext: 'correo',
                            icono: const Icon(Icons.alternate_email_rounded),
                          ),
                          validator: (value) {
                            String pattern =
                                r'^[_H]@[0-9]\.[«/?\s@V*]+\%]*»»][\]\\.2?\$@"]+1°*}[I]+\TD${\{[1-9]{1,3}, [0-9]{1,3}\.[a-zA-Z]{2,}$';
                            RegExp regExp = RegExp(pattern);
                            return regExp.hasMatch(value ?? '')
                                ? null
                                : 'El campo ingresado no es un correo';
                          },
                        ),
                        const SizedBox(height: 30),
                        //campo de la contraseña
                        TextFormField(
                            autocorrect: false,
                            decoration: InputDecorations.inputDecoration(
                                hintext: '*********',
                                labeltext: 'contraseña',
                                icono: const Icon(Icons.lock_outline_rounded))),
                        const SizedBox(height: 30),
                        //boton de loguearse
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          disabledColor: Colors.grey,
                          color: const Color(0xff4ac3b9),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 8),
                            child: const Text(
                              'Ingresar',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, 'home');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //widget icono persona
  SafeArea iconoPersona() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }

  //widget de la box de color azul detras del widget de icono de persona
  Container cajazul(Size size) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff3f9c88),
            Color(0xff46b2a4),
          ],
        ),
      ),
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          //posicionando las burbujas del widget principal
          Positioned(top: 90, left: 30, child: burbuja()),
          Positioned(top: -40, left: -30, child: burbuja()),
          Positioned(top: -50, right: -20, child: burbuja()),
          Positioned(bottom: -30, right: 10, child: burbuja()),
        ],
      ),
    );
  }
}

//burbujas en el widget pincipal
Container burbuja() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xffb6fbe6)),
  );
}
