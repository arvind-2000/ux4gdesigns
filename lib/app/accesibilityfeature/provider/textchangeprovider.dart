import 'package:flutter/material.dart';

class TextChangeProvider with ChangeNotifier {
  double textscale = 1.0;

  void increaseTextSize() {
    if (textscale < 2) {
      textscale += 0.05;
      notifyListeners();
    }
  }

  void decreaseTextSize() {
    if (textscale > 1) {
      textscale -= 0.05;
      notifyListeners();
    }
  }

  void setSize(double value) {
    textscale = value;
    notifyListeners();
  }
}
