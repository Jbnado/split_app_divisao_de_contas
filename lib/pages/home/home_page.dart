import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

import '../../theme/split_theme.dart';
import 'drawer/drawer_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      ),
      drawer: const DrawerComponent(),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          child: Container(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
                minWidth: MediaQuery.of(context).size.width,
              ),
              decoration: const BoxDecoration(
                gradient: gradientScaffold,
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Olá, João!',
                      style: SplitTypography.title1(
                        textColor: SplitColors.secondary,
                      ),
                    ),
                    Text(
                      'Vamos ajudar a sua turma a calcular o consumo de cada um.',
                      style: SplitTypography.title2(
                        textColor: SplitColors.primary.shade200,
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
