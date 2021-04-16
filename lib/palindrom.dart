import 'package:algo/except.dart';

// PALINDROM ALGORITMA
// reverse process
int _reverse(int i) {
  //parse i number into string then reverse it and then turn back into integer again
  return int.parse(i.toString().split('').reversed.join());
}

// finding palindrom number process
int findPalindrom(int i, int j) {
  int _i;
  List<int> _l;

  //throw error when i or j is not integer
  if(!(i is int) || !(j is int)) throw TypeFileException();

  //throw error when i is equal or bigger than j
  if(j <= i) throw PalindromException();

  //initiate list to containing the results
  _l = [];
  for(_i = i; _i <=j; _i++) {
    //compare _i with _i that already reversed
    if(_i == _reverse(_i)) {
      //put palindrom number into list
      _l.add(_i);
    }
  }

  print(_l);
  return _l.length;
}

//palindrom runner
//this function just runner function and catching error
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
