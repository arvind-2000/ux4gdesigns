import 'package:flutter/material.dart';
import 'package:ux4gdesigns/configs/colors/colors.dart';
import 'package:ux4gdesigns/helpers/responsivehelpers/responsiveclass.dart';

import 'landingpages/landingpageparent.dart';

class ShellWrapper extends StatelessWidget {
  const ShellWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final istablet = Responsive.isTablet(size.width);
    final ismobile = Responsive.isMobile(size.width);

    return Scaffold(
      drawer: ismobile || istablet ? Drawer() : null,
      body: LandingPages(),

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
          height: 60,
          width: onhover ? 160 : 60,
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
