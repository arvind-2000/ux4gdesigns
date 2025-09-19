import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ux4gdesigns/app/pages/landingpages/landingpageparent.dart';
import 'package:ux4gdesigns/configs/colors/colors.dart';
import 'package:ux4gdesigns/helpers/responsivehelpers/responsiveclass.dart';

class ShellWrapper extends StatelessWidget {
  const ShellWrapper({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final istablet = Responsive.isTablet(size.width);
    final ismobile = Responsive.isMobile(size.width);

    return Scaffold(
      drawer: ismobile || istablet ? Drawer() : null,
      body: Stack(
        children: [
          LandingPages(child: child),
          if (kDebugMode)
            Positioned(
              top: 0,
              right: 0,
              child: Material(
                color: Colors.transparent,
                child: HeightWidth(size: size),
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

class HeightWidth extends StatefulWidget {
  const HeightWidth({super.key, required this.size});

  final Size size;

  @override
  State<HeightWidth> createState() => _HeightWidthState();
}

class _HeightWidthState extends State<HeightWidth> {
  bool onhover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => setState(() {
        if (!onhover) {
          setState(() {
            onhover = true;
          });
        } else {}
      }),
      onExit: (e) => setState(() {
        if (onhover) {
          setState(() {
            onhover = false;
          });
        }
      }),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        color: onhover ? Colors.transparent : Colors.white,
        child: Text(
          textAlign: TextAlign.end,
          "(w/h): ${widget.size.width}/ ${widget.size.height} ",
        ),
      ),
    );
  }
}
