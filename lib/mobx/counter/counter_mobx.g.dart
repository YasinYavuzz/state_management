// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxCounter on _MobxCounterBase, Store {
  Computed<int>? _$toplamComputed;

  @override
  int get toplam => (_$toplamComputed ??=
          Computed<int>(() => super.toplam, name: '_MobxCounterBase.toplam'))
      .value;

  late final _$degisken1Atom =
      Atom(name: '_MobxCounterBase.degisken1', context: context);

  @override
  int get degisken1 {
    _$degisken1Atom.reportRead();
    return super.degisken1;
  }

  @override
  set degisken1(int value) {
    _$degisken1Atom.reportWrite(value, super.degisken1, () {
      super.degisken1 = value;
    });
  }

  late final _$degisken2Atom =
      Atom(name: '_MobxCounterBase.degisken2', context: context);

  @override
  int get degisken2 {
    _$degisken2Atom.reportRead();
    return super.degisken2;
  }

  @override
  set degisken2(int value) {
    _$degisken2Atom.reportWrite(value, super.degisken2, () {
      super.degisken2 = value;
    });
  }

  late final _$counterAtom =
      Atom(name: '_MobxCounterBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$mesajAtom =
      Atom(name: '_MobxCounterBase.mesaj', context: context);

  @override
  String get mesaj {
    _$mesajAtom.reportRead();
    return super.mesaj;
  }

  @override
  set mesaj(String value) {
    _$mesajAtom.reportWrite(value, super.mesaj, () {
      super.mesaj = value;
    });
  }

  late final _$_MobxCounterBaseActionController =
      ActionController(name: '_MobxCounterBase', context: context);

  @override
  void metod() {
    final _$actionInfo = _$_MobxCounterBaseActionController.startAction(
        name: '_MobxCounterBase.metod');
    try {
      return super.metod();
    } finally {
      _$_MobxCounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic arttir() {
    final _$actionInfo = _$_MobxCounterBaseActionController.startAction(
        name: '_MobxCounterBase.arttir');
    try {
      return super.arttir();
    } finally {
      _$_MobxCounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic azalt() {
    final _$actionInfo = _$_MobxCounterBaseActionController.startAction(
        name: '_MobxCounterBase.azalt');
    try {
      return super.azalt();
    } finally {
      _$_MobxCounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
degisken1: ${degisken1},
degisken2: ${degisken2},
counter: ${counter},
mesaj: ${mesaj},
toplam: ${toplam}
    ''';
  }
}
