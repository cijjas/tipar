import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmployeesRecord extends FirestoreRecord {
  EmployeesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "id" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  bool hasId() => _id != null;

  // "avg_rating" field.
  double? _avgRating;
  double get avgRating => _avgRating ?? 0.0;
  bool hasAvgRating() => _avgRating != null;

  // "total_tips" field.
  double? _totalTips;
  double get totalTips => _totalTips ?? 0.0;
  bool hasTotalTips() => _totalTips != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photo = snapshotData['photo'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _id = snapshotData['id'] as DocumentReference?;
    _avgRating = castToType<double>(snapshotData['avg_rating']);
    _totalTips = castToType<double>(snapshotData['total_tips']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('employees')
          : FirebaseFirestore.instance.collectionGroup('employees');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('employees').doc();

  static Stream<EmployeesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmployeesRecord.fromSnapshot(s));

  static Future<EmployeesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmployeesRecord.fromSnapshot(s));

  static EmployeesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmployeesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmployeesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmployeesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmployeesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmployeesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmployeesRecordData({
  String? firstName,
  String? lastName,
  String? displayName,
  String? photo,
  String? phoneNumber,
  DocumentReference? id,
  double? avgRating,
  double? totalTips,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'first_name': firstName,
      'last_name': lastName,
      'display_name': displayName,
      'photo': photo,
      'phone_number': phoneNumber,
      'id': id,
      'avg_rating': avgRating,
      'total_tips': totalTips,
    }.withoutNulls,
  );

  return firestoreData;
}
