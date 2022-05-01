import 'package:flutter/material.dart';

import '../theme/split_theme.dart';

class InputComponent extends StatefulWidget {
  final String text;
  final String theme;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool obscureText;
  final IconData? icon;

  const InputComponent({
    Key? key,
    required this.text,
    this.theme = 'dark',
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.done,
    this.obscureText = false,
    this.icon,
  }) : super(key: key);

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  bool isObscure = true;
  Color backgroundColor() {
    if (widget.theme == 'dark') {
      return SplitColors.dark2;
    } else if (widget.theme == 'light') {
      return SplitColors.gray.shade100;
    }
    return SplitColors.dark2;
  }

  Color textColor() {
    if (widget.theme == 'dark') {
      return Colors.white;
    } else if (widget.theme == 'light') {
      return SplitColors.dark;
    }
    return Colors.white;
  }

  Color labelColor() {
    if (widget.theme == 'dark') {
      return SplitColors.secondary.shade200;
    } else if (widget.theme == 'light') {
      return SplitColors.secondary.shade400;
    }
    return SplitColors.secondary.shade200;
  }

  dynamic hasIcon() {
    if (widget.icon != null) {
      return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Icon(
          widget.icon,
          color: textColor(),
          size: 16,
        ),
      );
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText ? isObscure : false,
      style: SplitTypography.body3(
        textColor: textColor(),
      ),
      keyboardType: widget.inputType,
      textInputAction: widget.inputAction,
      decoration: InputDecoration(
        isDense: true,
        constraints: const BoxConstraints(
          maxWidth: 400,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: labelColor(),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: labelColor(),
          ),
        ),
        filled: true,
        fillColor: backgroundColor(),
        labelText: widget.text,
        labelStyle: SplitTypography.body3(
          textColor: labelColor(),
        ),
        prefixIcon: hasIcon(),
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                  color: labelColor(),
                ),
              )
            : null,
        // errorText: '',
      ),
    );
  }
}
