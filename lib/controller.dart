import 'Model.dart';

class CounterController {
  final Model _model;

  CounterController(this._model);

  int get counter => _model.counter;

  void incrementCounter() {
    _model.incrementCounter();
  }
}
