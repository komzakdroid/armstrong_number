void main() {
  Park park = Park("Happy Land", 21.277777, -150.123321);
  print(park.toString());
}

abstract class Location {
  var _lat, _lng;

  Location(this._lat, this._lng);

  String toString();
}

class Park extends Location {
  String _name;

  Park(this._name, var lat, var lng) : super(lat, lng);

  String toString() {
    return "$_name, $_lat, $_lng ";
  }
}
