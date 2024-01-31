import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:myapp/l10n/l10n.dart';
import 'package:myapp/widgets/helpers.dart';
import 'package:myapp/widgets/language_picker.dart';
import 'package:myapp/widgets/languagewidget.dart';
import 'package:myapp/widgets/local_provider.dart';
import 'package:provider/provider.dart';

class Animation2 extends StatefulWidget {
  const Animation2({Key? key}) : super(key: key);

  @override
  _Animation2State createState() => _Animation2State();
}

class _Animation2State extends State<Animation2> {
  @override
  Widget build(BuildContext context) {
  final local=Localizations.localeOf(context);
  final flag=L10.getFlag(local.languageCode);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
        child: CircleAvatar(
          radius: 80,
          child: 
        Text(flag,style: TextStyle(fontSize: 30),)
        ),
      ),
          Expanded(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
              ),
              child: ListView(
                children: [
                  DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        icon: Container(width: 12),
        items: L10.all.map((locale) {
          final flag = L10.getFlag(locale.languageCode);
          return DropdownMenuItem<String>(
            value: locale.languageCode,
            onTap: () {
          final provider = Provider.of<LocalProvider>(context,listen: false);
          provider.setLocale(locale);
        },
            child: Center(child: Text(flag,style: TextStyle(fontSize: 20),)),
          );
          
        }).toList(),
        onChanged: (value) {
        },
        
      ),
    ),
                  spacingHeight(30),
                  Text(
                    AppLocalizations.of(context)!.localeName,
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
