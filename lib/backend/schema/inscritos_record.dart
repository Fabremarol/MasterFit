import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InscritosRecord extends FirestoreRecord {
  InscritosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  List<DocumentReference>? _usuario;
  List<DocumentReference> get usuario => _usuario ?? const [];
  bool hasUsuario() => _usuario != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _usuario = getDataList(snapshotData['usuario']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('inscritos')
          : FirebaseFirestore.instance.collectionGroup('inscritos');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('inscritos').doc();

  static Stream<InscritosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InscritosRecord.fromSnapshot(s));

  static Future<InscritosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InscritosRecord.fromSnapshot(s));

  static InscritosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InscritosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InscritosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InscritosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InscritosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InscritosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInscritosRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class InscritosRecordDocumentEquality implements Equality<InscritosRecord> {
  const InscritosRecordDocumentEquality();

  @override
  bool equals(InscritosRecord? e1, InscritosRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.usuario, e2?.usuario);
  }

  @override
  int hash(InscritosRecord? e) => const ListEquality().hash([e?.usuario]);

  @override
  bool isValidKey(Object? o) => o is InscritosRecord;
}
