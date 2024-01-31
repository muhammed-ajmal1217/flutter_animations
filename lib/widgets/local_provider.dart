import 'package:flutter/material.dart';
import 'package:myapp/l10n/l10n.dart';

class LocalProvider extends ChangeNotifier {
  Locale? _local;

  Locale get locale => _local ?? Locale('en'); // Use a default Locale if _local is null

  void setLocale(Locale locale) {
    if (!L10.all.contains(locale)) return;
    _local = locale;
    notifyListeners();
  }

  void clearLocale() {
    _local = null; // Use assignment operator to set _local to null
    notifyListeners();
  }
}
