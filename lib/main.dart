import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ux4gdesigns/app/accesibilityfeature/provider/textchangeprovider.dart';
import 'package:ux4gdesigns/app/pages/shellwrapper.dart';

import 'configs/appconfigs/appcinfig.dart';
import 'configs/themes/theme.dart';

void main() {
  runApp(const Ux4gDesings());
}

class Ux4gDesings extends StatelessWidget {
  const Ux4gDesings({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (c) => TextChangeProvider())],
      child: MaterialApp(
        theme: appTheme,
        title: appname,
        debugShowCheckedModeBanner: false,
        home: ShellWrapper(),
      ),
    );
  }
}
