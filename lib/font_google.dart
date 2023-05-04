import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

displayLeagueSpartan(BuildContext context) {
  GoogleFonts.leagueSpartan(
      textStyle: Theme.of(context).textTheme.displayMedium);
}

headlineLeagueSpartan(BuildContext context) {
  GoogleFonts.leagueSpartan(
      textStyle: Theme.of(context).textTheme.headlineLarge);
}

labelLeagueSpartan(BuildContext context) {
  GoogleFonts.leagueSpartan(textStyle: Theme.of(context).textTheme.labelLarge);
}

bodyLibreBaskerville(BuildContext context) {
  GoogleFonts.libreBaskerville(
      textStyle: Theme.of(context).textTheme.bodyLarge);
}

titleLibreBaskerville(BuildContext context) {
  GoogleFonts.libreBaskerville(
      textStyle: Theme.of(context).textTheme.titleLarge);
}
