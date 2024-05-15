import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../util/clock.dart';

final clockProvider = Provider((_) => Clock());
