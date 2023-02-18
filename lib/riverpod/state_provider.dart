import 'package:flutter_riverpod/flutter_riverpod.dart';

// StateProvider 제공자 상태를 품고있는거
// numberProvider - ref 가 => 화살표 방향의 함수를 리턴해서 받아와라
// ref 가 상태를 품는데 품는 State가 => 상태

// level 1 -> 기본 StateProvider
final numberProvider = StateProvider<int>((ref) => 0);
final dateProvider = StateProvider<DateTime>((ref) => DateTime.now());

// level 2 -> StateNotifierProvider - Class 의 메소드 를 쓰기위해 사용
