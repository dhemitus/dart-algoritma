import 'package:algo/except.dart';


// PALINDROM ALGORITMA
// reverse process
int _reverse(int i) {
  return int.parse(i.toString().split('').reversed.join());
}

// finding palindrom number process
int findPalindrom(int i, int j) {
  int _i;
  List<int> _l;
  if(!(i is int) || !(j is int)) throw TypeFileException();

  if(j <= i) throw PalindromException();

  _l = [];
  for(_i = i; _i <=j; _i++) {
    if(_i == _reverse(_i)) {
      _l.add(_i);
    }
  }

  print(_l);
  return _l.length;
}

//palindrom runner
void run(i, j) {
  try {
    int _l;
    _l = findPalindrom(i, j);
    print('result $_l');
  } on TypeFileException catch (e) {
    print('opps, $e');
  } on PalindromException catch (e) {
    print('opps, $e');
  } catch (e) {
    print(e);
  } finally {
    print('finish');
  }
}
