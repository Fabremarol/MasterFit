import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActividadesRecord extends FirestoreRecord {
  ActividadesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreActividad" field.
  String? _nombreActividad;
  String get nombreActividad => _nombreActividad ?? '';
  bool hasNombreActividad() => _nombreActividad != null;

  // "descripcionActividad" field.
  String? _descripcionActividad;
  String get descripcionActividad => _descripcionActividad ?? '';
  bool hasDescripcionActividad() => _descripcionActividad != null;

  // "horarioActividad" field.
  DateTime? _horarioActividad;
  DateTime? get horarioActividad => _horarioActividad;
  bool hasHorarioActividad() => _horarioActividad != null;

  // "intensidadActividad" field.
  String? _intensidadActividad;
  String get intensidadActividad => _intensidadActividad ?? '';
  bool hasIntensidadActividad() => _intensidadActividad != null;

  // "fechaActividad" field.
  DateTime? _fechaActividad;
  DateTime? get fechaActividad => _fechaActividad;
  bool hasFechaActividad() => _fechaActividad != null;

  void _initializeFields() {
    _nombreActividad = snapshotData['nombreActividad'] as String?;
    _descripcionActividad = snapshotData['descripcionActividad'] as String?;
    _horarioActividad = snapshotData['horarioActividad'] as DateTime?;
    _intensidadActividad = snapshotData['intensidadActividad'] as String?;
    _fechaActividad = snapshotData['fechaActividad'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('actividades');

  static Stream<ActividadesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActividadesRecord.fromSnapshot(s));

  static Future<ActividadesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActividadesRecord.fromSnapshot(s));

  static ActividadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActividadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActividadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActividadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActividadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActividadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActividadesRecordData({
  String? nombreActividad,
  String? descripcionActividad,
  DateTime? horarioActividad,
  String? intensidadActividad,
  DateTime? fechaActividad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreActividad': nombreActividad,
      'descripcionActividad': descripcionActividad,
      'horarioActividad': horarioActividad,
      'intensidadActividad': intensidadActividad,
      'fechaActividad': fechaActividad,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActividadesRecordDocumentEquality implements Equality<ActividadesRecord> {
  const ActividadesRecordDocumentEquality();

  @override
  bool equals(ActividadesRecord? e1, ActividadesRecord? e2) {
    return e1?.nombreActividad == e2?.nombreActividad &&
        e1?.descripcionActividad == e2?.descripcionActividad &&
        e1?.horarioActividad == e2?.horarioActividad &&
        e1?.intensidadActividad == e2?.intensidadActividad &&
        e1?.fechaActividad == e2?.fechaActividad;
  }

  @override
  int hash(ActividadesRecord? e) => const ListEquality().hash([
        e?.nombreActividad,
        e?.descripcionActividad,
        e?.horarioActividad,
        e?.intensidadActividad,
        e?.fechaActividad
      ]);

  @override
  bool isValidKey(Object? o) => o is ActividadesRecord;
}
