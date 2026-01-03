import '/flutter_flow/flutter_flow_util.dart';
import 'daily_challenge_retry_widget.dart' show DailyChallengeRetryWidget;
import 'package:flutter/material.dart';

class DailyChallengeRetryModel
    extends FlutterFlowModel<DailyChallengeRetryWidget> {
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
