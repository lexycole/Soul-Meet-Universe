class LifePathTextResolver {
  static String getLifePathText(String lifePathNumber) {
    switch (lifePathNumber) {
      case '11/2':
        return _getTextFor11_2();
      case '22/4':
        return _getTextFor22_4();
      default:
        return 'Default Text for other life paths';
    }
  }

  static String _getTextFor11_2() {
    return 'Specific text for 11/2...';
  }

  static String _getTextFor22_4() {
    return 'Specific text for 22/4...';
  }
}
