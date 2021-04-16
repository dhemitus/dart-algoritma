//split string into array of string
void findUnique(String s) {
  List<String> _s, _l, _p;
  _s = s.split(' ');
  _l = [];
  _p = [];
  String _n, _t;
  int _i, _j;
  for(_i = 0; _i < _s.length; _i++) {
    for(_j = 0; _j < _s.length; _j++) {
      if(_s[_i].substring(0, 2) == _s[_j].substring(0, 2) && _i != _j) {
        _l.add(_s[_i]);
        break;
      }     }
  }

  _n = _l.join(' ');
  print(_n);
}
