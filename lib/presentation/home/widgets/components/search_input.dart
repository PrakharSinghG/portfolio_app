import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      padding: EdgeInsets.all(18.w),
      child: TextField(
        controller: _controller,
        onChanged: (value) {
          widget.onSearch(value);
        },
        decoration: InputDecoration(
          hintText: 'Search a project',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
              width: 2.w,
            ),
          ),
          alignLabelWithHint: true,
          suffixIconColor: Colors.white,
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  color: Colors.black,
                  icon: Icon(
                    Icons.clear,
                    size: 24.sp,
                  ),
                  onPressed: () {
                    setState(() {
                      _controller.clear();
                      widget.onSearch('');
                    });
                  },
                )
              : Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Container(
                    padding: EdgeInsets.all(4.w),
                    decoration: BoxDecoration(
                      color: Theme.of(context).tabBarTheme.labelColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Icon(
                      Icons.search,
                      size: 24.sp,
                    ),
                  ),
                ),
        ),
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
