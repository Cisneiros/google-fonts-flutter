import 'package:flutter/foundation.dart';
import 'package:google_fonts/src/google_fonts_variant.dart';

/// Represents a Google Fonts API variant in Flutter-specific types.
class GoogleFontsFamilyWithVariant {
  const GoogleFontsFamilyWithVariant({
    @required this.family,
    @required this.googleFontsVariant,
  })  : assert(family != null),
        assert(googleFontsVariant != null);

  final String family;
  final GoogleFontsVariant googleFontsVariant;

  String toApiFilenamePrefix() {
    return '$family-${googleFontsVariant.toApiFilenamePart()}';
  }

  /// Returns a font family name that is modified with additional [fontWeight]
  /// and [fontStyle] descriptions.
  ///
  /// This string is used as a key to the loaded or stored fonts that come
  /// from the Google Fonts API.
  @override
  String toString() => '${family}_$googleFontsVariant';
}
