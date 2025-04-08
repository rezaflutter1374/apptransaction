// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_apptransaction/components/custom_button.dart';

import 'package:my_apptransaction/components/custom_input_field.dart';
import 'package:my_apptransaction/components/custom_nav_bar.dart';
import 'package:my_apptransaction/search/search_page.dart';

import 'package:my_apptransaction/theme/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearching = false;
  int _currentIndex = 0;

  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  // ignore: unused_element
  void _toggleSearch() {
    setState(() {
      isSearching = !isSearching;
      if (isSearching) {
        _searchFocusNode.requestFocus();
      } else {
        _searchController.clear();
        _searchFocusNode.unfocus();
      }
    });
  }

  void _onNavBarTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(isSearching ? 100 : 70),
        child: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          automaticallyImplyLeading: false,
          flexibleSpace: _buildAppBarContent(),
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: CustomNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavBarTap,
      ),
    );
  }

  Widget _buildAppBarContent() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 10),
          LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (!isSearching) Flexible(flex: 2, child: _buildLogo()),
                  if (isSearching)
                    Flexible(flex: 5, child: _buildSearchField()),
                  Flexible(flex: 1, child: _buildSearchButton()),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Image.asset(
      'assets/images/Rectangle4.png',
      width: 35,
      height: 35,
      fit: BoxFit.contain,
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      focusNode: _searchFocusNode,
      style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      decoration: const InputDecoration(
        hintText: 'Searching..',
        hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
        border: InputBorder.none,
      ),
    );
  }

  Widget _buildSearchButton() {
    return IconButton(
      icon: const Icon(Icons.search, color: Color(0xFFFFFFFF)),
      onPressed: () => Get.to(() => const SearchPage()),
    );
  }

  Widget _buildBody() {
    return Container();
  }
}
