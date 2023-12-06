// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RutinaStruct extends FFFirebaseStruct {
  RutinaStruct({
    String? nombreRutina,
    List<EjercicioStruct>? ejercicios,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombreRutina = nombreRutina,
        _ejercicios = ejercicios,
        super(firestoreUtilData);

  // "nombreRutina" field.
  String? _nombreRutina;
  String get nombreRutina => _nombreRutina ?? '';
  set nombreRutina(String? val) => _nombreRutina = val;
  bool hasNombreRutina() => _nombreRutina != null;

  // "ejercicios" field.
  List<EjercicioStruct>? _ejercicios;
  List<EjercicioStruct> get ejercicios => _ejercicios ?? const [];
  set ejercicios(List<EjercicioStruct>? val) => _ejercicios = val;
  void updateEjercicios(Function(List<EjercicioStruct>) updateFn) =>
      updateFn(_ejercicios ??= []);
  bool hasEjercicios() => _ejercicios != null;

  static RutinaStruct fromMap(Map<String, dynamic> data) => RutinaStruct(
        nombreRutina: data['nombreRutina'] as String?,
        ejercicios: getStructList(
          data['ejercicios'],
          EjercicioStruct.fromMap,
        ),
      );

  static RutinaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RutinaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nombreRutina': _nombreRutina,
        'ejercicios': _ejercicios?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombreRutina': serializeParam(
          _nombreRutina,
          ParamType.String,
        ),
        'ejercicios': serializeParam(
          _ejercicios,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static RutinaStruct fromSerializableMap(Map<String, dynamic> data) =>
      RutinaStruct(
        nombreRutina: deserializeParam(
          data['nombreRutina'],
          ParamType.String,
          false,
        ),
        ejercicios: deserializeStructParam<EjercicioStruct>(
          data['ejercicios'],
          ParamType.DataStruct,
          true,
          structBuilder: EjercicioStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RutinaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RutinaStruct &&
        nombreRutina == other.nombreRutina &&
        listEquality.equals(ejercicios, other.ejercicios);
  }

  @override
  int get hashCode => const ListEquality().hash([nombreRutina, ejercicios]);
}

RutinaStruct createRutinaStruct({
  String? nombreRutina,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RutinaStruct(
      nombreRutina: nombreRutina,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RutinaStruct? updateRutinaStruct(
  RutinaStruct? rutina, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    rutina
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRutinaStructData(
  Map<String, dynamic> firestoreData,
  RutinaStruct? rutina,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rutina == null) {
    return;
  }
  if (rutina.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && rutina.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final rutinaData = getRutinaFirestoreData(rutina, forFieldValue);
  final nestedData = rutinaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = rutina.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRutinaFirestoreData(
  RutinaStruct? rutina, [
  bool forFieldValue = false,
]) {
  if (rutina == null) {
    return {};
  }
  final firestoreData = mapToFirestore(rutina.toMap());

  // Add any Firestore field values
  rutina.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRutinaListFirestoreData(
  List<RutinaStruct>? rutinas,
) =>
    rutinas?.map((e) => getRutinaFirestoreData(e, true)).toList() ?? [];
