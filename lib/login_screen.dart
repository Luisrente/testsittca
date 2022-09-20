import 'package:flutter/material.dart';
import 'package:login/auth_background.dart';
import 'package:login/card_container.dart';
import 'package:login/custom_input.dart';
import 'package:login/input_decorations.dart';
import 'package:login/providers/login_form_provider.dart';
// import 'package:productos_app/providers/login_form_provider.dart';
// import 'package:productos_app/services/services.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 250),
          CardContainer(
              child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                'Inicio de sesion',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),

              // ChangeNotifierProvider(
              //   create: ( _ ) => LoginFormProvider(),
              //   child: _LoginForm()
              // )
              _LoginForm()
            ],
          )),
          SizedBox(height: 50),

          // TextButton(
          //     onPressed: () =>
          //         Navigator.pushReplacementNamed(context, 'register'),
          //     style: ButtonStyle(
          //         overlayColor:
          //             MaterialStateProperty.all(Colors.indigo.withOpacity(0.1)),
          //         shape: MaterialStateProperty.all(StadiumBorder())),
          //     child: Text(
          //       'Crear una nueva cuenta',
          //       style: TextStyle(fontSize: 18, color: Colors.black87),
          //     )),
          SizedBox(height: 50),
        ],
      ),
    )));
  }
}

class _LoginForm extends StatelessWidget {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(
      child: Form(
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            CustomInput(
              icon: Icons.mail_outline,
              placeholder: 'Correo electronico',
              keyboardType: TextInputType.emailAddress,
              textController: emailCtrl,
            ),
            CustomInput(
              icon: Icons.lock_outline,
              placeholder: 'Contraseña',
              textController: passCtrl,
              isPassword: true,
            ),
            SizedBox(height: 30),
            Text(
              "¿Haz olvidado tu contraseña ?",
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 30),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Color.fromARGB(255, 45, 43, 48),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    child: Text(
                      loginForm.isLoading ? 'Espere' : 'Iniciar Sesion',
                      style: TextStyle(color: Colors.white),
                    )),
                onPressed: loginForm.isLoading
                    ? null
                    : () async {
                        // FocusScope.of(context).unfocus();
                        // final authService = Provider.of<AuthService>(context, listen: false);

                        // if( !loginForm.isValidForm() ) return;

                        // loginForm.isLoading = true;

                        // // TODO: validar si el login es correcto
                        // final String? errorMessage = await authService.login(loginForm.email, loginForm.password);

                        // if ( errorMessage == null ) {
                        //   Navigator.pushReplacementNamed(context, 'home');
                        // } else {
                        //   // TODO: mostrar error en pantalla
                        //   // print( errorMessage );
                        //   NotificationsService.showSnackbar(errorMessage);
                        //   loginForm.isLoading = false;
                        // }
                      }),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
