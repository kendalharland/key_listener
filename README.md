[![Build Status](https://travis-ci.org/kharland/key_listener.svg?branch=master)](https://travis-ci.org/kharland/key_listener)
Key Listener
--
 
A library for transforming a stream of character code units into Key presses.

## Quickstart
You can bind an input stream such as stdin to start listening for key presses.
```dart
new KeyListener(stdin).onKey(Key.A).listen((String keyName) {
    print('key $keyName was pressed');
});
```

Groups of keys can be monitored on a single stream.

```dart
new KeyListener(stdin).onKeySet([Key.A, Key.B]).listen((String keyName) {
    print('key $keyName was pressed');
});

// Or use one of the common key sets.
new KeyListener(stdin).onKeySet(KeySet.alphanumeric).listen((String keyName) {
    print('key $keyName was pressed');
});
```

If a key is missing from this library, its character codes will be emitted on 
`KeyListener.onUnknownKey` whenever the key is pressed.

Call `KeyListener.deactivate` when finished to close the input stream subscription.


