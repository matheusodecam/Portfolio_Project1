// ignore_for_file: avoid_unnecessary_containers

import 'package:portfolio_project1/mixins/validation_mixin.dart';
import 'package:portfolio_project1/src/pages/home_page.dart';
import 'package:portfolio_project1/src/pages/registro_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with ValidationMixin{
  final _form = GlobalKey<FormState>();
  final _texto = TextEditingController();

  fazerLogin(){
    if(_form.currentState!.validate()){
      Navigator.pushNamedAndRemoveUntil(context, '/home_page', (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]
    );
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                width: 300,
                height: 300,
                child: const Image(
                  image: AssetImage('lib/assets/images/logo_completa.png'),
                ),
              ),
              Container(
                height: 25,
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    child: Transform(
                      transform: Matrix4.skew(0.0, -0.2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 300,
                          height: 280,
                          color: const Color.fromARGB(255, 204, 242, 244),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 280,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 204, 242, 244),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Form(
                        key: _form,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(left: 10, right: 20, bottom: 15),
                                child: TextFormField(
                                  obscureText: false,
                                  decoration: const InputDecoration(
                                    //border: OutlineInputBorder(),
                                    icon: Icon(Icons.person),
                                    labelText: 'Nome de Usuario',
                                    hintText: 'Digite seu Nome de Usuario',
                                  ),
                                  style: const TextStyle(
                                    color: Colors.black,
                                    //fontFamily: 'AristotelicaTextExtraLight',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  validator: (value) => combine([
                                    () => isNotEmpty(value),
                                    () => userValidator(value),
                                  ]),
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                              
                              Container(
                                margin: const EdgeInsets.only(left: 10, right: 20, bottom: 5),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    //border: OutlineInputBorder(),
                                    icon: Icon(Icons.lock),
                                    labelText: 'Senha',
                                    hintText: 'Digite sua senha',
                                  ),
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 40, 36, 29),
                                    //fontFamily: 'AristotelicaTextExtraLight',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  //cursorColor: const Color.fromARGB(255, 40, 36, 29),
                                  validator: (value) => combine([
                                    () => isNotEmpty(value),
                                    () => senhaValidator(value),
                                  ]),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                margin: const EdgeInsets.only(right: 20),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Esqueceu a senha?',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontFamily: 'AristotelicaProDemiBold',
                                      fontWeight: FontWeight.w300, //SEMI-NEGRITO
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: TextButton.icon(
                                  onPressed: () {
                                    fazerLogin();
                                    //
                                  },
                                  label: const Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        fontFamily: 'AristotelicaProDemiBold'),
                                  ),
                                  icon: const Icon(Icons.login),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          const Color.fromARGB(220, 0, 59, 80)),
                                      foregroundColor:
                                          MaterialStateProperty.all(Colors.white),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              vertical: 9, horizontal: 13))),
                                ),
                              ),
                            ], // FIM DA COLUMN
                          ),
                        ),
                      ),
                    ),
                  ),
                ], //FIM DA STACK
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                child: const Text(
                  'OU FAÇA O LOGIN COM:',
                  style: TextStyle(
                      //fontFamily: 'AristotelicaTextExtraLight',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                //color: Colors.red,
              ),
              Container(
                //color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'FACEBOOK',
                              style: TextStyle(
                                fontFamily: 'AristotelicaProDemiBold',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.facebook)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 212, 70, 56)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              ' GMAIL  ',
                              style: TextStyle(
                                fontFamily: 'AristotelicaProDemiBold',
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.mail)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistroPage())); 
                  },
                  child: const Column(
                    children: <Widget>[
                      Text(
                        'Faça seu cadastro em nossa rede',
                        style: TextStyle(
                            fontFamily: 'AristotelicaProDemiBold',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                      Text(
                        'REGISTRAR-SE',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}