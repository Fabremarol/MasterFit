import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TiendaRopaRecord extends FirestoreRecord {
  TiendaRopaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tiendaRopa');

  static Stream<TiendaRopaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TiendaRopaRecord.fromSnapshot(s));

  static Future<TiendaRopaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TiendaRopaRecord.fromSnapshot(s));

  static TiendaRopaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TiendaRopaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TiendaRopaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TiendaRopaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TiendaRopaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TiendaRopaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTiendaRopaRecordData({
  String? name,
  String? description,
  double? price,
  int? quantity,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'quantity': quantity,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class TiendaRopaRecordDocumentEquality implements Equality<TiendaRopaRecord> {
  const TiendaRopaRecordDocumentEquality();

  @override
  bool equals(TiendaRopaRecord? e1, TiendaRopaRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.quantity == e2?.quantity &&
        e1?.image == e2?.image;
  }

  @override
  int hash(TiendaRopaRecord? e) => const ListEquality()
      .hash([e?.name, e?.description, e?.price, e?.quantity, e?.image]);

  @override
  bool isValidKey(Object? o) => o is TiendaRopaRecord;
}
