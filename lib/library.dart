//split string into array of string

List<String> _similar(List<String> s) {
  List<String> _l;
  String _t;
  int _i, _j;

  _l = [];
  for(_i = 0; _i < s.length; _i++) {
    for(_j = 0; _j < s.length; _j++) {
      _t = s[_i];
      //catch similar content
      if(_t.substring(0, 2) == s[_j].substring(0, 2) && _i != _j) {
        _l.add(_t);
        break;
      }
    }
  }

  return _l;
}

List<String> _remove(List<String> s, List<String> l) {
  int _i;
  List<String> _p;
  _p = [...s];

  for(_i = 0; _i < l.length; _i++) {
    _p.remove(l[_i]);
  }

  return _p;
}

void findUnique(String s) {
  List<String> _s, _l, _p;
  _s = s.split(' ');
  String _n;
  int _i, _j;

  _l = _similar(_s);;

  _p = _remove(_s, _l);

  print(_l.join(' '));
  print(_p.join(' '));
  print(_s.join(' '));
  _n = _l.join(' ');
  print([..._p, ..._l].join(' '));
}
