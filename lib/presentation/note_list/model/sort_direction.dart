import 'package:flutter/material.dart';

enum SortDirection {
  ascending,
  descending;

  IconData get icon {
    switch (this) {
      case SortDirection.ascending:
        return Icons.arrow_upward;
      case SortDirection.descending:
        return Icons.arrow_downward;
    }
  }
}