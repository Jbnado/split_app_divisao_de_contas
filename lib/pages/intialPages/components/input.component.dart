import 'package:flutter/material.dart';

import '../../../theme/split.theme.dart';

class EmailComponent extends StatefulWidget {
  final String labelText;
  final IconData labelIcon;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  const EmailComponent({
    Key? key,
    required this.labelText,
    required this.labelIcon,
    required this.textInputType,
    required this.textInputAction,
  }) : super(key: key);

  @override
  State<EmailComponent> createState() => _EmailComponentState();
}

class _EmailComponentState extends State<EmailComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff00FAFF),
          ),
        ),
      ),
      child: Column(
        children: [
          TextField(
            style: inputStyle,
            keyboardType: widget.textInputType,
            textInputAction: widget.textInputAction,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              border: InputBorder.none,
              hintText: widget.labelText,
              hintStyle: inputStyle,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  widget.labelIcon,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordComponent extends StatefulWidget {
  final String labelText;
  final IconData labelIcon;
  final TextInputAction textInputAction;
  const PasswordComponent({
    Key? key,
    required this.labelText,
    required this.labelIcon,
    required this.textInputAction,
  }) : super(key: key);

  @override
  State<PasswordComponent> createState() => _PasswordComponentState();
}

class _PasswordComponentState extends State<PasswordComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff00FAFF),
          ),
        ),
      ),
      child: Column(
        children: [
          TextField(
            style: inputStyle,
            textInputAction: widget.textInputAction,
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              border: InputBorder.none,
              hintText: widget.labelText,
              hintStyle: inputStyle,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  widget.labelIcon,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
