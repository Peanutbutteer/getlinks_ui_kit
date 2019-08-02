import 'dart:typed_data';

import 'package:flutter/material.dart';

class GetLinksColors {
  GetLinksColors._();

  static const Color primaryBlack = Color(0xFF141E32);
  static const Color primary = Color(0xFF28D2AF);
  static const Color mystic = Color(0xFFE1E6F0);
  static const Color gunmetal = Color(0xFF424A5A);
  static const Color lavenderGray = Color(0xFFC3C7CF);
  static const Color description = Color(0xFF788796);
  static const Color primaryBlue = Color(0xFF008CC8);
  static const Color dark10 = Color(0x141e321a);
  static const Color paleGrey = Color(0xFFEFF2F7);
  static const Color navy = Color(0xFF041931);
  static const Color gray300 = Color(0xFFE0E0E0);
  static const Color silver300 = Color(0xFFBABDC6);
  static const Color successColor = Color(0xFF4AD991);
  static const Color yellowOrangeColor = Color(0xFFFFB900);
  static const Color carnationColor = Color(0xFFFF7285);

  
  static Color primaryMaterial = MaterialColor(primary.value, <int, Color>{
    50: const Color(0xFFE5FAF5),
    100: const Color(0xFFBFF2E7),
    200: const Color(0xFF94E9D7),
    300: const Color(0xFF69E0C7),
    400: const Color(0xFF48D9BB),
    500: const Color(0xFF28D2AF),
    600: const Color(0xFF24CDA8),
    700: const Color(0xFF1EC79F),
    800: const Color(0xFF18C196),
    900: const Color(0xFF0FB686),
  });
}

final Uint8List kTransparentImage = Uint8List.fromList(<int>[
  0x89,
  0x50,
  0x4E,
  0x47,
  0x0D,
  0x0A,
  0x1A,
  0x0A,
  0x00,
  0x00,
  0x00,
  0x0D,
  0x49,
  0x48,
  0x44,
  0x52,
  0x00,
  0x00,
  0x00,
  0x01,
  0x00,
  0x00,
  0x00,
  0x01,
  0x08,
  0x06,
  0x00,
  0x00,
  0x00,
  0x1F,
  0x15,
  0xC4,
  0x89,
  0x00,
  0x00,
  0x00,
  0x0A,
  0x49,
  0x44,
  0x41,
  0x54,
  0x78,
  0x9C,
  0x63,
  0x00,
  0x01,
  0x00,
  0x00,
  0x05,
  0x00,
  0x01,
  0x0D,
  0x0A,
  0x2D,
  0xB4,
  0x00,
  0x00,
  0x00,
  0x00,
  0x49,
  0x45,
  0x4E,
  0x44,
  0xAE,
]);
