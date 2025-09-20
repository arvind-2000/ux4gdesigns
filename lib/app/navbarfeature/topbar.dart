import 'package:flutter/material.dart';

import '../../configs/colors/colors.dart';
import '../../helpers/responsivehelpers/responsiveclass.dart';
import '../../sharedwidgets/constrainedbox.dart';
import 'navbar.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key, required this.header, this.actions});
  final Widget header;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
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
      title: ismobile || istablet ? header : NavBarTop(header: header, actions: actions ?? []),
      titleSpacing: 0.0,
      titleTextStyle: null,
      expandedHeight: 0,

      surfaceTintColor: Ux4gColorTheme.secondaryColor[50],
      backgroundColor: Ux4gColorTheme.secondaryColor[50],
      actions: ismobile || istablet ? actions ?? [] : null,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ConnstrainedWrapper(child: SizedBox(height: 800, width: double.infinity)),
      ),
    );
  }
}
