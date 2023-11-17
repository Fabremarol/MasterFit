import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RutinasRecord extends FirestoreRecord {
  RutinasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreRutina" field.
  String? _nombreRutina;
  String get nombreRutina => _nombreRutina ?? '';
  bool hasNombreRutina() => _nombreRutina != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "sets" field.
  SetStruct? _sets;
  SetStruct get sets => _sets ?? SetStruct();
  bool hasSets() => _sets != null;

  void _initializeFields() {
    _nombreRutina = snapshotData['nombreRutina'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _sets = SetStruct.maybeFromMap(snapshotData['sets']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rutinas');

  static Stream<RutinasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RutinasRecord.fromSnapshot(s));

  static Future<RutinasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RutinasRecord.fromSnapshot(s));

  static RutinasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RutinasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RutinasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RutinasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RutinasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RutinasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRutinasRecordData({
  String? nombreRutina,
  String? descripcion,
  String? imagen,
  SetStruct? sets,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreRutina': nombreRutina,
      'descripcion': descripcion,
      'imagen': imagen,
      'sets': SetStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "sets" field.
  addSetStructData(firestoreData, sets, 'sets');

  return firestoreData;
}

class RutinasRecordDocumentEquality implements Equality<RutinasRecord> {
  const RutinasRecordDocumentEquality();

  @override
  bool equals(RutinasRecord? e1, RutinasRecord? e2) {
    return e1?.nombreRutina == e2?.nombreRutina &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagen == e2?.imagen &&
        e1?.sets == e2?.sets;
  }

  @override
  int hash(RutinasRecord? e) => const ListEquality()
      .hash([e?.nombreRutina, e?.descripcion, e?.imagen, e?.sets]);

  @override
  bool isValidKey(Object? o) => o is RutinasRecord;
}
