import 'dart:math';

abstract class Instrument {
  String getName();
  void playSound(String sound);
}

class Guitar extends Instrument with Tunable {
  String name;

  Guitar(this.name);

  @override
  String getName() {
    return name;
  }

  // play song
  @override
  String playSound(String sound) {
    return sound;
  }
}

class Piano extends Instrument with Tunable {
  String name;

  Piano(this.name);

  @override
  String getName() {
    return name;
  }

// play song
  @override
  String playSound(String sound) {
    return sound;
  }
}

mixin Tunable on Instrument {
  // up sound
  void tuneUp() {
    print("Up sound");
  }

  // down sound
  void tuneDown() {
    print("Down sound");
  }
}

void main() {
  List<Instrument> band = [Guitar("Gitara"), Piano("Piano")];

  for (var ins in band) {
    print("${ins.getName()} is plating!");

    if (ins is Tunable) {
      if (Random().nextBool()) {
        ins.tuneUp();
      } else {
        ins.tuneDown();
      }
    }
  }
}
