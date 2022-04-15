import 'package:flutter/material.dart';

import '../../../components/button_component.dart';
import '../../../theme/split_theme.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            minWidth: MediaQuery.of(context).size.width,
          ),
          decoration: const BoxDecoration(
            gradient: gradientScaffold,
          ),
          child: Column(children: [
            Flexible(
              child: Center(
                child: Image.asset(
                  '/images/Logo.png',
                  height: 75,
                ),
              ),
            ),
            Flexible(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        'Calculadora\nde Consumo',
                        style: SplitTypography.title1(
                          textColor: SplitColors.secondary.shade200,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      'Divida suas contas\ncom facilidade',
                      style: SplitTypography.title2(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: ButtonComponent(
                    text: 'Login com e-mail',
                    onPressed: () {},
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: GoogleButtonComponent(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        'Não tem conta?',
                        style: SplitTypography.body2(
                          textColor: SplitColors.light,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Cadastre-se',
                        style: SplitTypography.link(
                          textColor: SplitColors.secondary,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
          ]),
        ),
      ),
    );
  }
}
