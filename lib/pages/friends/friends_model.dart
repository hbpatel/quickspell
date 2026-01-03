import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'friends_widget.dart' show FriendsWidget;
import 'package:flutter/material.dart';

class FriendsModel extends FlutterFlowModel<FriendsWidget> {
  ///  Local state fields for this page.

  bool remove = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  FriendsRecord? friendDocID;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  FriendsRecord? friendDocID2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  FriendsRecord? friendDocID3;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  FriendsRecord? friendDocID4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
