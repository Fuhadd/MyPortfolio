import 'package:flutter/material.dart';

import '../../../utils/links.dart';
import '../../service/theme_change.dart';
import 'glass_content.dart';

class LogoAndBlurBox extends StatefulWidget {
  const LogoAndBlurBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<LogoAndBlurBox> createState() => _LogoAndBlurBoxState();
}

class _LogoAndBlurBoxState extends State<LogoAndBlurBox> {
  ThemeMode _currentThemeMode = ThemeMode.light;

  void _toggleThemeMode() {
    setState(() {
      ThemeProvider().toggleThem();
      _currentThemeMode = _currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/logo_A1.png"),
              InkWell(
                  onTap: () {
                    _toggleThemeMode();
                    // context.read<ThemeCubit>().updateTheme(!state.isDarkThemeOn);
                  },
                  child: Image.network(
                    IconUrls.darkIcon,
                    // state.isDarkThemeOn ? IconUrls.darkIcon : IconUrls.lightIcon,
                    height: 50,
                    width: 50,
                    // color: state.isDarkThemeOn ? Colors.black : Colors.white,
                  )),
            ],
          ),
        ),
        Spacer(),
        GlassContent(size: widget.size),
        Spacer(flex: 3),
      ],
    );
  }
}
