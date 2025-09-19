import 'package:flutter/material.dart';
import 'package:ux4gdesigns/configs/colors/colors.dart';
import 'package:ux4gdesigns/sharedwidgets/cards.dart';
import 'package:ux4gdesigns/sharedwidgets/constrainedbox.dart';

class RegisterTemplate extends StatelessWidget {
  const RegisterTemplate({super.key, this.footer, required this.child, this.header});
  final Widget? footer;
  final Widget child;
  final Widget? header;
  @override
  Widget build(BuildContext context) {
    final theme = TextTheme.of(context);
    return ConnstrainedWrapper(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 80),
            //header
            header ?? SizedBox.shrink(),
            header != null ? SizedBox(height: 16) : SizedBox(),

            //content
            CardShadow(
              color: Ux4gColorTheme.secondaryColor[50],
              padding: EdgeInsets.all(32),
              margin: EdgeInsets.all(16),
              child: child,
            ),
            footer != null ? SizedBox(height: 16) : SizedBox.shrink(),
            //footer
            footer ?? SizedBox.shrink(),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
