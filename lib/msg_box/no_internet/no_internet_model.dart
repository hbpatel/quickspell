import '/flutter_flow/flutter_flow_util.dart';
import 'no_internet_widget.dart' show NoInternetWidget;
import 'package:flutter/material.dart';

class NoInternetModel extends FlutterFlowModel<NoInternetWidget> {
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
