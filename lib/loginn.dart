import 'package:flutter/material.dart';
import 'package:login_fb/authentication_service.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  final TextEditingController usuario = new TextEditingController();
  final TextEditingController contrasena = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black38,
              blurRadius: 25.0,
              spreadRadius: 25.0,
              offset: Offset(15.0, 15.0))
        ], color: Colors.teal, borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 150, /*color: Colors.black87,*/
              ),
              Text(
                "INICIO DE SESION",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                child: SizedBox(
                  height: 45,
                  child: TextField(
                      controller: usuario,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Usuario')),
                ),
              ),
/*
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(80, 0, 100, 0),
                child: Container(
                  child: CheckboxListTile(
                    title: Text("Recordar usuario"),
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                ),
              ),
*/
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 15),
                child: SizedBox(
                  height: 45,
                  child: TextField(
                      controller: contrasena,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Contraseña')),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(10)),
                  child: FlatButton(
                    child: Text(
                      "Ingresar",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      context.read<AuthenticationService>().signIn(
                            email: usuario.text.trim(),
                            password: contrasena.text.trim(),
                          );
                    },
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(10)),
                  child: FlatButton(
                    child: Text(
                      "Nuevo usuario",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () => print("boton de nuevo usuario"),
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
