import 'package:flutter/material.dart';

class CustomDropdownButton<T> extends StatelessWidget {
  final T value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?> onChanged;

  const CustomDropdownButton({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DropdownButton<T>(
      value: value,
      onChanged: onChanged,
      items: items,
      style: theme.textTheme.bodyMedium?.copyWith(
        color: theme.brightness == Brightness.light ? Colors.black87 : Colors.white70,
      ),
      dropdownColor: theme.brightness == Brightness.light ? Colors.white : Colors.grey[800],
      icon: Icon(
        Icons.arrow_drop_down,
        color: theme.brightness == Brightness.light ? Colors.grey : Colors.white70,
      ),
      underline: Container(), // Xóa gạch chân mặc định
    );
  }
}