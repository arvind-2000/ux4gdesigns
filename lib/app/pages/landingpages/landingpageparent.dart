import 'package:flutter/material.dart';

import '../../../helpers/responsivehelpers/responsiveclass.dart';
import '../../accesibilityfeature/accesebilitybar.dart';
import '../../navbarfeature/topbar.dart';

class LandingPages extends StatelessWidget {
  const LandingPages({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final istablet = Responsive.isTablet(size.width);
    final ismobile = Responsive.isMobile(size.width);
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ismobile || istablet
                    ? SizedBox.shrink()
                    : AccesibilityBar(
                        showLanguage: true,
                        showMaincontent: true,
                        showScreenreader: true,
                      ),
              ),
              TopBar(),
              SliverToBoxAdapter(child: child),

              // NavBarTop(),
            ],
          ),
        ),
      ],
    );
  }
}
