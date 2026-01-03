import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// Lost of all letters when initialised
  List<String> _letterList = [];
  List<String> get letterList => _letterList;
  set letterList(List<String> value) {
    _letterList = value;
  }

  void addToLetterList(String value) {
    letterList.add(value);
  }

  void removeFromLetterList(String value) {
    letterList.remove(value);
  }

  void removeAtIndexFromLetterList(int index) {
    letterList.removeAt(index);
  }

  void updateLetterListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    letterList[index] = updateFn(_letterList[index]);
  }

  void insertAtIndexInLetterList(int index, String value) {
    letterList.insert(index, value);
  }

  /// List of ll scores when initialised
  List<int> _scoreList = [];
  List<int> get scoreList => _scoreList;
  set scoreList(List<int> value) {
    _scoreList = value;
  }

  void addToScoreList(int value) {
    scoreList.add(value);
  }

  void removeFromScoreList(int value) {
    scoreList.remove(value);
  }

  void removeAtIndexFromScoreList(int index) {
    scoreList.removeAt(index);
  }

  void updateScoreListAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    scoreList[index] = updateFn(_scoreList[index]);
  }

  void insertAtIndexInScoreList(int index, int value) {
    scoreList.insert(index, value);
  }

  /// list of current lettes on the tiles
  List<String> _currentLetters = [];
  List<String> get currentLetters => _currentLetters;
  set currentLetters(List<String> value) {
    _currentLetters = value;
  }

  void addToCurrentLetters(String value) {
    currentLetters.add(value);
  }

  void removeFromCurrentLetters(String value) {
    currentLetters.remove(value);
  }

  void removeAtIndexFromCurrentLetters(int index) {
    currentLetters.removeAt(index);
  }

  void updateCurrentLettersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    currentLetters[index] = updateFn(_currentLetters[index]);
  }

  void insertAtIndexInCurrentLetters(int index, String value) {
    currentLetters.insert(index, value);
  }

  /// list of current values on the tiles
  List<int> _currenValues = [];
  List<int> get currenValues => _currenValues;
  set currenValues(List<int> value) {
    _currenValues = value;
  }

  void addToCurrenValues(int value) {
    currenValues.add(value);
  }

  void removeFromCurrenValues(int value) {
    currenValues.remove(value);
  }

  void removeAtIndexFromCurrenValues(int index) {
    currenValues.removeAt(index);
  }

  void updateCurrenValuesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    currenValues[index] = updateFn(_currenValues[index]);
  }

  void insertAtIndexInCurrenValues(int index, int value) {
    currenValues.insert(index, value);
  }

  List<String> _selectedLetter = [];
  List<String> get selectedLetter => _selectedLetter;
  set selectedLetter(List<String> value) {
    _selectedLetter = value;
  }

  void addToSelectedLetter(String value) {
    selectedLetter.add(value);
  }

  void removeFromSelectedLetter(String value) {
    selectedLetter.remove(value);
  }

  void removeAtIndexFromSelectedLetter(int index) {
    selectedLetter.removeAt(index);
  }

  void updateSelectedLetterAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedLetter[index] = updateFn(_selectedLetter[index]);
  }

  void insertAtIndexInSelectedLetter(int index, String value) {
    selectedLetter.insert(index, value);
  }

  int _noOfTiles = 0;
  int get noOfTiles => _noOfTiles;
  set noOfTiles(int value) {
    _noOfTiles = value;
  }

  int _wordLength = 0;
  int get wordLength => _wordLength;
  set wordLength(int value) {
    _wordLength = value;
  }

  List<double> _tileOpacity = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0];
  List<double> get tileOpacity => _tileOpacity;
  set tileOpacity(List<double> value) {
    _tileOpacity = value;
  }

  void addToTileOpacity(double value) {
    tileOpacity.add(value);
  }

  void removeFromTileOpacity(double value) {
    tileOpacity.remove(value);
  }

  void removeAtIndexFromTileOpacity(int index) {
    tileOpacity.removeAt(index);
  }

  void updateTileOpacityAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    tileOpacity[index] = updateFn(_tileOpacity[index]);
  }

  void insertAtIndexInTileOpacity(int index, double value) {
    tileOpacity.insert(index, value);
  }

  List<int> _selectedTile = [];
  List<int> get selectedTile => _selectedTile;
  set selectedTile(List<int> value) {
    _selectedTile = value;
  }

  void addToSelectedTile(int value) {
    selectedTile.add(value);
  }

  void removeFromSelectedTile(int value) {
    selectedTile.remove(value);
  }

  void removeAtIndexFromSelectedTile(int index) {
    selectedTile.removeAt(index);
  }

  void updateSelectedTileAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    selectedTile[index] = updateFn(_selectedTile[index]);
  }

  void insertAtIndexInSelectedTile(int index, int value) {
    selectedTile.insert(index, value);
  }

  bool _initialised = false;
  bool get initialised => _initialised;
  set initialised(bool value) {
    _initialised = value;
  }

  int _tilesToRest = 0;
  int get tilesToRest => _tilesToRest;
  set tilesToRest(int value) {
    _tilesToRest = value;
  }

  int _totalScore = 0;
  int get totalScore => _totalScore;
  set totalScore(int value) {
    _totalScore = value;
  }

  List<int> _selectedValue = [];
  List<int> get selectedValue => _selectedValue;
  set selectedValue(List<int> value) {
    _selectedValue = value;
  }

  void addToSelectedValue(int value) {
    selectedValue.add(value);
  }

  void removeFromSelectedValue(int value) {
    selectedValue.remove(value);
  }

  void removeAtIndexFromSelectedValue(int index) {
    selectedValue.removeAt(index);
  }

  void updateSelectedValueAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    selectedValue[index] = updateFn(_selectedValue[index]);
  }

  void insertAtIndexInSelectedValue(int index, int value) {
    selectedValue.insert(index, value);
  }

  int _wordScore = 0;
  int get wordScore => _wordScore;
  set wordScore(int value) {
    _wordScore = value;
  }

  int _swapCount = 0;
  int get swapCount => _swapCount;
  set swapCount(int value) {
    _swapCount = value;
  }

  double _timer = 0.0;
  double get timer => _timer;
  set timer(double value) {
    _timer = value;
  }

  String _currentWord = '';
  String get currentWord => _currentWord;
  set currentWord(String value) {
    _currentWord = value;
  }

  List<GameStatsStruct> _gameStats = [];
  List<GameStatsStruct> get gameStats => _gameStats;
  set gameStats(List<GameStatsStruct> value) {
    _gameStats = value;
  }

  void addToGameStats(GameStatsStruct value) {
    gameStats.add(value);
  }

  void removeFromGameStats(GameStatsStruct value) {
    gameStats.remove(value);
  }

  void removeAtIndexFromGameStats(int index) {
    gameStats.removeAt(index);
  }

  void updateGameStatsAtIndex(
    int index,
    GameStatsStruct Function(GameStatsStruct) updateFn,
  ) {
    gameStats[index] = updateFn(_gameStats[index]);
  }

  void insertAtIndexInGameStats(int index, GameStatsStruct value) {
    gameStats.insert(index, value);
  }

  int _coinsCurrentGame = 0;
  int get coinsCurrentGame => _coinsCurrentGame;
  set coinsCurrentGame(int value) {
    _coinsCurrentGame = value;
  }

  int _highestWordScore = 0;
  int get highestWordScore => _highestWordScore;
  set highestWordScore(int value) {
    _highestWordScore = value;
  }

  String _gameMode = '';
  String get gameMode => _gameMode;
  set gameMode(String value) {
    _gameMode = value;
  }
}
