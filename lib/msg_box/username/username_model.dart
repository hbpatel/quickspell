import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'username_widget.dart' show UsernameWidget;
import 'package:flutter/material.dart';

class UsernameModel extends FlutterFlowModel<UsernameWidget> {
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

  bool taken = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (GetCountries)] action in Username widget.
  ApiCallResponse? countryList;
  // State field(s) for user_name widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Custom Action - removeSpace] action in CreateNewScript widget.
  String? updatedUsername;
  // Stores action output result for [Firestore Query - Query a collection] action in CreateNewScript widget.
  int? exists;
  // Stores action output result for [Custom Action - flagUrlFromApiOutput] action in CreateNewScript widget.
  String? flagURL;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();
  }
}
