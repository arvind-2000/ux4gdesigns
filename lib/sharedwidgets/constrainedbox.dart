import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ux4gdesigns/app/accesibilityfeature/provider/textchangeprovider.dart';

class ConnstrainedWrapper extends StatelessWidget {
  const ConnstrainedWrapper({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final textScaleprovider = Provider.of<TextChangeProvider>(context);
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: TextScaler.linear(textScaleprovider.textscale)),
      child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 1200), child: child),
    );
  }
}
