

import 'package:hive_ce/hive.dart';

class HiveHelper {
  final Map<String, Box> _openedBoxes = {};

  /// Open a box if not already opened
  Future<Box<T>> openBox<T>(String boxName) async {
    if (!_openedBoxes.containsKey(boxName)) {
      final box = await Hive.openBox<T>(boxName);
      _openedBoxes[boxName] = box;
    }
    return _openedBoxes[boxName] as Box<T>;
  }

  /// Close a box by name
  Future<void> closeBox(String boxName) async {
    if (_openedBoxes.containsKey(boxName)) {
      await _openedBoxes[boxName]?.close();
      _openedBoxes.remove(boxName);
    }
  }

  /// Check if a box is already opened
  bool isBoxOpen(String boxName) {
    return _openedBoxes.containsKey(boxName);
  }

  /// Get data from the box
  Future<T?> get<T>(String boxName, String key) async {
    final box = await openBox<T>(boxName);
    return box.get(key);
  }

  /// Save data to the box
  Future<void> put<T>(String boxName, String key, T value) async {
    final box = await openBox<T>(boxName);
    await box.put(key, value);
  }

  /// Delete data from the box
  Future<void> delete<T>(String boxName, String key) async {
    final box = await openBox<T>(boxName);
    await box.delete(key);
  }

  /// Get all keys in a box
  Future<List<String>> getAllKeys(String boxName) async {
    final box = await openBox(boxName);
    return box.keys.cast<String>().toList();
  }

  /// Get all values in a box
  Future<List<T>> getAllValues<T>(String boxName) async {
    final box = await openBox<T>(boxName);
    return box.values.cast<T>().toList();
  }

  /// Clear all data in a box
  Future<void> clear(String boxName) async {
    final box = await openBox(boxName);
    await box.clear();
  }

  /// Clear all data in a box
  Future<bool> containsKey(String boxName, String key) async {
    final box = await openBox(boxName);
    return box.containsKey(key);
  }
}