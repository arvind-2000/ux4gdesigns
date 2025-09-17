import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ux4gdesigns/app/accesibilityfeature/statics.dart';
import 'package:ux4gdesigns/configs/appconfigs/appcinfig.dart';
import 'package:ux4gdesigns/configs/colors/colors.dart';

import 'provider/textchangeprovider.dart';

class AccesibilityBar extends StatelessWidget {
  const AccesibilityBar({
    super.key,
    this.showScreenreader = false,
    this.showMaincontent = false,
    this.showLanguage = false,
    this.headerTitle,
  });
  final bool showScreenreader;
  final bool showMaincontent;
  final bool showLanguage;
  final Widget? headerTitle;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textprovider = Provider.of<TextChangeProvider>(context);
    return Container(
      height: 50,
      padding: EdgeInsets.all(16),
      color: theme.colorScheme.primary,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: Row(
            children: [
              headerTitle ??
                  Row(
                    children: [
                      Image.asset(logoimage, height: 20, width: 20, fit: BoxFit.contain),
                      SizedBox(width: 8),
                      Text(
                        "Government of India",
                        style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
              SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    showMaincontent
                        ? Text(
                            "Skip to Main Content",
                            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
                          )
                        : SizedBox.shrink(),

                    showMaincontent ? divider() : SizedBox.shrink(),
                    showScreenreader
                        ? Text(
                            "Screen Reader",
                            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
                          )
                        : SizedBox.shrink(),

                    showScreenreader ? divider() : SizedBox.shrink(),
                    TextSizeWidget(
                      theme: theme,
                      selectedTheme: 'A',
                      textsizeitems: textSizes,
                      onChanged: (text) {
                        switch (text) {
                          case 'A-':
                            textprovider.decreaseTextSize();
                            return;
                          case 'A':
                            textprovider.setSize(1.0);
                            return;
                          case 'A+':
                            textprovider.increaseTextSize();
                            return;
                        }
                      },
                    ),
                    divider(),
                    showLanguage
                        ? Icon(Icons.dark_mode_outlined, size: 16, color: Colors.white)
                        : SizedBox(),
                    showLanguage ? divider() : SizedBox.shrink(),
                    showLanguage
                        ? SizedBox(
                            width: 100,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                // buttonStyleData: ButtonStyleData(
                                //   height: 50,
                                //   width: 160,
                                //   padding: const EdgeInsets.only(left: 14, right: 14),
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(14),
                                //     border: Border.all(color: Colors.black26),
                                //   ),
                                //   elevation: 2,
                                // ),
                                iconStyleData: const IconStyleData(
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  iconSize: 16,
                                  iconEnabledColor: Colors.white,
                                  iconDisabledColor: Colors.grey,
                                ),
                                dropdownStyleData: DropdownStyleData(
                                  maxHeight: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.5,
                                      color: Ux4gColorTheme.secondaryColor[700]!,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                  ),
                                  offset: const Offset(-20, 0),
                                  scrollbarTheme: ScrollbarThemeData(
                                    radius: const Radius.circular(40),
                                    thickness: WidgetStateProperty.all<double>(6),
                                    thumbVisibility: WidgetStateProperty.all<bool>(true),
                                  ),
                                ),
                                menuItemStyleData: const MenuItemStyleData(
                                  height: 40,
                                  padding: EdgeInsets.only(left: 14, right: 14),
                                ),

                                hint: Row(
                                  children: [
                                    Icon(Icons.language, size: 14, color: Colors.white),
                                    SizedBox(width: 8),
                                    Text(
                                      "English",
                                      style: theme.textTheme.bodySmall?.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                  ],
                                ),

                                onChanged: (v) {},
                                items: ['English', 'Mani', 'Hindi']
                                    .map(
                                      (e) => DropdownMenuItem(
                                        value: e,
                                        child: Row(
                                          children: [
                                            SizedBox(width: 8),
                                            Text(e, style: theme.textTheme.bodyMedium?.copyWith()),
                                            SizedBox(width: 8),
                                          ],
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container divider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 20,
      width: 1,
      color: Colors.white,
    );
  }
}

class TextSizeWidget extends StatelessWidget {
  const TextSizeWidget({
    super.key,
    required this.theme,
    required this.textsizeitems,
    required this.selectedTheme,
    required this.onChanged,
  });
  final Map<String, double> textsizeitems;
  final ThemeData theme;
  final String selectedTheme;
  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: textsizeitems.entries
          .map(
            (e) => InkWell(
              onTap: () {
                onChanged(e.key);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  e.key,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: selectedTheme == e.key
                        ? Colors.white
                        : Ux4gColorTheme.secondaryColor[100],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
