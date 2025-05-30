import 'package:superwallkit_flutter/src/generated/superwallhost.g.dart';

/// An enum whose cases indicate whether the paywall was closed by user
/// interaction or because another paywall will show.
enum PaywallCloseReason {
  systemLogic,
  forNextPaywall,
  webViewFailedToLoad,
  manualClose,
  none,
}

// Extension on PaywallCloseReason for explicit serialization and deserialization
extension PaywallCloseReasonExtension on PaywallCloseReason {
  // Converts the enum to a JSON-valid string
  String toJson() {
    switch (this) {
      case PaywallCloseReason.systemLogic:
        return 'systemLogic';
      case PaywallCloseReason.forNextPaywall:
        return 'forNextPaywall';
      case PaywallCloseReason.webViewFailedToLoad:
        return 'webViewFailedToLoad';
      case PaywallCloseReason.manualClose:
        return 'manualClose';
      case PaywallCloseReason.none:
        return 'none';
      default:
        throw ArgumentError('Invalid PaywallCloseReason value');
    }
  }

  // Parses a JSON string to get the corresponding PaywallCloseReason enum value
  static PaywallCloseReason fromJson(String json) {
    switch (json) {
      case 'systemLogic':
        return PaywallCloseReason.systemLogic;
      case 'forNextPaywall':
        return PaywallCloseReason.forNextPaywall;
      case 'webViewFailedToLoad':
        return PaywallCloseReason.webViewFailedToLoad;
      case 'manualClose':
        return PaywallCloseReason.manualClose;
      case 'none':
        return PaywallCloseReason.none;
      default:
        throw ArgumentError('Invalid PaywallCloseReason value: $json');
    }
  }

  /// Convert this PaywallCloseReason to a PPaywallCloseReason
  PPaywallCloseReason toPigeon() {
    switch (this) {
      case PaywallCloseReason.systemLogic:
        return PPaywallCloseReason.systemLogic;
      case PaywallCloseReason.forNextPaywall:
        return PPaywallCloseReason.forNextPaywall;
      case PaywallCloseReason.webViewFailedToLoad:
        return PPaywallCloseReason.webViewFailedToLoad;
      case PaywallCloseReason.manualClose:
        return PPaywallCloseReason.manualClose;
      case PaywallCloseReason.none:
        return PPaywallCloseReason.none;
      default:
        throw ArgumentError('Invalid PaywallCloseReason value');
    }
  }

  /// Convert a PPaywallCloseReason to a PaywallCloseReason
  static PaywallCloseReason fromPigeon(PPaywallCloseReason reason) {
    switch (reason) {
      case PPaywallCloseReason.systemLogic:
        return PaywallCloseReason.systemLogic;
      case PPaywallCloseReason.forNextPaywall:
        return PaywallCloseReason.forNextPaywall;
      case PPaywallCloseReason.webViewFailedToLoad:
        return PaywallCloseReason.webViewFailedToLoad;
      case PPaywallCloseReason.manualClose:
        return PaywallCloseReason.manualClose;
      case PPaywallCloseReason.none:
        return PaywallCloseReason.none;
      default:
        throw ArgumentError('Invalid PPaywallCloseReason value');
    }
  }
}
