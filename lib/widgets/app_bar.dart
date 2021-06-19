import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarStyler extends StatelessWidget {
  const StatusBarStyler({
    Key? key,
    required this.child,
    this.brightness,
    this.transparent = true,
  }) : super(key: key);

  final Widget child;
  final Brightness? brightness;
  final bool transparent;

  @override
  Widget build(BuildContext context) {
    final effectiveBrightness = brightness ?? Theme.of(context).brightness;

    // SystemUiOverlayStyle brightness refers to the text, rather than the
    // actual theme brightness
    var style = effectiveBrightness == Brightness.light
        ? SystemUiOverlayStyle.dark
        : SystemUiOverlayStyle.light;

    if (transparent) {
      style = style.copyWith(
        statusBarColor: Colors.transparent,
      );
    }

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: style,
      child: child,
    );
  }
}

class TreeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TreeAppbar({
    Key? key,
    this.leading,
    this.title,
    this.trailing = const [],
    this.bottom,
    this.sliver = true,
    required this.color,
  }) : super(key: key);

  final Widget? leading;
  final Widget? title;
  final List<Widget> trailing;
  final PreferredSizeWidget? bottom;
  final bool sliver;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final appBar = Stack(
      children: [
        Positioned.fill(
          child: ClipRect(
            child: BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: color.withOpacity(0.8),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + 8.0,
            left: 8.0,
            right: 8.0,
            bottom: 8.0,
          ),
          child: NavigationToolbar(
            leading: leading ??
                (Navigator.of(context).canPop() ? const BackButton() : null),
            middle: title == null
                ? null
                : DefaultTextStyle(
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    child: title!,
                  ),
            trailing: trailing.isEmpty
                ? null
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: trailing,
                  ),
          ),
        ),
      ],
    );

    if (sliver) {
      return SliverPersistentHeader(
        floating: false,
        pinned: true,
        delegate: _LittyAppBarDelegate(
          topPadding: MediaQuery.of(context).padding.top,
          body: StatusBarStyler(child: appBar),
          bottom: bottom,
        ),
      );
    } else {
      return appBar;
    }
  }

  static const navHeight = kToolbarHeight;

  @override
  Size get preferredSize => const Size.fromHeight(navHeight);
}

class _LittyAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double topPadding;
  final Widget body;
  final PreferredSizeWidget? bottom;

  _LittyAppBarDelegate({
    required this.topPadding,
    required this.body,
    this.bottom,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Column(
      children: [
        Expanded(child: body),
        if (bottom != null)
          SizedBox(
            height: bottom!.preferredSize.height,
            child: bottom,
          ),
      ],
    );
  }

  double get bottomExtent => bottom == null ? 0 : bottom!.preferredSize.height;

  @override
  double get minExtent => TreeAppbar.navHeight + topPadding + bottomExtent;

  @override
  double get maxExtent => minExtent;

  @override
  bool shouldRebuild(_LittyAppBarDelegate old) =>
      old.topPadding != topPadding || old.body != body;
}
