import 'package:flutter/foundation.dart';
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
    final size = MediaQuery.sizeOf(context);
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (c) => TextChangeProvider())],
      child: MaterialApp(
        theme: appTheme,
        title: appname,
        debugShowCheckedModeBanner: false,
        home: Stack(
          children: [
            ShellWrapper(),
            if (kDebugMode)
              Positioned(
                top: 0,
                right: 0,
                child: Material(
                  color: Colors.transparent,
                  child: HeightWidth(size: size),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class HeightWidth extends StatefulWidget {
  const HeightWidth({super.key, required this.size});

  final Size size;

  @override
  State<HeightWidth> createState() => _HeightWidthState();
}

class _HeightWidthState extends State<HeightWidth> {
  bool onhover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => setState(() {
        if (!onhover) {
          setState(() {
            onhover = true;
          });
        } else {}
      }),
      onExit: (e) => setState(() {
        if (onhover) {
          setState(() {
            onhover = false;
          });
        }
      }),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        color: onhover ? Colors.transparent : Colors.white,
        child: Text(
          textAlign: TextAlign.end,
          "(w/h): ${widget.size.width}/ ${widget.size.height} ",
        ),
      ),
    );
  }
}
