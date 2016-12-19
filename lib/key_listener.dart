import 'dart:async';

import 'package:key_listener/src/key.dart';
import 'package:key_listener/src/key_set.dart';
import 'package:collection/collection.dart';

export 'package:key_listener/src/key.dart';
export 'package:key_listener/src/key_set.dart';

/// A [Stream] filter that maps input to keypresses.
///
/// If a key is not handled in this library, its key presses can still be
/// consumed by subscribing to the [onUnknownKey] stream.
class KeyListener {
  static final _keyCodeEq = const ListEquality().equals;
  final StreamController<Key> _onKeyController =
      new StreamController<Key>.broadcast();
  final StreamController<List<int>> _onUnknownKeyController =
      new StreamController<List<int>>.broadcast();
  StreamSubscription<List<int>> _inputSub;

  /// Creates a [KeyListener] which listens for keypresses on the given input
  /// stream.
  ///
  /// Clients should call [deactivate] when they are finished.
  KeyListener(Stream<List<int>> input) {
    _inputSub = input.listen((List<int> codeUnits) {
      var key = KeySet.all.firstWhere(
          (Key key) => _keyCodeEq(key.codes, codeUnits),
          orElse: () => null);
      if (key != null) {
        _onKeyController.add(key);
      } else {
        _onUnknownKeyController.add(codeUnits);
      }
    });
  }

  /// Emits the character codes for a key not defined in this library, whenever
  /// such a key is pressed.
  Stream<List<int>> get onUnknownKey => _onUnknownKeyController.stream;

  /// Returns a stream that emits the name of [key] whenever [key] is pressed.
  Stream<String> onKey(Key key) =>
      _onKeyController.stream.where((Key k) => k == key).map((k) => k.value);

  /// Returns a stream that emits whenever a [Key] from [keys] is pressed.
  ///
  /// For common sets of keys, see the class [KeySet].
  Stream<String> onKeySet(List<Key> keys) =>
      _onKeyController.stream.where(keys.contains).map((k) => k.value);

  /// Restores standard input and stops listening for key presses.
  ///
  /// Clients should ensure they call this after calling [activate].
  void deactivate() {
    _inputSub.cancel();
    _onKeyController.close();
    _onUnknownKeyController.close();
  }
}
