import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:nextchat/pages/login.dart';
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
                        text: AppLocalizations.of(context).register_top_button,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return LoginPage();
                          }));
                        },
                        margin: EdgeInsets.only(right: 32.0, top: 48.0),
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.w500))
                  ]),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NextChat(
                                size: 48.0,
                                margin: EdgeInsets.only(bottom: 32.0)),
                            ChatInput(
                                text:
                                    AppLocalizations.of(context).form_username,
                                margin: EdgeInsets.only(bottom: 16.0)),
                            ChatInput(
                                type: ChatInputType.password,
                                text:
                                    AppLocalizations.of(context).form_password,
                                margin: EdgeInsets.only(bottom: 16.0)),
                            ChatInput(
                                type: ChatInputType.text,
                                text: AppLocalizations.of(context)
                                    .register_repeat_password,
                                margin: EdgeInsets.only(bottom: 16.0)),
                            ChatInput(
                                type: ChatInputType.text,
                                text: AppLocalizations.of(context)
                                    .register_captcha),
                            ChatButton(
                                type: ChatButtonType.primary,
                                text: AppLocalizations.of(context)
                                    .register_submit,
                                onPressed: () {},
                                margin: EdgeInsets.only(top: 16.0))
                          ])),
                  Text(AppLocalizations.of(context).footer,
                      style: TextStyle(color: Colors.grey, fontSize: 12.0))
                ])));
  }
}
