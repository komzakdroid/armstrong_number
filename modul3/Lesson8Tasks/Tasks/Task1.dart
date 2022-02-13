void main() {
  SoccerPlayer forward = Forward();
  SoccerPlayer midfield = Midfield();
  SoccerPlayer defense = Defense();
  SoccerPlayer goalkeeper = Goalkeeper();
  print("Goal keeper can use hands: ${goalkeeper.canUseHands(true)}");
  SoccerPlayer reserve = Reserve();
  print("Reserve is playing: ${reserve.isPlaying(false)}");
}

class SoccerPlayer {
  bool canUseHands(bool isTrue) => isTrue;

  bool isPlaying(bool isPlay) => isPlay;
}

class Forward extends SoccerPlayer {}

class Midfield extends SoccerPlayer {}

class Defense extends SoccerPlayer {}

class Goalkeeper extends SoccerPlayer {
  @override
  bool canUseHands(bool isTrue) {
    return super.canUseHands(true);
  }
}

class Reserve extends SoccerPlayer {
  @override
  bool isPlaying(bool isPlay) {
    return super.isPlaying(false);
  }
}
