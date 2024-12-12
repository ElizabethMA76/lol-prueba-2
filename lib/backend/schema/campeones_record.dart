import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CampeonesRecord extends FirestoreRecord {
  CampeonesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NombreC" field.
  String? _nombreC;
  String get nombreC => _nombreC ?? '';
  bool hasNombreC() => _nombreC != null;

  // "RollC" field.
  String? _rollC;
  String get rollC => _rollC ?? '';
  bool hasRollC() => _rollC != null;

  // "Fuerte" field.
  String? _fuerte;
  String get fuerte => _fuerte ?? '';
  bool hasFuerte() => _fuerte != null;

  // "Counter" field.
  String? _counter;
  String get counter => _counter ?? '';
  bool hasCounter() => _counter != null;

  // "Malo" field.
  String? _malo;
  String get malo => _malo ?? '';
  bool hasMalo() => _malo != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _nombreC = snapshotData['NombreC'] as String?;
    _rollC = snapshotData['RollC'] as String?;
    _fuerte = snapshotData['Fuerte'] as String?;
    _counter = snapshotData['Counter'] as String?;
    _malo = snapshotData['Malo'] as String?;
    _foto = snapshotData['foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CAMPEONES');

  static Stream<CampeonesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CampeonesRecord.fromSnapshot(s));

  static Future<CampeonesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CampeonesRecord.fromSnapshot(s));

  static CampeonesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CampeonesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CampeonesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CampeonesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CampeonesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CampeonesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCampeonesRecordData({
  String? nombreC,
  String? rollC,
  String? fuerte,
  String? counter,
  String? malo,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NombreC': nombreC,
      'RollC': rollC,
      'Fuerte': fuerte,
      'Counter': counter,
      'Malo': malo,
      'foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}

class CampeonesRecordDocumentEquality implements Equality<CampeonesRecord> {
  const CampeonesRecordDocumentEquality();

  @override
  bool equals(CampeonesRecord? e1, CampeonesRecord? e2) {
    return e1?.nombreC == e2?.nombreC &&
        e1?.rollC == e2?.rollC &&
        e1?.fuerte == e2?.fuerte &&
        e1?.counter == e2?.counter &&
        e1?.malo == e2?.malo &&
        e1?.foto == e2?.foto;
  }

  @override
  int hash(CampeonesRecord? e) => const ListEquality()
      .hash([e?.nombreC, e?.rollC, e?.fuerte, e?.counter, e?.malo, e?.foto]);

  @override
  bool isValidKey(Object? o) => o is CampeonesRecord;
}
