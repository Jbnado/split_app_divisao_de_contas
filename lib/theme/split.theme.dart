import 'package:flutter/material.dart';

const TextStyle inputStyle = TextStyle(
  fontSize: 22,
  color: Colors.white,
);

const LinearGradient gradientScaffold = LinearGradient(
  colors: [
    Color(0xFF001233),
    Color(0xFFFC0A7F),
  ],
  stops: [
    0.75,
    1,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

class SplitTextLogo extends StatelessWidget {
  const SplitTextLogo({Key? key}) : super(key: key);
  final Gradient _splitTextGradient = const LinearGradient(
    colors: [
      Color(0xffFC0A7F),
      Color(0xff00FAFF),
    ],
    stops: [
      0.4,
      1,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.modulate,
      shaderCallback: (size) => _splitTextGradient.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      ),
      child: const Text(
        'split/',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontFamily: 'Thasadith',
        ),
      ),
    );
  }
}
