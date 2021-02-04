import 'package:flutter/material.dart';
import 'package:nextchat/widgets/nextchat.dart';
import 'package:nextchat/widgets/chat_input.dart';
import 'package:nextchat/widgets/chat_button.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              ChatButton(
                type: ChatButtonType.text,
                text: 'Inicia Sesión',
                onPressed: () {},
                margin: EdgeInsets.only(right: 32.0, top: 48.0),
                style: TextStyle(
                    color: Colors.indigo, fontWeight: FontWeight.w500),
              ),
            ]),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NextChat(size: 48.0, margin: EdgeInsets.only(bottom: 32.0)),
                  ChatInput(
                      text: 'Nombre de usuario',
                      margin: EdgeInsets.only(bottom: 16.0)),
                  ChatInput(
                      type: ChatInputType.password,
                      text: 'Contraseña',
                      margin: EdgeInsets.only(bottom: 16.0)),
                  ChatInput(
                      type: ChatInputType.text,
                      text: 'Repite la contraseña',
                      margin: EdgeInsets.only(bottom: 16.0)),
                  ChatInput(
                      type: ChatInputType.text,
                      text: 'Captcha: ¿Cuánto es 2 + 2?'),
                  ChatButton(
                      type: ChatButtonType.primary,
                      text: 'Finalizar',
                      onPressed: () {},
                      margin: EdgeInsets.only(top: 16.0))
                ],
              ),
            ),
            Text('© NexChat 2021 ~ Todos los derechos reservados',
                style: TextStyle(color: Colors.grey, fontSize: 12.0)),
          ],
        ),
      ),
    );
  }
}
