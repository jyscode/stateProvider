import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_manage/screen/home_screen.dart';

void main() {
  runApp(
    // riverpod 쓸때 MaterialApp 위에 써야함
    ProviderScope(
      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}

// 상태관리 툴 3개 ( GetX , Provider - RiverPod (Google 공식) , Bloc )
// GetX 기능이 짬뽕 ( 여러가지 ) , 쉽고 접근성 좋음, 단점 짬뽕이라 구조 체계가 좀 별로
// RiverPod - 공식이라 지속적인 업데이트, 호환성 좋음, 기능이 적어
// Bloc - 좋아 , 기능이 개복잡함, 대규모 프로젝트 쓸떄만 쓰도록하자, 개인이 쓸만한건 아님

// GetX, RiverPod

