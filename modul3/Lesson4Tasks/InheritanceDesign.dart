void main() {}

class Employee {
  String _name;
  DateTime _started;

  Employee(this._name, this._started);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  DateTime get started => _started;

  set started(DateTime value) {
    _started = value;
  }
}
