import 'package:algo/palindrom.dart' as palindrom;
import 'package:algo/library.dart' as lib;

String _n = '3A13 5X19 9Y20 2C18 1N20 3N20 1M21 1F14 9A21 3N21 0E13 5G14 8A23 9E22 3N14 3A21';
String _u = '3A13 5X19 9Y20 2C18 1N20 3N20 1M21 1F14 9A21 3N21 0E13 5G14 8A23 9E22 3N14';


void main(List<String> arguments) {
//  palindrom.run(100, 510);
  lib.findUnique(_n);
  List<int> _l;
  _l = [1, 3, 4, 2, 1, 2, 3, 8];

  //print(lib.unique(_l));
}
