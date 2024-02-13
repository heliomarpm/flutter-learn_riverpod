import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod_model.dart';

final riverpodIsLight = ChangeNotifierProvider<RiverpodModel>(
  (ref) => RiverpodModel(isLight: true),
);
