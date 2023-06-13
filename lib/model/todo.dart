class Todo {
  String? id;
  String? text;
  bool isChecked;
  String? month;
  String? weekDay;
  String? startTime;
  String? endTime;

  Todo({
    required this.id,
    required this.text,
    this.isChecked = false,
    String? month,
    String? weekDay,
    required this.endTime,
    required this.startTime,
  })  : month = month ?? (DateTime.now().month).toString(),
        weekDay = weekDay ?? _getDefaultWeekDay();

  static String _getDefaultWeekDay() {
    DateTime now = DateTime.now();
    int weekDayIndex = now.weekday;
    List<String> weekDays = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    return weekDays[weekDayIndex - 1];
  }

  static List<Todo> defaultTodos = [
    Todo(
      id: '1',
      text: 'Task 1',
      weekDay: 'Monday',
      startTime: '9:00 AM',
      endTime: '10:00 AM',
    ),
    Todo(
      id: '2',
      text: 'Task 2',
      weekDay: 'Tuesday',
      startTime: '11:00 AM',
      endTime: '12:00 PM',
    ),
    Todo(
      id: '3',
      text: 'Task 3',
      weekDay: 'Wednesday',
      startTime: '2:00 PM',
      endTime: '3:00 PM',
    ),
    Todo(
      id: '4',
      text: 'Task 4',
      weekDay: 'Thursday',
      startTime: '1:00 PM',
      endTime: '2:00 PM',
    ),
    Todo(
      id: '5',
      text: 'Task 5',
      weekDay: 'Friday',
      startTime: '4:00 PM',
      endTime: '5:00 PM',
    ),
  ];
}
