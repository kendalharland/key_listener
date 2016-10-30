@TestOn('vm')
import 'dart:async';

import 'package:key_listener/key_listener.dart';

import 'package:test/test.dart';

void main() {
  group('$KeyListener', () {
    StreamController<List<int>> input;
    KeyListener listener;

    setUp(() async {
      input = new StreamController<List<int>>();
      listener = new KeyListener(input.stream);
    });

    tearDown(() async {
      listener?.deactivate();
    });

    test(
        'onKey should return a stream that emits whenever the given key is '
        'pressed.', () {
      listener.onKey(Key.A).listen(expectAsync((String keyName) {
            expect(keyName, Key.A.value);
          }, count: 1));
      input.add(Key.B.codes);
      input.add(Key.A.codes);
    });

    test(
        'onKeySet should return a stream that emits whenever the given '
        'keys are pressed.', () async {
      var keyValues = KeySet.comparison.map((key) => key.value);
      var keyCodes = KeySet.comparison.map((key) => key.codes);
      listener.onKeySet(KeySet.comparison).listen(expectAsync((String keyName) {
            expect(keyValues, contains(keyName));
          }, count: 3));
      KeySet.alphaNumeric.map((key) => key.codes).forEach(input.add);
      keyCodes.forEach(input.add);
    });

    test(
        'onUnknownKey should return a stream that emits whenever a key not '
        'handled in this library is pressed.', () {
      listener.onUnknownKey.listen(expectAsync((List<int> codeUnits) {
        expect(codeUnits, orderedEquals([-1, -2, -3]));
      }, count: 1));
      KeySet.all.map((key) => key.codes).forEach(input.add);
      input.add([-1, -2, -3]);
    });
  });
}
