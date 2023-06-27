import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "isEmployee" field.
  bool? _isEmployee;
  bool get isEmployee => _isEmployee ?? false;
  bool hasIsEmployee() => _isEmployee != null;

  // "works_in" field.
  String? _worksIn;
  String get worksIn => _worksIn ?? '';
  bool hasWorksIn() => _worksIn != null;

  // "avg_rating" field.
  double? _avgRating;
  double get avgRating => _avgRating ?? 0.0;
  bool hasAvgRating() => _avgRating != null;

  // "total_tips" field.
  double? _totalTips;
  double get totalTips => _totalTips ?? 0.0;
  bool hasTotalTips() => _totalTips != null;

  // "quantity_tips" field.
  int? _quantityTips;
  int get quantityTips => _quantityTips ?? 0;
  bool hasQuantityTips() => _quantityTips != null;

  // "total_points" field.
  int? _totalPoints;
  int get totalPoints => _totalPoints ?? 0;
  bool hasTotalPoints() => _totalPoints != null;

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  bool hasLevel() => _level != null;

  // "isOwner" field.
  bool? _isOwner;
  bool get isOwner => _isOwner ?? false;
  bool hasIsOwner() => _isOwner != null;

  // "my_business" field.
  DocumentReference? _myBusiness;
  DocumentReference? get myBusiness => _myBusiness;
  bool hasMyBusiness() => _myBusiness != null;

  // "works_at" field.
  DocumentReference? _worksAt;
  DocumentReference? get worksAt => _worksAt;
  bool hasWorksAt() => _worksAt != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _city = snapshotData['city'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _isEmployee = snapshotData['isEmployee'] as bool?;
    _worksIn = snapshotData['works_in'] as String?;
    _avgRating = castToType<double>(snapshotData['avg_rating']);
    _totalTips = castToType<double>(snapshotData['total_tips']);
    _quantityTips = castToType<int>(snapshotData['quantity_tips']);
    _totalPoints = castToType<int>(snapshotData['total_points']);
    _level = castToType<int>(snapshotData['level']);
    _isOwner = snapshotData['isOwner'] as bool?;
    _myBusiness = snapshotData['my_business'] as DocumentReference?;
    _worksAt = snapshotData['works_at'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? firstName,
  String? lastName,
  String? city,
  String? displayName,
  bool? isEmployee,
  String? worksIn,
  double? avgRating,
  double? totalTips,
  int? quantityTips,
  int? totalPoints,
  int? level,
  bool? isOwner,
  DocumentReference? myBusiness,
  DocumentReference? worksAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'first_name': firstName,
      'last_name': lastName,
      'city': city,
      'display_name': displayName,
      'isEmployee': isEmployee,
      'works_in': worksIn,
      'avg_rating': avgRating,
      'total_tips': totalTips,
      'quantity_tips': quantityTips,
      'total_points': totalPoints,
      'level': level,
      'isOwner': isOwner,
      'my_business': myBusiness,
      'works_at': worksAt,
    }.withoutNulls,
  );

  return firestoreData;
}
