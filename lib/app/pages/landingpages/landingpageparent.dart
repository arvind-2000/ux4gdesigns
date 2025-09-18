import 'package:flutter/material.dart';

import '../../../configs/colors/colors.dart';
import '../../../helpers/responsivehelpers/responsiveclass.dart';
import '../../../sharedwidgets/constrainedbox.dart';
import '../../accesibilityfeature/accesebilitybar.dart';
import '../../navbarfeature/topbar.dart';

class LandingPages extends StatelessWidget {
  const LandingPages({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
              SliverList(
                delegate: SliverChildListDelegate([
                  ConnstrainedWrapper(
                    child: Container(
                      height: 800,
                      color: Ux4gColorTheme.secondaryColor[100],
                      child: Center(
                        child: Text(
                          "Center Container",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 32),
                        ),
                      ),
                    ),
                  ),

                  ConnstrainedWrapper(
                    child: Container(
                      height: 800,
                      color: Ux4gColorTheme.secondaryColor[300],
                      child: Center(
                        child: Text(
                          "About Container",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 32),
                        ),
                      ),
                    ),
                  ),

                  ConnstrainedWrapper(
                    child: Container(
                      height: 800,
                      color: Ux4gColorTheme.secondaryColor[500],
                      child: Center(
                        child: Text(
                          "Service Container",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),

              // NavBarTop(),
            ],
          ),
        ),
      ],
    );
  }
}
