import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_divisao_de_contas/theme/split_theme.dart';

///A ElevatedButton created for use the colors of Split App.
///
///
///```dart
///ButtonComponent(
///   text: 'Tutorial',
///   onPressed: () {},
///   width: 'large',
///   theme: 'dark',
///   color: 'primary',
///),
///```
///
///
///```dart
///ButtonComponent(
///   text: 'Tutorial',
///   onPressed: () {},
///   width: 'small',
///   theme: 'dark',
///   color: 'primary',
///),
///```
///
///
///```dart
///ButtonComponent(
///   text: 'Tutorial',
///   onPressed: () {},
///   width: 'large',
///   theme: 'light',
///   color: 'primary',
///),
///```
///
///
///```dart
///ButtonComponent(
///   text: 'Tutorial',
///   onPressed: () {},
///   width: 'small',
///   theme: 'light',
///   color: 'primary',
///),
///```
///
///
///```dart
///ButtonComponent(
///   text: 'Tutorial',
///   onPressed: () {},
///   width: 'large',
///   theme: 'dark',
///   color: 'secondary',
///),
///```
///
///
///```dart
///ButtonComponent(
///   text: 'Tutorial',
///   onPressed: () {},
///   width: 'small',
///   theme: 'dark',
///   color: 'secondary',
///),
///```
///
///
///```dart
///ButtonComponent(
///   text: 'Tutorial',
///   onPressed: () {},
///   width: 'large',
///   theme: 'light',
///   color: 'secondary',
///),
///```
///
///
///```dart
///ButtonComponent(
///   text: 'Tutorial',
///   onPressed: () {},
///   width: 'small',
///   theme: 'light',
///   color: 'secondary',
///),
///```
class ButtonComponent extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final String width;
  final String theme;
  final String color;
  final IconData? icon;

  ///Creates a Widget ElevatedButton with the design system of Split App.
  ///
  ///The arguments [text, onPressed] must not be null.
  ///
  ///```dart
  ///final String width = 'large' || 'small'
  ///final String theme = 'dark' || 'light'
  ///final String color = 'primary' || 'secondary'
  ///```
  const ButtonComponent({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width = 'large',
    this.theme = 'dark',
    this.color = 'primary',
    this.icon,
  }) : super(key: key);

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  Color backgroundColor() {
    if (widget.theme == 'dark' && widget.color == 'primary') {
      return SplitColors.primary;
    } else if (widget.theme == 'light' && widget.color == 'primary') {
      return SplitColors.primary.shade100;
    } else if (widget.theme == 'dark' && widget.color == 'secondary') {
      return SplitColors.secondary.shade300;
    } else if (widget.theme == 'light' && widget.color == 'secondary') {
      return SplitColors.secondary.shade100;
    } else if (widget.theme == 'disabled') {
      return SplitColors.gray.shade300;
    }
    return SplitColors.gray.shade300;
  }

  Color textColor() {
    if (widget.theme == 'dark') {
      return Colors.white;
    } else if (widget.theme == 'light' && widget.color == 'primary') {
      return SplitColors.primary.shade400;
    } else if (widget.theme == 'light' && widget.color == 'secondary') {
      return SplitColors.secondary.shade400;
    } else if (widget.theme == 'disabled') {
      return SplitColors.gray.shade500;
    }
    return Colors.white;
  }

  List<Size> widthButton() {
    if (widget.width == 'large') {
      return [
        const Size(250, 50),
        const Size(300, 50),
      ];
    } else if (widget.width == 'small') {
      return [
        const Size(100, 50),
        const Size(150, 50),
      ];
    }
    return [
      const Size(250, 50),
      const Size(300, 50),
    ];
  }

  dynamic hasIcon() {
    if (widget.icon != null) {
      return Icon(widget.icon);
    } else {
      return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: widthButton()[0],
        maximumSize: widthButton()[1],
        onSurface: backgroundColor(),
        primary: backgroundColor(),
      ),
      onPressed: widget.theme == 'disabled' ? null : widget.onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          hasIcon(),
          Text(
            widget.text,
            style: SplitTypography.button(
              textColor: textColor(),
            ),
          ),
        ],
      ),
    );
  }
}

///A ElevatedButton created just to Sign in and Sign up with Google
///
///
///```dart
///GoogleButtonComponent(
///   text: 'SIGN IN',
///)
///```
///
///
///```dart
///GoogleButtonComponent(
///   text: 'SIGN UP',
///)
///```
class GoogleButtonComponent extends StatefulWidget {
  final String text;

  ///Creates a Widget ElevatedButton to sign in or sign up with Google.
  const GoogleButtonComponent({
    Key? key,
    this.text = 'Login',
  }) : super(key: key);

  @override
  State<GoogleButtonComponent> createState() => _GoogleButtonComponentState();
}

class _GoogleButtonComponentState extends State<GoogleButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(250, 50),
        maximumSize: const Size(350, 50),
        primary: SplitColors.light,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/icons/icon_google.svg',
            semanticsLabel: 'custom google icon',
          ),
          Text(
            '${widget.text} com o Google',
            style: SplitTypography.button(
              textColor: SplitColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
