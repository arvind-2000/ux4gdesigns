// Responsive Class
// Responsive boolean functions
//Return boolean for mobile, tablet and laptop screens

class Responsive {
  static const double mobile = 540;
  static const double tablet = 960;
  static const double laptop = 1140;

  ///use to get screen size for mobile True:false
  static bool isMobile(double width) {
    return width <= mobile;
  }

  ///use to get screen size for tablet True:false
  static bool isTablet(double width) {
    return width <= tablet;
  }

  ///use to get screen size for laptop True:false
  static bool isLaptop(double width) {
    return width <= laptop;
  }
}
