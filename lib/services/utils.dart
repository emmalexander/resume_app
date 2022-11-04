import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class Utils {
  BuildContext context;
  Utils(this.context);

  Color get color => Theme.of(context).brightness == Brightness.dark
      ? Colors.white
      : Colors.black;
  Size get getScreenSize => MediaQuery.of(context).size;
}
