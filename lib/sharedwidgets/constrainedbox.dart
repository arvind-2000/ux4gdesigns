import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ux4gdesigns/app/accesibilityfeature/provider/textchangeprovider.dart';

class ConnstrainedWrapper extends StatelessWidget {
  const ConnstrainedWrapper({super.key, required this.child, this.maxwidth});
  final Widget child;
  final double? maxwidth;
  @override
  Widget build(BuildContext context) {
    final textScaleprovider = Provider.of<TextChangeProvider>(context);
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: TextScaler.linear(textScaleprovider.textscale)),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxwidth ?? 1200),
        child: child,
      ),
    );
  }
}
