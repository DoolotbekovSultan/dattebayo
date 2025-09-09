import 'package:dattebayo/core/utils/constants/dimentions.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  final Function(String) onSearch;

  const SearchBarWidget({super.key, required this.onSearch});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _controller = TextEditingController();
  bool _isTyping = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimentions.searchHeight,
      padding: EdgeInsetsGeometry.only(
        left: Dimentions.paddingMedium,
        right: Dimentions.paddingMedium,
        top: Dimentions.paddingSmall,
      ),
      child: TextField(
        controller: _controller,
        onChanged: (value) {
          setState(() {
            _isTyping = value.isNotEmpty;
          });
          widget.onSearch(value);
        },
        decoration: InputDecoration(
          hintText: "Search",
          prefixIcon: const Icon(Icons.search),
          suffixIcon: _isTyping
              ? (IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _controller.clear();
                    setState(() {
                      _isTyping = false;
                    });
                    widget.onSearch("");
                  },
                ))
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimentions.borderRadiusLarge),
          ),
          filled: true,
        ),
      ),
    );
  }
}
