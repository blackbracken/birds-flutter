import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../datasources/firestore_datasource.dart';

final firestoreDatasourceProvider =
    Provider((ref) => FirestoreDatasource(FirebaseFirestore.instance));
