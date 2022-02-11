void main() {}

class Picture {
  var title, price;

  void updatePrice(value) {
    price = value;
  }
}

class Photograph extends Picture {
  var photographer, camera, speed, aperture;

  void alterContrast() {}
}

class Painting extends Picture {
  var artist, type, owner;

  void printProvenance() {}
}
