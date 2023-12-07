import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservasActividadesRecord extends FirestoreRecord {
  ReservasActividadesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "hora" field.
  String? _hora;
  String get hora => _hora ?? '';
  bool hasHora() => _hora != null;

  // "dia" field.
  String? _dia;
  String get dia => _dia ?? '';
  bool hasDia() => _dia != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _hora = snapshotData['hora'] as String?;
    _dia = snapshotData['dia'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservasActividades');

  static Stream<ReservasActividadesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservasActividadesRecord.fromSnapshot(s));

  static Future<ReservasActividadesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ReservasActividadesRecord.fromSnapshot(s));

  static ReservasActividadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservasActividadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservasActividadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservasActividadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservasActividadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservasActividadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservasActividadesRecordData({
  DocumentReference? usuario,
  String? hora,
  String? dia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'hora': hora,
      'dia': dia,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservasActividadesRecordDocumentEquality
    implements Equality<ReservasActividadesRecord> {
  const ReservasActividadesRecordDocumentEquality();

  @override
  bool equals(ReservasActividadesRecord? e1, ReservasActividadesRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.hora == e2?.hora &&
        e1?.dia == e2?.dia;
  }

  @override
  int hash(ReservasActividadesRecord? e) =>
      const ListEquality().hash([e?.usuario, e?.hora, e?.dia]);

  @override
  bool isValidKey(Object? o) => o is ReservasActividadesRecord;
}
