import 'package:flutter/material.dart';

import 'curved-edges.dart';


class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
  super.key, this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdge(),
      child: child,
    );
  }
}