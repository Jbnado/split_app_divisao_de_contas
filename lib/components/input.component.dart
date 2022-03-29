import 'package:flutter/material.dart';

import '../../../theme/split.theme.dart';

class InputComponent extends StatefulWidget {
  const InputComponent({
    Key? key,
    required this.text,
    required this.theme,
    this.icon,
    this.inputType,
    this.inputAction,
    this.obscureText,
  }) : super(key: key);

  final String text;
  final String theme;
  final IconData? icon;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final bool? obscureText;

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  dynamic hasType() {
    if (widget.inputType != null) {
      return widget.inputType;
    } else {
      return null;
    }
  }

  dynamic hasAction() {
    if (widget.inputAction != null) {
      return widget.inputAction;
    } else {
      return null;
    }
  }

  dynamic isObscure() {
    if (widget.obscureText != null) {
      return widget.obscureText;
    } else {
      return false;
    }
  }

  Color colorTheme(String whatColor) {
    if (whatColor == 'bg') {
      if (widget.theme == 'light') {
        return SplitColors.grey.shade100;
      } else {
        return SplitColors.dark2;
      }
    } else {
      if (widget.theme == 'light') {
        return Colors.black;
      } else {
        return SplitColors.light;
      }
    }
  }

  dynamic hasIcon() {
    if (widget.icon != null) {
      return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Icon(
          widget.icon,
          color: colorTheme('t'),
          size: 16,
        ),
      );
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: colorTheme('bg'),
        border: Border(
          bottom: BorderSide(
            color: SplitColors.secondary.shade200,
            width: 2,
          ),
        ),
      ),
      child: Column(
        children: [
          TextField(
            obscureText: isObscure(),
            style: SplitTypography.body2(
              textColor: colorTheme('t'),
            ),
            keyboardType: hasType(),
            textInputAction: hasAction(),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              border: InputBorder.none,
              hintText: widget.text,
              hintStyle: SplitTypography.body2(
                textColor: colorTheme('t'),
              ),
              prefixIcon: hasIcon(),
            ),
          ),
        ],
      ),
    );
  }
}
