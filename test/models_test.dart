import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cuentas/constants.dart';

void main() {
  group('Constants', () {
    test('primaryColor has correct hex value', () {
      expect(primaryColor, const Color(0xff6e9fbe));
    });

    test('secondaryColor has correct hex value', () {
      expect(secondaryColor, const Color(0xff5289ae));
    });

    test('textStyleH1Black has correct fontSize', () {
      expect(textStyleH1Black.fontSize, 18.0);
      expect(textStyleH1Black.fontWeight, FontWeight.w700);
    });

    test('textStyleH2Black has correct fontSize', () {
      expect(textStyleH2Black.fontSize, 16.0);
      expect(textStyleH2Black.fontWeight, FontWeight.w600);
    });
  });
}
