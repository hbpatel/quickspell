import '/components/timer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'solo_game_widget.dart' show SoloGameWidget;
import 'package:flutter/material.dart';

class SoloGameModel extends FlutterFlowModel<SoloGameWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for timer component.
  late TimerModel timerModel;
  // Stores action output result for [Custom Action - checkIfWordIsValid] action in Button widget.
  bool? valid;

  @override
  void initState(BuildContext context) {
    timerModel = createModel(context, () => TimerModel());
  }

  @override
  void dispose() {
    timerModel.dispose();
  }

  /// Action blocks.
  Future letterSelectedAction(
    BuildContext context, {
    required int? tileNumber,
  }) async {
    if (FFAppState().tileOpacity.elementAtOrNull(tileNumber!) == 1.0) {
      FFAppState().addToSelectedLetter(
          FFAppState().currentLetters.elementAtOrNull(tileNumber)!);
      FFAppState().wordLength = FFAppState().wordLength + 1;
      FFAppState().updateTileOpacityAtIndex(
        tileNumber,
        (_) => 0.5,
      );
      FFAppState().addToSelectedTile(tileNumber);
      FFAppState().addToSelectedValue(
          FFAppState().currenValues.elementAtOrNull(tileNumber)!);
      FFAppState().wordScore = (int var1, int var2, int var3) {
        return var3 == 1
            ? var1 + var2
            : var3 == 2
                ? var1 + (2 * var2)
                : var3 == 3
                    ? var1 + var2
                    : var3 == 4
                        ? var1 + (3 * var2)
                        : var3 == 5
                            ? var1 + var2
                            : var3 == 6
                                ? (var1 + var2) * 2
                                : var3 == 7
                                    ? var1 + var2
                                    : var3 == 8
                                        ? (var1 + var2) * 3
                                        : var1;
      }(
          FFAppState().wordScore,
          FFAppState().currenValues.elementAtOrNull(tileNumber)!,
          FFAppState().wordLength);
      FFAppState().currentWord =
          '${FFAppState().selectedLetter.elementAtOrNull(0)}${FFAppState().selectedLetter.elementAtOrNull(1)}${FFAppState().selectedLetter.elementAtOrNull(2)}${FFAppState().selectedLetter.elementAtOrNull(3)}${FFAppState().selectedLetter.elementAtOrNull(4)}${FFAppState().selectedLetter.elementAtOrNull(5)}${FFAppState().selectedLetter.elementAtOrNull(6)}${FFAppState().selectedLetter.elementAtOrNull(7)}';
    }
  }
}
