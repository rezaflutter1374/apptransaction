import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _searchFocusNode.requestFocus();
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: _buildSearchField(),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: _buildSearchResults(),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      focusNode: _searchFocusNode,
      autofocus: true,
      decoration: InputDecoration(
        hintText: 'Searching..',
        hintStyle: TextStyle(color: const Color(0xFFFFFFFF)),
        border: InputBorder.none,
        suffixIcon: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFFFFFFFF)),
          onPressed: () {
            _searchController.clear();
            Navigator.pop(context);
          },
        ),
      ),
      onSubmitted: (value) => _performSearch(value),
    );
  }

  Widget _buildSearchResults() {
    return ListView(children: const [
  
      ],
    );
  }

  void _performSearch(String query) {}
}
