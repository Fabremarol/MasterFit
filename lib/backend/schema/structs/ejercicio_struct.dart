// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EjercicioStruct extends FFFirebaseStruct {
  EjercicioStruct({
    DocumentReference? ejercicioRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ejercicioRef = ejercicioRef,
        super(firestoreUtilData);

  // "ejercicioRef" field.
  DocumentReference? _ejercicioRef;
  DocumentReference? get ejercicioRef => _ejercicioRef;
  set ejercicioRef(DocumentReference? val) => _ejercicioRef = val;
  bool hasEjercicioRef() => _ejercicioRef != null;

  static EjercicioStruct fromMap(Map<String, dynamic> data) => EjercicioStruct(
        ejercicioRef: data['ejercicioRef'] as DocumentReference?,
      );

  static EjercicioStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? EjercicioStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'ejercicioRef': _ejercicioRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ejercicioRef': serializeParam(
          _ejercicioRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static EjercicioStruct fromSerializableMap(Map<String, dynamic> data) =>
      EjercicioStruct(
        ejercicioRef: deserializeParam(
          data['ejercicioRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['rutinas', 'ejercicios'],
        ),
      );

  @override
  String toString() => 'EjercicioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EjercicioStruct && ejercicioRef == other.ejercicioRef;
  }

  @override
  int get hashCode => const ListEquality().hash([ejercicioRef]);
}

EjercicioStruct createEjercicioStruct({
  DocumentReference? ejercicioRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EjercicioStruct(
      ejercicioRef: ejercicioRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EjercicioStruct? updateEjercicioStruct(
  EjercicioStruct? ejercicio, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ejercicio
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEjercicioStructData(
  Map<String, dynamic> firestoreData,
  EjercicioStruct? ejercicio,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ejercicio == null) {
    return;
  }
  if (ejercicio.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ejercicio.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ejercicioData = getEjercicioFirestoreData(ejercicio, forFieldValue);
  final nestedData = ejercicioData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ejercicio.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEjercicioFirestoreData(
  EjercicioStruct? ejercicio, [
  bool forFieldValue = false,
]) {
  if (ejercicio == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ejercicio.toMap());

  // Add any Firestore field values
  ejercicio.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEjercicioListFirestoreData(
  List<EjercicioStruct>? ejercicios,
) =>
    ejercicios?.map((e) => getEjercicioFirestoreData(e, true)).toList() ?? [];
