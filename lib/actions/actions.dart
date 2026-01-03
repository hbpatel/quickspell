import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future resetGameAppState(BuildContext context) async {
  FFAppState().letterList = [];
  FFAppState().scoreList = [];
  FFAppState().currentLetters = [];
  FFAppState().currenValues = [];
  FFAppState().selectedLetter = [];
  FFAppState().wordLength = 0;
  FFAppState().noOfTiles = 0;
  FFAppState().selectedTile = [];
  FFAppState().tilesToRest = 0;
  FFAppState().totalScore = 0;
  FFAppState().selectedValue = [];
  FFAppState().wordScore = 0;
  FFAppState().swapCount = 0;
  FFAppState().currentWord = '';
  FFAppState().gameStats = [];
  FFAppState().coinsCurrentGame = 0;
  FFAppState().initialised = false;
}
