import '/flutter_flow/flutter_flow_util.dart';
import 'quit_game_widget.dart' show QuitGameWidget;
import 'package:flutter/material.dart';

class QuitGameModel extends FlutterFlowModel<QuitGameWidget> {
  ///  Local state fields for this component.

  List<String> countriesList = [];
  void addToCountriesList(String item) => countriesList.add(item);
  void removeFromCountriesList(String item) => countriesList.remove(item);
  void removeAtIndexFromCountriesList(int index) =>
      countriesList.removeAt(index);
  void insertAtIndexInCountriesList(int index, String item) =>
      countriesList.insert(index, item);
  void updateCountriesListAtIndex(int index, Function(String) updateFn) =>
      countriesList[index] = updateFn(countriesList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
