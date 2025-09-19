import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:ux4gdesigns/app/accesibilityfeature/provider/textchangeprovider.dart';
import 'package:ux4gdesigns/routes/approutes.dart';

import 'configs/appconfigs/appcinfig.dart';
import 'configs/themes/theme.dart';

void main() {
  setPathUrlStrategy();
  runApp(const Ux4gDesings());
}

class Ux4gDesings extends StatelessWidget {
  const Ux4gDesings({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (c) => TextChangeProvider())],
      child: MaterialApp.router(
        theme: appTheme,
        title: appname,
        debugShowCheckedModeBanner: false,
        routerConfig: Approutes.routerConfig,
      ),
    );
  }
}
