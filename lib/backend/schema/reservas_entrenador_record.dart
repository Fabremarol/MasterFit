import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservasEntrenadorRecord extends FirestoreRecord {
  ReservasEntrenadorRecord._(
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
      FirebaseFirestore.instance.collection('reservasEntrenador');

  static Stream<ReservasEntrenadorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservasEntrenadorRecord.fromSnapshot(s));

  static Future<ReservasEntrenadorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ReservasEntrenadorRecord.fromSnapshot(s));

  static ReservasEntrenadorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservasEntrenadorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservasEntrenadorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservasEntrenadorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservasEntrenadorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservasEntrenadorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservasEntrenadorRecordData({
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

class ReservasEntrenadorRecordDocumentEquality
    implements Equality<ReservasEntrenadorRecord> {
  const ReservasEntrenadorRecordDocumentEquality();

  @override
  bool equals(ReservasEntrenadorRecord? e1, ReservasEntrenadorRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.hora == e2?.hora &&
        e1?.dia == e2?.dia;
  }

  @override
  int hash(ReservasEntrenadorRecord? e) =>
      const ListEquality().hash([e?.usuario, e?.hora, e?.dia]);

  @override
  bool isValidKey(Object? o) => o is ReservasEntrenadorRecord;
}
