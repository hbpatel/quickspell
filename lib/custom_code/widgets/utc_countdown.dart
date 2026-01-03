// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class UtcCountdown extends StatefulWidget {
  // FF passes these automatically; accept to avoid "width" param error.
  final double? width;
  final double? height;

  // Reset time (UTC)
  final int resetHourUtc;
  final int resetMinuteUtc;
  final int resetSecondUtc;

  // ---- Styling parameters you can set in FlutterFlow ----
  // Which base TextStyle from Theme to start from.
  // e.g. "titleMedium", "titleLarge", "labelLarge", "bodyMedium", etc.
  final String themeTextStyle; // default: Title Medium
  // Font family name (must exist in your project)
  final String fontFamily; // default: Readex Pro
  // Font weight as a string: w400, w500, w600, ...
  final String fontWeight; // default: w500
  // Font size in px
  final double fontSize; // default: 22
  // Theme color name: info, primary, secondary, success, warning, error, primaryText, secondaryText
  final String themeColorName; // default: info
  // If provided (e.g. "#222222"), overrides themeColorName
  final String? colorHex; // optional

  const UtcCountdown({
    Key? key,
    this.width,
    this.height,
    this.resetHourUtc = 0,
    this.resetMinuteUtc = 0,
    this.resetSecondUtc = 0,
    this.themeTextStyle = 'titleMedium',
    this.fontFamily = 'Readex Pro',
    this.fontWeight = 'w500',
    this.fontSize = 22,
    this.themeColorName = 'info',
    this.colorHex,
  }) : super(key: key);

  @override
  State<UtcCountdown> createState() => _UtcCountdownState();
}

class _UtcCountdownState extends State<UtcCountdown> {
  Timer? _ticker;
  Duration _remaining = Duration.zero;

  @override
  void initState() {
    super.initState();
    _tick();
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
  }

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  void _tick() {
    final nowUtc = DateTime.now().toUtc();
    DateTime nextResetUtc = DateTime.utc(
      nowUtc.year,
      nowUtc.month,
      nowUtc.day,
      widget.resetHourUtc,
      widget.resetMinuteUtc,
      widget.resetSecondUtc,
    );
    if (!nowUtc.isBefore(nextResetUtc)) {
      nextResetUtc = nextResetUtc.add(const Duration(days: 1));
    }
    final diff = nextResetUtc.difference(nowUtc);
    setState(() => _remaining = diff.isNegative ? Duration.zero : diff);
  }

  String _two(int n) => n.toString().padLeft(2, '0');

  TextStyle _baseTextStyleFromTheme(BuildContext context, String name) {
    final tt = Theme.of(context).textTheme;
    switch (name.toLowerCase()) {
      case 'displaylarge':
        return tt.displayLarge ?? const TextStyle();
      case 'displaymedium':
        return tt.displayMedium ?? const TextStyle();
      case 'displaysmall':
        return tt.displaySmall ?? const TextStyle();
      case 'headlinelarge':
        return tt.headlineLarge ?? const TextStyle();
      case 'headlinemedium':
        return tt.headlineMedium ?? const TextStyle();
      case 'headlinesmall':
        return tt.headlineSmall ?? const TextStyle();
      case 'titlelarge':
        return tt.titleLarge ?? const TextStyle();
      case 'titlemedium':
        return tt.titleMedium ?? const TextStyle();
      case 'titlesmall':
        return tt.titleSmall ?? const TextStyle();
      case 'labellarge':
        return tt.labelLarge ?? const TextStyle();
      case 'labelmedium':
        return tt.labelMedium ?? const TextStyle();
      case 'labelsmall':
        return tt.labelSmall ?? const TextStyle();
      case 'bodylarge':
        return tt.bodyLarge ?? const TextStyle();
      case 'bodymedium':
        return tt.bodyMedium ?? const TextStyle();
      case 'bodysmall':
        return tt.bodySmall ?? const TextStyle();
      default:
        return tt.titleMedium ?? const TextStyle();
    }
  }

  FontWeight _parseWeight(String w) {
    switch (w.toLowerCase()) {
      case 'w100':
        return FontWeight.w100;
      case 'w200':
        return FontWeight.w200;
      case 'w300':
        return FontWeight.w300;
      case 'w400':
        return FontWeight.w400;
      case 'w500':
        return FontWeight.w500;
      case 'w600':
        return FontWeight.w600;
      case 'w700':
        return FontWeight.w700;
      case 'w800':
        return FontWeight.w800;
      case 'w900':
        return FontWeight.w900;
      default:
        return FontWeight.normal;
    }
  }

  Color _colorFromThemeByName(BuildContext context, String name) {
    final th = FlutterFlowTheme.of(context);
    switch (name.toLowerCase()) {
      case 'primary':
        return th.primary;
      case 'secondary':
        return th.secondary;
      case 'tertiary':
        return th.tertiary;
      case 'info':
        return th.info;
      case 'success':
        return th.success;
      case 'warning':
        return th.warning;
      case 'error':
        return th.error;
      case 'primarytext':
        return th.primaryText;
      case 'secondarytext':
        return th.secondaryText;
      default:
        return th.info;
    }
  }

  Color _resolveColor(BuildContext context) {
    final hex = widget.colorHex;
    if (hex != null && hex.trim().isNotEmpty) {
      final norm = hex.startsWith('#') ? hex.replaceFirst('#', '0xff') : hex;
      return Color(int.parse(norm));
    }
    return _colorFromThemeByName(context, widget.themeColorName);
  }

  @override
  Widget build(BuildContext context) {
    final hours = _two(_remaining.inHours);
    final minutes = _two(_remaining.inMinutes.remainder(60));
    final seconds = _two(_remaining.inSeconds.remainder(60));

    final base = _baseTextStyleFromTheme(context, widget.themeTextStyle);
    final style = base.copyWith(
      fontFamily: widget.fontFamily,
      fontWeight: _parseWeight(widget.fontWeight),
      fontSize: widget.fontSize,
      color: _resolveColor(context),
    );

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Center(
        child: Text('$hours:$minutes:$seconds', style: style),
      ),
    );
  }
}
