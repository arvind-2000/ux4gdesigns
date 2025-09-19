import 'package:flutter/material.dart';

class NavBarTop extends StatelessWidget {
  const NavBarTop({super.key, required this.actions, required this.header});
  final List<Widget> actions;
  final Widget header;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1200),
            child: Row(
              children: [
                // Image.asset(logoimage, fit: BoxFit.contain, height: 60, width: 60),
                header,
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Home", style: theme.textTheme.bodyLarge),
                      SizedBox(width: 16),
                      Text("About", style: theme.textTheme.bodyLarge),
                      SizedBox(width: 16),
                      Text('Contacts', style: theme.textTheme.bodyLarge),
                    ],
                  ),
                ),
                //actions
                Row(mainAxisAlignment: MainAxisAlignment.end, children: actions),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
