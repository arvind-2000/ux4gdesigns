import 'package:flutter/material.dart';

import '../../../configs/colors/colors.dart';
import '../../../helpers/images/assetimage.dart';
import '../../../helpers/responsivehelpers/responsiveclass.dart';
import '../../../sharedwidgets/constrainedbox.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeroPages(),

        Container(
          color: Ux4gColorTheme.secondaryColor[300],
          child: Center(
            child: ConnstrainedWrapper(
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
          ),
        ),

        Container(
          color: Ux4gColorTheme.secondaryColor[500],
          child: Center(
            child: ConnstrainedWrapper(
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
          ),
        ),
      ],
    );
  }
}

class HeroPages extends StatelessWidget {
  const HeroPages({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    final istablet = Responsive.isTablet(size.width);
    final ismobile = Responsive.isMobile(size.width);
    return Container(
      color: Ux4gColorTheme.secondaryColor[100],
      child: Stack(
        children: [
          Row(
            children: [
              ismobile || istablet
                  ? SizedBox.shrink()
                  : Expanded(
                      child: Image.asset(
                        width: double.infinity,
                        height: 800,
                        Assetimages.patternbackground,
                        fit: BoxFit.cover,
                      ),
                    ),
              Expanded(
                child: Image.asset(
                  width: double.infinity,
                  height: 800,
                  Assetimages.patternbackground,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Ux4gColorTheme.secondaryColor[50]!.withValues(alpha: 1),
                  Ux4gColorTheme.secondaryColor[50]!.withValues(alpha: 0.7),
                  Ux4gColorTheme.secondaryColor[50]!.withValues(alpha: 0.5),
                ],

                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ConnstrainedWrapper(
                  child: SizedBox(
                    height: 800,
                    // color: Ux4gColorTheme.secondaryColor[100],
                    child: ismobile || istablet
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 3 / 2,
                                    child: Image.asset(Assetimages.skylinegtr, fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Design Your System",
                                      style: theme.textTheme.displayMedium,
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      "Design in the way people gonna question themselves",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    SizedBox(height: 32),
                                    ElevatedGradientButton(text: "Learn More", theme: theme),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Design Your System",
                                      style: theme.textTheme.displayMedium,
                                    ),
                                    Text(
                                      "Design in the way people gonna question themselves ?",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    SizedBox(height: 16),
                                    ElevatedGradientButton(text: "Learn More", theme: theme),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 3 / 2,
                                    child: Image.asset(Assetimages.skylinegtr, fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ElevatedGradientButton extends StatelessWidget {
  const ElevatedGradientButton({super.key, required this.theme, required this.text});

  final ThemeData theme;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(32),
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          gradient: LinearGradient(
            colors: [
              Ux4gColorTheme.primarycolor[800]!,
              Ux4gColorTheme.primarycolor[700]!,
              Ux4gColorTheme.primarycolor[900]!,
            ],
          ),
        ),
        child: Text(
          text,
          style: theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
