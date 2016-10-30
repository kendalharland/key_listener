class Key {
  final List<int> codes;
  final String value;

  const Key._(this.value, this.codes);

  // Backspace (Delete on Mac).
  static const del = const Key._('del', const [127]);
  static const enter = const Key._('enter', const [10]);
  static const tab = const Key._('tab', const [9]);
  static const up = const Key._('up', const [27, 91, 65]);
  static const down = const Key._('down', const [27, 91, 66]);
  static const right = const Key._('right', const [27, 91, 67]);
  static const left = const Key._('left', const [27, 91, 68]);

  static const bang = const Key._('!', const [33]);
  static const at = const Key._('@', const [64]);
  static const pound = const Key._('#', const [35]);
  static const dollar = const Key._('\$', const [36]);
  static const percent = const Key._('%', const [37]);
  static const caret = const Key._('^', const [94]);
  static const ampersand = const Key._('&', const [38]);
  static const star = const Key._('*', const [42]);
  static const openParenthesis = const Key._('(', const [40]);
  static const closeParenthesis = const Key._(')', const [41]);
  static const hyphen = const Key._('-', const [45]);
  static const underscore = const Key._('_', const [95]);
  static const plus = const Key._('+', const [43]);
  static const openBrace = const Key._('{', const [123]);
  static const closeBrace = const Key._('}', const [125]);
  static const colon = const Key._(':', const [58]);
  static const semicolon = const Key._(';', const [59]);
  static const doubleQuote = const Key._('"', const [34]);
  static const singleQuote = const Key._('\'', const [39]);

  static const question = const Key._('?', const [63]);
  static const pipe = const Key._('|', const [124]);
  static const backSlash = const Key._('\\', const [92]);
  static const forwardSlash = const Key._('/', const [47]);
  static const quote = const Key._('`', const [96]);
  static const tilde = const Key._('~', const [126]);
  static const space = const Key._(' ', const [32]);

  static const lessThan = const Key._('<', const [60]);
  static const greaterThan = const Key._('>', const [62]);
  static const equals = const Key._('=', const [61]);

  static const one = const Key._('1', const [49]);
  static const two = const Key._('2', const [50]);
  static const three = const Key._('3', const [51]);
  static const four = const Key._('4', const [52]);
  static const five = const Key._('5', const [53]);
  static const six = const Key._('6', const [54]);
  static const seven = const Key._('7', const [55]);
  static const eight = const Key._('8', const [56]);
  static const nine = const Key._('9', const [57]);
  static const zero = const Key._('0', const [48]);

  static const A = const Key._('A', const [65]);
  static const B = const Key._('B', const [66]);
  static const C = const Key._('C', const [67]);
  static const D = const Key._('D', const [68]);
  static const E = const Key._('E', const [69]);
  static const F = const Key._('F', const [70]);
  static const G = const Key._('G', const [71]);
  static const H = const Key._('H', const [72]);
  static const I = const Key._('I', const [73]);
  static const J = const Key._('J', const [74]);
  static const K = const Key._('K', const [75]);
  static const L = const Key._('L', const [76]);
  static const M = const Key._('M', const [77]);
  static const N = const Key._('N', const [78]);
  static const O = const Key._('O', const [79]);
  static const P = const Key._('P', const [80]);
  static const Q = const Key._('Q', const [81]);
  static const R = const Key._('R', const [82]);
  static const S = const Key._('S', const [83]);
  static const T = const Key._('T', const [84]);
  static const U = const Key._('U', const [85]);
  static const V = const Key._('V', const [86]);
  static const W = const Key._('W', const [87]);
  static const X = const Key._('X', const [88]);
  static const Y = const Key._('Y', const [89]);
  static const Z = const Key._('Z', const [90]);

  static const a = const Key._('a', const [97]);
  static const b = const Key._('b', const [98]);
  static const c = const Key._('c', const [99]);
  static const d = const Key._('d', const [100]);
  static const e = const Key._('e', const [101]);
  static const f = const Key._('f', const [102]);
  static const g = const Key._('g', const [103]);
  static const h = const Key._('h', const [104]);
  static const i = const Key._('i', const [105]);
  static const j = const Key._('j', const [106]);
  static const k = const Key._('k', const [107]);
  static const l = const Key._('l', const [108]);
  static const m = const Key._('m', const [109]);
  static const n = const Key._('n', const [110]);
  static const o = const Key._('o', const [111]);
  static const p = const Key._('p', const [112]);
  static const q = const Key._('q', const [113]);
  static const r = const Key._('r', const [114]);
  static const s = const Key._('s', const [115]);
  static const t = const Key._('t', const [116]);
  static const u = const Key._('u', const [117]);
  static const v = const Key._('v', const [118]);
  static const w = const Key._('w', const [119]);
  static const x = const Key._('x', const [120]);
  static const y = const Key._('y', const [121]);
  static const z = const Key._('z', const [122]);

  @override
  String toString() => value;

  @override
  int get hashCode => codes.hashCode;

  @override
  bool operator ==(Object other) => other is Key && other.hashCode == hashCode;
}
