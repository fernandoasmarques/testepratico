// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicos_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ServicosController = BindInject(
  (i) => ServicosController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServicosController on _ServicosControllerBase, Store {
  final _$valueAtom = Atom(name: '_ServicosControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_ServicosControllerBaseActionController =
      ActionController(name: '_ServicosControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_ServicosControllerBaseActionController.startAction(
        name: '_ServicosControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ServicosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
