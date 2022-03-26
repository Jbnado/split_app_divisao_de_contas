import 'package:app_divisao_de_contas/pages/intialPages/components/input.component.dart';
import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme/split.theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        body: Container(
          padding: const EdgeInsets.only(top: 70),
          decoration: const BoxDecoration(
            gradient: gradientScaffold,
          ),
          child: SafeArea(
            maintainBottomViewPadding: true,
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/split.svg',
                            width: 72,
                            height: 72,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const SplitTextLogo(),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 100,
                        ),
                        child: const Text(
                          'Login to your account',
                          style: TextStyle(
                            color: Color(0xff00FAFF),
                            fontSize: 24,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 4.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const EmailComponent(
                        labelText: 'Email',
                        labelIcon: BootstrapIcons.envelope_fill,
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: PasswordComponent(
                          labelText: 'Password',
                          labelIcon: BootstrapIcons.lock_fill,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFFC0A7F),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xff00FAFF),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        decoration: const BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            color: Color(0xff00FAFF),
                          ),
                        )),
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            'Create new Account',
                            style: TextStyle(
                              color: Color(0xff00FAFF),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
