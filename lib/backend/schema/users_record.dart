import 'dart:async';

import 'package:collection/collection.dart';

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

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

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

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "grasa" field.
  double? _grasa;
  double get grasa => _grasa ?? 0.0;
  bool hasGrasa() => _grasa != null;

  // "IMC" field.
  double? _imc;
  double get imc => _imc ?? 0.0;
  bool hasImc() => _imc != null;

  // "altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  bool hasAltura() => _altura != null;

  // "nMiembro" field.
  int? _nMiembro;
  int get nMiembro => _nMiembro ?? 0;
  bool hasNMiembro() => _nMiembro != null;

  // "role" field.
  bool? _role;
  bool get role => _role ?? false;
  bool hasRole() => _role != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "membresia" field.
  bool? _membresia;
  bool get membresia => _membresia ?? false;
  bool hasMembresia() => _membresia != null;

  // "fondoImagen" field.
  String? _fondoImagen;
  String get fondoImagen => _fondoImagen ?? '';
  bool hasFondoImagen() => _fondoImagen != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _edad = castToType<int>(snapshotData['edad']);
    _peso = castToType<double>(snapshotData['peso']);
    _grasa = castToType<double>(snapshotData['grasa']);
    _imc = castToType<double>(snapshotData['IMC']);
    _altura = castToType<double>(snapshotData['altura']);
    _nMiembro = castToType<int>(snapshotData['nMiembro']);
    _role = snapshotData['role'] as bool?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _membresia = snapshotData['membresia'] as bool?;
    _fondoImagen = snapshotData['fondoImagen'] as String?;
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
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? edad,
  double? peso,
  double? grasa,
  double? imc,
  double? altura,
  int? nMiembro,
  bool? role,
  bool? isAdmin,
  bool? membresia,
  String? fondoImagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edad': edad,
      'peso': peso,
      'grasa': grasa,
      'IMC': imc,
      'altura': altura,
      'nMiembro': nMiembro,
      'role': role,
      'isAdmin': isAdmin,
      'membresia': membresia,
      'fondoImagen': fondoImagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.edad == e2?.edad &&
        e1?.peso == e2?.peso &&
        e1?.grasa == e2?.grasa &&
        e1?.imc == e2?.imc &&
        e1?.altura == e2?.altura &&
        e1?.nMiembro == e2?.nMiembro &&
        e1?.role == e2?.role &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.membresia == e2?.membresia &&
        e1?.fondoImagen == e2?.fondoImagen;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.edad,
        e?.peso,
        e?.grasa,
        e?.imc,
        e?.altura,
        e?.nMiembro,
        e?.role,
        e?.isAdmin,
        e?.membresia,
        e?.fondoImagen
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
