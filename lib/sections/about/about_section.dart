import 'package:flutter/material.dart';
import 'package:web_app/sections/about/responsive/about_desktop.dart';
import 'package:web_app/sections/about/responsive/about_mobile.dart';
import 'package:web_app/sections/about/responsive/about_tablet.dart';

import '../../responsive/responsive.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: AboutMobile(),
      tablet: AboutTablet(),
      desktop: AboutDesktop(),
    );
  }
}
