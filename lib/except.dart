class PalindromException implements Exception {
  @override
  String toString() {
    return 'j must be bigger than i';
  }
}

class TypeFileException implements Exception {
  @override
  String toString() {
    return 'data must be integer type';
  }
}
