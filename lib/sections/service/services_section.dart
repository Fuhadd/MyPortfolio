import 'package:flutter/material.dart';
import 'package:web_app/sections/service/responsive/services_tablet.dart';
import '../../responsive/responsive.dart';
import 'responsive/services_desktop.dart';
import 'responsive/services_mobile.dart';

// part 'services_desktop.dart';
// part 'services_mobile.dart';
// part 'widgets/_services_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceTablet(),
      desktop: ServiceDesktop(),
    );
  }
}
