


import 'image_tap.dart';
/// Responsive Padding
double responsivePadding(double displayWidth) => displayWidth * 0.03;

int responsiveNumCols(double displayWidth) {
  if (displayWidth < pixelWidth1Column) {
    return 1;
  } else if (displayWidth < pixelWidth2Columns) {
    return 2;
  } else if (displayWidth < pixelWidth3Columns) {
    return 3;
  }
  return 4;
}
/// Responsive Child Aspect Ratio
double responsiveChildAspectRatio(double width, int colNumber) => width / (colNumber * 110);

bool isDrawerFixed(double displayWidth) => displayWidth > pixelFixedDrawer;
