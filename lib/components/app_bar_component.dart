import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

import '../theme/split_theme.dart';

class AppBarComponent extends StatefulWidget implements PreferredSizeWidget {
  const AppBarComponent({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70.0);

  @override
  State<AppBarComponent> createState() => _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        splashRadius: 6,
        color: SplitColors.light,
        onPressed: () {
          Navigator.pop(context);
        },
        iconSize: 18,
        icon: const Icon(
          BootstrapIcons.chevron_left,
        ),
      ),
      title: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Image.asset(
            'assets/images/Logo.png',
            height: 50,
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(
            BootstrapIcons.heart_fill,
            color: SplitColors.primary,
          ),
        )
      ],
    );
  }
}
