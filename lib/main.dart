import 'package:flutter/material.dart';
import 'package:myapp/bottom_navigation.dart';
import 'package:myapp/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myapp/widgets/local_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LocalProvider(),)
      ],
      child: Builder(
        builder: (context) {
          final provider=Provider.of<LocalProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            supportedLocales: L10.all,
            locale: provider.locale,
            localizationsDelegates: [
              AppLocalizations.delegate, 
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: BottomNavigation(),
          );
        },
      ),
    );
  }
}
