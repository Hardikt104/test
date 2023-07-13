part of base_ext;

extension DoubleExtension on double {
  /// Vertical Spaced SizedBox
  Widget get toVSB {
    return SizedBox(height: this);
  }

  /// Horizontal Spaced SizedBox
  Widget get toHSB {
    return SizedBox(width: this);
  }

  /// All Circular BorderRadius
  BorderRadius get toAllBorderRadius {
    return BorderRadius.all(Radius.circular(this));
  }

  /// All EdgeInsets
  EdgeInsets get toAll {
    return EdgeInsets.all(this);
  }

  /// Vertical EdgeInsets
  EdgeInsets get toVertical {
    return EdgeInsets.symmetric(vertical: this);
  }

  /// Horizontal EdgeInsets
  EdgeInsets get toHorizontal {
    return EdgeInsets.symmetric(horizontal: this);
  }

  /// Horizontal EdgeInsets
  Radius get toRadius {
    return Radius.circular(this);
  }

  BoxConstraints get toAllConstraints {
    return BoxConstraints(
      maxHeight: this,
      minHeight: this,
      maxWidth: this,
      minWidth: this,
    );
  }

  BoxConstraints get toMinConstraints {
    return BoxConstraints(
      minHeight: this,
      minWidth: this,
    );
  }

  BoxConstraints get toMaxConstraints {
    return BoxConstraints(
      maxHeight: this,
      maxWidth: this,
    );
  }
}
