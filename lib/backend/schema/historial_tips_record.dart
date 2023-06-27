import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorialTipsRecord extends FirestoreRecord {
  HistorialTipsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sender-name" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "tip-amount" field.
  double? _tipAmount;
  double get tipAmount => _tipAmount ?? 0.0;
  bool hasTipAmount() => _tipAmount != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "payment-method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "is-receiving" field.
  bool? _isReceiving;
  bool get isReceiving => _isReceiving ?? false;
  bool hasIsReceiving() => _isReceiving != null;

  // "receiver-name" field.
  String? _receiverName;
  String get receiverName => _receiverName ?? '';
  bool hasReceiverName() => _receiverName != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _senderName = snapshotData['sender-name'] as String?;
    _tipAmount = castToType<double>(snapshotData['tip-amount']);
    _message = snapshotData['message'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _paymentMethod = snapshotData['payment-method'] as String?;
    _isReceiving = snapshotData['is-receiving'] as bool?;
    _receiverName = snapshotData['receiver-name'] as String?;
    _points = castToType<int>(snapshotData['points']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('historial_tips')
          : FirebaseFirestore.instance.collectionGroup('historial_tips');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('historial_tips').doc();

  static Stream<HistorialTipsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistorialTipsRecord.fromSnapshot(s));

  static Future<HistorialTipsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistorialTipsRecord.fromSnapshot(s));

  static HistorialTipsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistorialTipsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistorialTipsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistorialTipsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistorialTipsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistorialTipsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistorialTipsRecordData({
  String? senderName,
  double? tipAmount,
  String? message,
  DateTime? time,
  String? paymentMethod,
  bool? isReceiving,
  String? receiverName,
  int? points,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender-name': senderName,
      'tip-amount': tipAmount,
      'message': message,
      'time': time,
      'payment-method': paymentMethod,
      'is-receiving': isReceiving,
      'receiver-name': receiverName,
      'points': points,
    }.withoutNulls,
  );

  return firestoreData;
}
