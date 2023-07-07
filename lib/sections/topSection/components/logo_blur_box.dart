import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_app/themes/theme_manager.dart';

import 'glass_content.dart';

class LogoAndBlurBox extends ConsumerStatefulWidget {
  const LogoAndBlurBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  ConsumerState<LogoAndBlurBox> createState() => _LogoAndBlurBoxState();
}

class _LogoAndBlurBoxState extends ConsumerState<LogoAndBlurBox> {
  ThemeMode _currentThemeMode = ThemeMode.light;
  ThemeManager _themeManager = ThemeManager();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Padding(
        //   padding: const EdgeInsets.only(left: 20.0, right: 20),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Image.asset("assets/images/logo_A1.png"),
        //       Switch(
        //           value: ref.watch(themeStateProvider) == ThemeMode.dark,
        //           onChanged: (newValue) {
        //             _themeManager.toggleTheme(newValue, ref);
        //           }),
        //       InkWell(
        //           onTap: () {
        //             bool isDarkMode =
        //                 ref.watch(themeStateProvider) == ThemeMode.dark;
        //             _themeManager.toggleTheme(!isDarkMode, ref);
        //             // _toggleThemeMode();
        //             // context.read<ThemeCubit>().updateTheme(!state.isDarkThemeOn);
        //           },
        //           child: Image.network(
        //             IconUrls.darkIcon,
        //             // state.isDarkThemeOn ? IconUrls.darkIcon : IconUrls.lightIcon,
        //             height: 50,
        //             width: 50,
        //             // color: state.isDarkThemeOn ? Colors.black : Colors.white,
        //           )),
        //     ],
        //   ),
        // ),

        // Image.asset("assets/images/logo_A1.png"),
        Spacer(),
        GlassContent(size: widget.size),
        Spacer(flex: 3),
      ],
    );
  }
}
