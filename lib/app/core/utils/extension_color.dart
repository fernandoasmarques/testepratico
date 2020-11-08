extension ExtensionColor on String {
  int hexToColor() => int.parse("0xFF${substring(1)}");
}
