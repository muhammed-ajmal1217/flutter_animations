import 'package:flutter/material.dart';
import 'package:myapp/l10n/l10n.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({super.key});
  @override
  Widget build(BuildContext context) {
  final local=Localizations.localeOf(context);
  final flag=L10.getFlag(local.languageCode);
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 80,
          child: 
        Text(flag,style: TextStyle(fontSize: 30),)
        ),
      ),
    );
  }
}