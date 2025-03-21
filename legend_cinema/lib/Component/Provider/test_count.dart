import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:legend_cinema/Component/Provider/RiverpopModel.dart';

final riverpodEasyLavel = StateProvider<int>((ref) {
  return 0;
});

final riverpodHardLevel = ChangeNotifierProvider<RiverpopModel>((ref) {
  return RiverpopModel(counter: 12222);
});
