import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../themes/theme_manager.dart';

class PersonPic extends ConsumerWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    bool isDarkMode = ref.watch(themeStateProvider) == ThemeMode.dark;
    return Container(
      constraints: BoxConstraints(maxWidth: 639, maxHeight: 860),
      child: Container(
        width: 639,
        height: 860,
        child: isDarkMode
            ? Opacity(
                opacity: 0.8,
                child: Image.asset(
                  "assets/images/person1.png",
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(
                "assets/images/person1.png",
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
