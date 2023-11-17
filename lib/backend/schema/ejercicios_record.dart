import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EjerciciosRecord extends FirestoreRecord {
  EjerciciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreEjercicio" field.
  String? _nombreEjercicio;
  String get nombreEjercicio => _nombreEjercicio ?? '';
  bool hasNombreEjercicio() => _nombreEjercicio != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "parte_cuerpo" field.
  String? _parteCuerpo;
  String get parteCuerpo => _parteCuerpo ?? '';
  bool hasParteCuerpo() => _parteCuerpo != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "sets" field.
  int? _sets;
  int get sets => _sets ?? 0;
  bool hasSets() => _sets != null;

  // "repeticiones" field.
  int? _repeticiones;
  int get repeticiones => _repeticiones ?? 0;
  bool hasRepeticiones() => _repeticiones != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombreEjercicio = snapshotData['nombreEjercicio'] as String?;
    _categoria = snapshotData['categoria'] as String?;
    _parteCuerpo = snapshotData['parte_cuerpo'] as String?;
    _video = snapshotData['video'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _sets = castToType<int>(snapshotData['sets']);
    _repeticiones = castToType<int>(snapshotData['repeticiones']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ejercicios')
          : FirebaseFirestore.instance.collectionGroup('ejercicios');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('ejercicios').doc();

  static Stream<EjerciciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EjerciciosRecord.fromSnapshot(s));

  static Future<EjerciciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EjerciciosRecord.fromSnapshot(s));

  static EjerciciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EjerciciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EjerciciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EjerciciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EjerciciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EjerciciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEjerciciosRecordData({
  String? nombreEjercicio,
  String? categoria,
  String? parteCuerpo,
  String? video,
  String? imagen,
  int? sets,
  int? repeticiones,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreEjercicio': nombreEjercicio,
      'categoria': categoria,
      'parte_cuerpo': parteCuerpo,
      'video': video,
      'imagen': imagen,
      'sets': sets,
      'repeticiones': repeticiones,
    }.withoutNulls,
  );

  return firestoreData;
}

class EjerciciosRecordDocumentEquality implements Equality<EjerciciosRecord> {
  const EjerciciosRecordDocumentEquality();

  @override
  bool equals(EjerciciosRecord? e1, EjerciciosRecord? e2) {
    return e1?.nombreEjercicio == e2?.nombreEjercicio &&
        e1?.categoria == e2?.categoria &&
        e1?.parteCuerpo == e2?.parteCuerpo &&
        e1?.video == e2?.video &&
        e1?.imagen == e2?.imagen &&
        e1?.sets == e2?.sets &&
        e1?.repeticiones == e2?.repeticiones;
  }

  @override
  int hash(EjerciciosRecord? e) => const ListEquality().hash([
        e?.nombreEjercicio,
        e?.categoria,
        e?.parteCuerpo,
        e?.video,
        e?.imagen,
        e?.sets,
        e?.repeticiones
      ]);

  @override
  bool isValidKey(Object? o) => o is EjerciciosRecord;
}
