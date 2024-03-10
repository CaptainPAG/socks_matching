import 'package:socks_matching/entities/socks.dart';

const List<Socks> socksMaster = <Socks>[
  Socks(
    id: 0,
    assetPath: 'socks_blue.png',
    type: 'blue',
    isMatched: false,
    level: 1,
  ),
  Socks(
    id: 1,
    assetPath: 'socks_red.png',
    type: 'red',
    isMatched: false,
    level: 1,
  ),
  Socks(
    id: 2,
    assetPath: 'socks_white.png',
    type: 'white',
    isMatched: false,
    level: 1,
  ),
  Socks(
    id: 3,
    assetPath: 'socks_yellow.png',
    type: 'yellow',
    isMatched: false,
    level: 1,
  ),
  Socks(
    id: 3,
    assetPath: 'socks_dot_yellow.png',
    type: 'dot_yellow',
    isMatched: false,
    level: 2,
  ),
  Socks(
    id: 3,
    assetPath: 'socks_dot_blue.png',
    type: 'dot_blue',
    isMatched: false,
    level: 2,
  ),
  Socks(
    id: 3,
    assetPath: 'socks_dot_red.png',
    type: 'dot_red',
    isMatched: false,
    level: 2,
  ),
  Socks(
    id: 3,
    assetPath: 'socks_panda.png',
    type: 'panda',
    isMatched: false,
    level: 2,
  ),
];

final level1Socks = socksMaster.where((element) => element.level == 1);

final level2Socks = socksMaster.where((element) => element.level <= 2);
