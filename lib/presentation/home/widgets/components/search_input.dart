import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  final Function(String) onSearch;
  final String initialQuery;

  const SearchInput({
    super.key,
    required this.onSearch,
    this.initialQuery = '',
  });

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialQuery);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        controller: _controller,
        onChanged: (value) {
          widget.onSearch(value);
        },
        decoration: InputDecoration(
          hintText: 'Search a project',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey.shade400, width: 2),
          ),
          alignLabelWithHint: true,
          suffixIconColor: Colors.white,
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  color: Colors.black,
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      _controller.clear();
                      widget.onSearch('');
                    });
                  },
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .tabBarTheme
                            .labelColor, 
                        borderRadius:
                            BorderRadius.circular(12), 
                      ),
                      child: const Icon(Icons.search)),
                ), 
        ),
      ),
    );
  }
}
