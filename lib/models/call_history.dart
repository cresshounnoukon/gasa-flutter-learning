import 'package:calavigasa2025/models/enums/call_type.dart';
import 'package:calavigasa2025/models/enums/decision.dart';
import 'package:calavigasa2025/models/person.dart';

class CallHistory {
  final Person caller;
  final Person receiver;
  final CallType type;
  final Decision decision;
  final DateTime date;
  final int duration;

  CallHistory(
      {required this.caller,
      required this.receiver,
      required this.type,
      required this.decision,
      required this.date,
      required this.duration});

  @override
  String toString() {
    return 'CallHistory{caller: $caller, receiver: $receiver, type: $type, decision: $decision, date: $date, duration: $duration}';
  }
}
