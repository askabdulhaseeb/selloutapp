enum Day {
  monday('Monday', 'Mon', 'monday', DateTime.monday),
  tuesday('Tuesday', 'Tue', 'tuesday', DateTime.tuesday),
  wednesday('Wednesday', 'Wed', 'wednesday', DateTime.wednesday),
  thursday('Thursday', 'Thu', 'thursday', DateTime.thursday),
  friday('Friday', 'Fri', 'friday', DateTime.friday),
  saturday('Saturday', 'Sat', 'saturday', DateTime.saturday),
  sunday('Sunday', 'Sun', 'sunday', DateTime.sunday);

  const Day(this.title, this.short, this.json, this.number);
  final String title;
  final String short;
  final String json;
  final int number;
}

class DayFun {
  static Day fromMap(String expression) {
    switch (expression) {
      case 'monday':
        return Day.monday;
      case 'tuesday':
        return Day.tuesday;
      case 'wednesday':
        return Day.wednesday;
      case 'thursday':
        return Day.thursday;
      case 'friday':
        return Day.friday;
      case 'saturday':
        return Day.saturday;
      case 'sunday':
        return Day.sunday;
      default:
        return Day.sunday;
    }
  }
}
