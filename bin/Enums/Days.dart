enum Day { Mondays, Fridays, Midweek, Weekends }

void main() {
  Days days = Days(Day.Fridays);
  days.dayIsLike(days.day);
}

class Days {
  Day day;

  Days(this.day);

  void dayIsLike(Day day) {
    switch (day) {
      case Day.Mondays:
        print("Mondays are bad.");
        break;
      case Day.Fridays:
        print("Fridays are better.");
        break;
      case Day.Midweek:
        print("Midweek days are so-so");
        break;
      case Day.Weekends:
        print("Weekends are best.");
        break;
    }
  }
}
