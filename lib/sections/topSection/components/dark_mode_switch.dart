import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants.dart';
import '../../../themes/theme_manager.dart';
import '../../../utils/links.dart';

class DarkModeSwitch extends ConsumerStatefulWidget {
  @override
  _DarkModeSwitchState createState() => _DarkModeSwitchState();
}

class _DarkModeSwitchState extends ConsumerState<DarkModeSwitch> {
  ThemeMode _currentThemeMode = ThemeMode.light;
  ThemeManager _themeManager = ThemeManager();

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ref.watch(themeStateProvider) == ThemeMode.dark;
    // Offset lightDistance = !isDarkMode ? Offset(10, 10) : Offset(28, 28);
    // double lightBlur = !isDarkMode ? 10 : 30;
    // Offset darkDistance = isDarkMode ? Offset(10, 10) : Offset(28, 28);
    // double darkBlur = isDarkMode ? 10 : 30;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        InkWell(
            onTap: () {
              bool isDarkMode = ref.watch(themeStateProvider) == ThemeMode.dark;
              _themeManager.toggleTheme(!isDarkMode, ref);
              setState(() {});
              // _themeManager.toggleTheme(!isDarkMode, ref);
              // _toggleThemeMode();
              // context.read<ThemeCubit>().updateTheme(!state.isDarkThemeOn);
            },
            child: Image.network(
              // IconUrls.darkIcon,

              !isDarkMode ? IconUrls.darkIcon : IconUrls.lightIcon,
              height: 40,
              width: 40,
              color: !isDarkMode ? Colors.black : Colors.white,
            )),
        // Padding(
        //   padding: EdgeInsets.only(top: 50, right: 3),
        //   child: TextButton(
        //     style: ButtonStyle(
        //       backgroundColor: MaterialStateProperty.all(Colors.white),
        //       foregroundColor: MaterialStateProperty.all(Colors.black),
        //     ),
        //     onPressed: () {
        //       setState(() {
        //         // darkMode = false;
        //       });
        //     },
        //     child: Text('Light'),
        //   ),
        // ),
        // Padding(
        //   padding: EdgeInsets.only(top: 50, left: 3),
        //   child: TextButton(
        //     style: ButtonStyle(
        //       backgroundColor: MaterialStateProperty.all(Colors.black),
        //       foregroundColor: MaterialStateProperty.all(Colors.white),
        //     ),
        //     onPressed: () {
        //       setState(() {
        //         // darkMode = true;
        //       });
        //     },
        //     child: Text('Dark'),
        //   ),
        // ),
        // Switch(
        //     value: ref.watch(themeStateProvider) == ThemeMode.dark,
        //     onChanged: (newValue) {
        //       _themeManager.toggleTheme(newValue, ref);
        //     }),
        // InkWell(
        //     onTap: () {
        //       _themeManager.toggleTheme(!isDarkMode, ref);
        //       // _toggleThemeMode();
        //       // context.read<ThemeCubit>().updateTheme(!state.isDarkThemeOn);
        //     },
        //     child: Image.network(
        //       IconUrls.darkIcon,
        //       // state.isDarkThemeOn ? IconUrls.darkIcon : IconUrls.lightIcon,
        //       height: 50,
        //       width: 50,
        //       // color: state.isDarkThemeOn ? Colors.black : Colors.white,
        //     )),
      ]),
    );
  }
}
