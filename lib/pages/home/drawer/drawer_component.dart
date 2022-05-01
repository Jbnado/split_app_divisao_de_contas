import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

import '../../../theme/split_theme.dart';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  State<DrawerComponent> createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: SplitColors.dark2,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/73846881?v=4'),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'João Bernardo',
                        style: SplitTypography.subtitle1(),
                      ),
                      Text(
                        'bernardojoao9@gmail.com',
                        style: SplitTypography.subtitle2(),
                        softWrap: true,
                      )
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                BootstrapIcons.pencil,
                color: SplitColors.light,
                size: 24,
              ),
              title: Text(
                'Editar Conta',
                style: SplitTypography.subtitle2(
                  textColor: SplitColors.light,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                BootstrapIcons.calculator,
                color: SplitColors.light,
                size: 24,
              ),
              title: Text(
                'Últimas contas',
                style: SplitTypography.subtitle2(
                  textColor: SplitColors.light,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                BootstrapIcons.share,
                color: SplitColors.light,
                size: 24,
              ),
              title: Text(
                'Compartilhar Aplicativo',
                style: SplitTypography.subtitle2(
                  textColor: SplitColors.light,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                BootstrapIcons.box_arrow_in_left,
                color: SplitColors.light,
                size: 24,
              ),
              title: Text(
                'Sair',
                style: SplitTypography.subtitle2(
                  textColor: SplitColors.light,
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
