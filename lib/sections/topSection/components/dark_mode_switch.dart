import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: InkWell(
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

            !isDarkMode ? ConstantStrings.darkIcon : ConstantStrings.lightIcon,
            height: 40,
            width: 40,
            color: !isDarkMode ? Colors.black : Colors.white,
          )),
    );
  }
}
