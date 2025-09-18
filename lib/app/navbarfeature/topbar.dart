import 'package:flutter/material.dart';

import '../../configs/appconfigs/appcinfig.dart';
import '../../configs/colors/colors.dart';
import '../../helpers/responsivehelpers/responsiveclass.dart';
import '../../sharedwidgets/constrainedbox.dart';
import 'navbar.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    final istablet = Responsive.isTablet(size.width);
    final ismobile = Responsive.isMobile(size.width);
    return SliverAppBar(
      floating: true,
      snap: false,
      elevation: 4,
      toolbarHeight: 80,

      shadowColor: Colors.black.withValues(alpha: 0.4),
      pinned: true,
      actionsPadding: EdgeInsets.zero,
      centerTitle: ismobile || istablet ? false : true,
      title: ismobile || istablet
          ? Text(appname, style: theme.textTheme.headlineSmall)
          : NavBarTop(
              actions: [
                OutlinedButton(onPressed: () {}, child: Text('Sign In')),
                SizedBox(width: 8),
                ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
              ],
            ),
      titleSpacing: 0.0,
      titleTextStyle: null,
      expandedHeight: 0,

      surfaceTintColor: Ux4gColorTheme.secondaryColor[50],
      backgroundColor: Ux4gColorTheme.secondaryColor[50],
      actions: ismobile || istablet
          ? [
              OutlinedButton(onPressed: () {}, child: Text('Sign In')),
              SizedBox(width: 8),
              ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
              SizedBox(width: 16),
            ]
          : null,
      flexibleSpace: ConnstrainedWrapper(child: SizedBox(height: 800, width: double.infinity)),
    );
  }
}
