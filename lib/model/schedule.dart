import 'package:drift/drift.dart';

class Schedules extends Table {
  // PRIMARY KEY
  // CONTENT, DATE, STARTTIME, ENDTIME, COLORID, CREATEDAT
  // 'asdff', 2024-03-19, 13, 15, 1, 2024-03-20
  // 1
  // 2
  // 3
  IntColumn get id => integer().autoIncrement()();

  // 내용
  TextColumn get content => text()();

  // 일정 날짜
  DateTimeColumn get date => dateTime()();

  // 시작 시간
  IntColumn get startTime => integer()();

  // 끝 시간
  IntColumn get endTime => integer()();

  // Category Color Table ID
  IntColumn get colorId => integer()();

  // 생성날짜
  DateTimeColumn get createdAt => dateTime().clientDefault(
        () => DateTime.now(),
      )();
}
