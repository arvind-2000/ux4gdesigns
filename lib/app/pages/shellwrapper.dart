import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ux4gdesigns/app/accesibilityfeature/accesebilitybar.dart';
import 'package:ux4gdesigns/app/accesibilityfeature/provider/textchangeprovider.dart';
import 'package:ux4gdesigns/app/navbarfeature/navbar.dart';
import 'package:ux4gdesigns/configs/colors/colors.dart';
import 'package:ux4gdesigns/sharedwidgets/constrainedbox.dart';

class ShellWrapper extends StatelessWidget {
  const ShellWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final textprovider = Provider.of<TextChangeProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  actionsPadding: EdgeInsets.zero,
                  centerTitle: true,
                  title: AccesibilityBar(
                    showLanguage: true,
                    showMaincontent: true,
                    showScreenreader: true,
                  ),
                  titleSpacing: 0.0,
                  titleTextStyle: null,
                  backgroundColor: Ux4gColorTheme.primarycolor,
                ),
                SliverAppBar(
                  floating: true,
                  snap: false,
                  elevation: 4,
                  toolbarHeight: 80,

                  shadowColor: Colors.black.withValues(alpha: 0.4),
                  pinned: true,
                  actionsPadding: EdgeInsets.zero,
                  centerTitle: true,
                  title: NavBarTop(),
                  titleSpacing: 0.0,
                  titleTextStyle: null,
                  expandedHeight: 0,
                  backgroundColor: Ux4gColorTheme.secondaryColor[300],

                  flexibleSpace: ConnstrainedWrapper(
                    child: SizedBox(height: 800, width: double.infinity),
                  ),
                ),
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
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: UxFloatingButton(),
    );
  }
}

class UxFloatingButton extends StatefulWidget {
  const UxFloatingButton({super.key});

  @override
  State<UxFloatingButton> createState() => _UxFloatingButtonState();
}

class _UxFloatingButtonState extends State<UxFloatingButton> {
  bool onhover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (v) {
        setState(() {
          onhover = v;
        });
      },
      child: Semantics(
        label: 'Submit button',
        hint: 'Double tap to submit the form',
        button: true,

        child: AnimatedContainer(
          decoration: BoxDecoration(
            color: Ux4gColorTheme.primarycolor,

            borderRadius: BorderRadius.circular(onhover ? 16 : 120),
          ),
          height: 80,
          width: onhover ? 160 : 80,
          duration: Duration(milliseconds: 400),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, color: Colors.white),

                onhover
                    ? AnimatedOpacity(
                        opacity: onhover ? 1 : 0,
                        duration: Duration(milliseconds: 500),
                        child: Text("Accesibility", style: TextStyle(color: Colors.white)),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
