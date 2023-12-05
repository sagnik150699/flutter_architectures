import 'dart:ui';

import 'counter_models.dart';

typedef VoidCallback= void Function();

class CounterViewModel{
  final CounterModel _model;
  VoidCallback? onCounterChanged;
  CounterViewModel(this._model);

  int get counter=> _model.value;
  void increment(){
    _model.value++;
    onCounterChanged?.call();
  }
}