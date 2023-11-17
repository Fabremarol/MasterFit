import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EntrenadoresRecord extends FirestoreRecord {
  EntrenadoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreEntrenador" field.
  String? _nombreEntrenador;
  String get nombreEntrenador => _nombreEntrenador ?? '';
  bool hasNombreEntrenador() => _nombreEntrenador != null;

  // "descripcionEntrenador" field.
  String? _descripcionEntrenador;
  String get descripcionEntrenador => _descripcionEntrenador ?? '';
  bool hasDescripcionEntrenador() => _descripcionEntrenador != null;

  // "imagenEntrenador" field.
  String? _imagenEntrenador;
  String get imagenEntrenador => _imagenEntrenador ?? '';
  bool hasImagenEntrenador() => _imagenEntrenador != null;

  // "linkW" field.
  String? _linkW;
  String get linkW => _linkW ?? '';
  bool hasLinkW() => _linkW != null;

  // "linkF" field.
  String? _linkF;
  String get linkF => _linkF ?? '';
  bool hasLinkF() => _linkF != null;

  // "linkI" field.
  String? _linkI;
  String get linkI => _linkI ?? '';
  bool hasLinkI() => _linkI != null;

  void _initializeFields() {
    _nombreEntrenador = snapshotData['nombreEntrenador'] as String?;
    _descripcionEntrenador = snapshotData['descripcionEntrenador'] as String?;
    _imagenEntrenador = snapshotData['imagenEntrenador'] as String?;
    _linkW = snapshotData['linkW'] as String?;
    _linkF = snapshotData['linkF'] as String?;
    _linkI = snapshotData['linkI'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('entrenadores');

  static Stream<EntrenadoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EntrenadoresRecord.fromSnapshot(s));

  static Future<EntrenadoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EntrenadoresRecord.fromSnapshot(s));

  static EntrenadoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EntrenadoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EntrenadoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EntrenadoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EntrenadoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EntrenadoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEntrenadoresRecordData({
  String? nombreEntrenador,
  String? descripcionEntrenador,
  String? imagenEntrenador,
  String? linkW,
  String? linkF,
  String? linkI,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreEntrenador': nombreEntrenador,
      'descripcionEntrenador': descripcionEntrenador,
      'imagenEntrenador': imagenEntrenador,
      'linkW': linkW,
      'linkF': linkF,
      'linkI': linkI,
    }.withoutNulls,
  );

  return firestoreData;
}

class EntrenadoresRecordDocumentEquality
    implements Equality<EntrenadoresRecord> {
  const EntrenadoresRecordDocumentEquality();

  @override
  bool equals(EntrenadoresRecord? e1, EntrenadoresRecord? e2) {
    return e1?.nombreEntrenador == e2?.nombreEntrenador &&
        e1?.descripcionEntrenador == e2?.descripcionEntrenador &&
        e1?.imagenEntrenador == e2?.imagenEntrenador &&
        e1?.linkW == e2?.linkW &&
        e1?.linkF == e2?.linkF &&
        e1?.linkI == e2?.linkI;
  }

  @override
  int hash(EntrenadoresRecord? e) => const ListEquality().hash([
        e?.nombreEntrenador,
        e?.descripcionEntrenador,
        e?.imagenEntrenador,
        e?.linkW,
        e?.linkF,
        e?.linkI
      ]);

  @override
  bool isValidKey(Object? o) => o is EntrenadoresRecord;
}
