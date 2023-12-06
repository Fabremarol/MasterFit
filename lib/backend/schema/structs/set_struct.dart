// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SetStruct extends FFFirebaseStruct {
  SetStruct({
    int? repeticiones,
    int? sets,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _repeticiones = repeticiones,
        _sets = sets,
        super(firestoreUtilData);

  // "repeticiones" field.
  int? _repeticiones;
  int get repeticiones => _repeticiones ?? 0;
  set repeticiones(int? val) => _repeticiones = val;
  void incrementRepeticiones(int amount) =>
      _repeticiones = repeticiones + amount;
  bool hasRepeticiones() => _repeticiones != null;

  // "sets" field.
  int? _sets;
  int get sets => _sets ?? 0;
  set sets(int? val) => _sets = val;
  void incrementSets(int amount) => _sets = sets + amount;
  bool hasSets() => _sets != null;

  static SetStruct fromMap(Map<String, dynamic> data) => SetStruct(
        repeticiones: castToType<int>(data['repeticiones']),
        sets: castToType<int>(data['sets']),
      );

  static SetStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SetStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'repeticiones': _repeticiones,
        'sets': _sets,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'repeticiones': serializeParam(
          _repeticiones,
          ParamType.int,
        ),
        'sets': serializeParam(
          _sets,
          ParamType.int,
        ),
      }.withoutNulls;

  static SetStruct fromSerializableMap(Map<String, dynamic> data) => SetStruct(
        repeticiones: deserializeParam(
          data['repeticiones'],
          ParamType.int,
          false,
        ),
        sets: deserializeParam(
          data['sets'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SetStruct &&
        repeticiones == other.repeticiones &&
        sets == other.sets;
  }

  @override
  int get hashCode => const ListEquality().hash([repeticiones, sets]);
}

SetStruct createSetStruct({
  int? repeticiones,
  int? sets,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SetStruct(
      repeticiones: repeticiones,
      sets: sets,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SetStruct? updateSetStruct(
  SetStruct? set, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    set
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSetStructData(
  Map<String, dynamic> firestoreData,
  SetStruct? set,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (set == null) {
    return;
  }
  if (set.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && set.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final setData = getSetFirestoreData(set, forFieldValue);
  final nestedData = setData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = set.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSetFirestoreData(
  SetStruct? set, [
  bool forFieldValue = false,
]) {
  if (set == null) {
    return {};
  }
  final firestoreData = mapToFirestore(set.toMap());

  // Add any Firestore field values
  set.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSetListFirestoreData(
  List<SetStruct>? sets,
) =>
    sets?.map((e) => getSetFirestoreData(e, true)).toList() ?? [];
