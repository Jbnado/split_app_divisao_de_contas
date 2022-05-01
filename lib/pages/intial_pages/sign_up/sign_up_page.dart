import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

import '../../../components/split_components.dart';
import '../../../theme/split_theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: const AppBarComponent(),
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
          child: Column(
            children: [
              const SizedBox(
                height: 26,
              ),
              Center(
                child: Text(
                  'Cadastrar conta',
                  style: SplitTypography.title1(
                    textColor: SplitColors.secondary.shade200,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: GoogleButtonComponent(
                      text: 'Cadastrar',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text(
                      'Ou',
                      style: SplitTypography.body2(
                        textColor: SplitColors.secondary.shade200,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: InputComponent(
                      text: 'Nome',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: InputComponent(
                      text: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: InputComponent(
                      text: 'Senha',
                      inputAction: TextInputAction.next,
                      obscureText: true,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: InputComponent(
                      text: 'Repetir senha',
                      inputAction: TextInputAction.done,
                      obscureText: true,
                    ),
                  ),
                  ButtonComponent(
                    icon: BootstrapIcons.plus,
                    text: 'Cadastrar',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
