import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../configs/appconfigs/appcinfig.dart';
import '../../../helpers/responsivehelpers/responsiveclass.dart';
import '../../accesibilityfeature/accesebilitybar.dart';
import '../../navbarfeature/topbar.dart';

class LandingPages extends StatefulWidget {
  const LandingPages({super.key, required this.child});
  final Widget child;

  @override
  State<LandingPages> createState() => _LandingPagesState();
}

class _LandingPagesState extends State<LandingPages> {
  final ScrollController _scrollcontroller = ScrollController();

  void animateScroll(int index) {
    _scrollcontroller.animateTo(0, duration: Duration(milliseconds: 600), curve: Curves.easeIn);
  }

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
            controller: _scrollcontroller,
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
              TopBar(
                actions: [
                  OutlinedButton(onPressed: () {}, child: Text('Sign In')),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      context.go('/signup');
                    },
                    child: Text("Sign Up"),
                  ),
                ],
                header: InkWell(
                  onTap: () {
                    context.go('/home');
                    animateScroll(0);
                  },

                  child: Text(
                    appname.toUpperCase(),
                    style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: widget.child),

              // NavBarTop(),
            ],
          ),
        ),
      ],
    );
  }
}
