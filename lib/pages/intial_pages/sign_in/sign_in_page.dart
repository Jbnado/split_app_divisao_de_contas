import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

import '../../../components/split_components.dart';
import '../../../theme/split_theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
      ),
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
                Center(
                  child: Image.asset(
                    'assets/images/Logo.png',
                    height: 50,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    'Entrar na sua conta',
                    style: SplitTypography.title1(
                      textColor: SplitColors.secondary.shade200,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: InputComponent(
                        text: 'Email',
                        icon: BootstrapIcons.envelope,
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: InputComponent(
                        text: 'Senha',
                        icon: BootstrapIcons.key,
                        obscureText: true,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 32),
                      constraints: const BoxConstraints(
                        maxWidth: 400,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Esqueci minha senha',
                              style: SplitTypography.link(
                                textColor: SplitColors.secondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ButtonComponent(
                      text: 'Entrar',
                      onPressed: () {},
                    ),
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
