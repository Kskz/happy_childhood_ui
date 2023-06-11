import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:happy_childhood_ui/src/widgets/loader_widget.dart';

class SliverRefreshIndicator extends StatelessWidget {
  const SliverRefreshIndicator({
    super.key,
    required this.onRefresh,
  });

  final AsyncCallback onRefresh;

  @override
  Widget build(BuildContext context) => CupertinoSliverRefreshControl(
        onRefresh: onRefresh,
        builder: (
          context,
          refreshState,
          pulledExtent,
          refreshTriggerPullDistance,
          refreshIndicatorExtent,
        ) =>
            Loader(size: min(30, pulledExtent)),
      );
}
