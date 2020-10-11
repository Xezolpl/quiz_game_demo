import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
export 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:path/path.dart';

const String DATABASE_NAME = 'data.db';

@module
abstract class DatabaseSingleton {
  static final Future<Database> _database =
      openDatabase(DATABASE_NAME, version: 1);

  @preResolve
  Future<Database> get database => _database;
}

Future<void> importDatabaseIfDoesntExist() async {
  // Construct the path to the app's writable database file:
  var dbDir = await getDatabasesPath();
  var dbPath = join(dbDir, DATABASE_NAME);

  if (!await databaseExists(dbPath)) {
    log("Database doesn't exist. Copying from asset.");

    // Make sure the parent directory exists
    try {
      await Directory(dirname(dbPath)).create(recursive: true);
    } catch (_) {}

    // Copy from asset
    ByteData data = await rootBundle.load(join("assets", "app.db"));
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

    // Write and flush the bytes written
    await File(dbPath).writeAsBytes(bytes, flush: true);
  }
}
