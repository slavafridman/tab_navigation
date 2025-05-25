import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScaffoldWithNavigationTab extends StatefulWidget {
  const ScaffoldWithNavigationTab({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  //final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  final int selectedIndex;

  @override
  State<ScaffoldWithNavigationTab> createState() =>
      _ScaffoldWithNavigationTabState();
}

class _ScaffoldWithNavigationTabState extends State<ScaffoldWithNavigationTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      vsync: this,
      length: 3,
      initialIndex: widget.selectedIndex,
    );

    _tabController.index = widget.selectedIndex;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.animateTo(
      widget.selectedIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    return Material(
      child: Column(
        children: [
          SizedBox(
            width: 800,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Section A'),
                Tab(text: 'Section B'),
                Tab(text: 'Section C'),
              ],
              onTap: widget.onDestinationSelected,
            ),
          ),

          Expanded(child: SizedBox(width: 800, child: widget.body)),
        ],
      ),
    );
  }
}
