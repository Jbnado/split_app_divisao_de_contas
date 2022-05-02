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
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
              minWidth: MediaQuery.of(context).size.width,
            ),
            decoration: const BoxDecoration(
              gradient: gradientScaffold,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .15,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/Logo.png',
                    height: 75,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .08,
                ),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Column(
                          children: [
                            Text(
                              'Calculadora',
                              style: SplitTypography.title1(
                                textColor: SplitColors.secondary.shade200,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'de Consumo',
                              style: SplitTypography.title1(
                                textColor: SplitColors.secondary.shade200,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Divida suas contas',
                        style: SplitTypography.title2(),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'com facilidade',
                        style: SplitTypography.title2(),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .1,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: ButtonComponent(
                        text: 'Login com e-mail',
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
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
                          onTap: () {
                            Navigator.pushNamed(context, '/cadastrar');
                          },
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
