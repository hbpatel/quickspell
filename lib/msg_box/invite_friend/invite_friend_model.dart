import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invite_friend_widget.dart' show InviteFriendWidget;
import 'package:flutter/material.dart';

class InviteFriendModel extends FlutterFlowModel<InviteFriendWidget> {
  ///  Local state fields for this component.

  bool notFound = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for user_name widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Invite widget.
  int? exists;
  // Stores action output result for [Firestore Query - Query a collection] action in Invite widget.
  int? alreadyFriend;
  // Stores action output result for [Firestore Query - Query a collection] action in Invite widget.
  UsersRecord? friendDocID;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();
  }
}
