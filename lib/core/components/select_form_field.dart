import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SelectFormField<T> extends HookWidget {
  final String title;
  final bool isRequired;
  final String placeholder;
  final String searchPlaceholder;
  final List<T> items;
  final String Function(T) itemLabel;
  final String Function(T) itemValue;
  final ValueChanged<String?> onChanged;
  final ValueChanged<String>? onSearchChanged;
  final String? initialValue;
  final Widget? searchInputLeading;
  final TextStyle? titleStyle;
  final TextStyle? requiredStyle;
  final TextStyle? placeholderStyle;
  final TextStyle? optionStyle;
  final String? Function(String? value)? validator;

  const SelectFormField({
    super.key,
    required this.title,
    this.isRequired = false,
    required this.placeholder,
    required this.searchPlaceholder,
    required this.items,
    required this.itemLabel,
    required this.itemValue,
    required this.onChanged,
    this.onSearchChanged,
    this.initialValue,
    this.searchInputLeading,
    this.titleStyle,
    this.requiredStyle,
    this.placeholderStyle,
    this.optionStyle,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    // State untuk nilai pencarian
    final searchValue = useState('');
    // State untuk daftar item yang difilter
    final filteredItems = useState<List<T>>(items);

    final width = MediaQuery.of(context).size.width;

    // Efek untuk memfilter item setiap kali nilai pencarian atau daftar item berubah
    useEffect(() {
      if (items.isEmpty) {
        filteredItems.value = [];
      } else {
        final searchText = searchValue.value.toLowerCase();
        filteredItems.value =
            items
                .where(
                  (item) => itemLabel(item).toLowerCase().contains(searchText),
                )
                .toList();
      }
      onSearchChanged?.call(searchValue.value);
      return null; // Tidak perlu cleanup
    }, [searchValue.value, items]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style:
                  titleStyle ??
                  context.shadTextTheme.small.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            if (isRequired)
              Text(
                ' * ',
                style:
                    requiredStyle ??
                    const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        ShadSelectFormField<String>.withSearch(
          minWidth: width >= 460 ? 460 : width - 50,
          placeholder: Text(placeholder, style: placeholderStyle),
          onSearchChanged: (value) {
            searchValue.value = value; // Perbarui nilai pencarian
          },
          searchPlaceholder: Text(searchPlaceholder),
          searchInputLeading: searchInputLeading ?? const Icon(Icons.search),
          onChanged: onChanged,
          initialValue: initialValue,
          validator:
              validator ??
              (v) {
                if (isRequired && v == null) {
                  return '$title tidak boleh kosong';
                }
                return null;
              },
          options: [
            if (filteredItems.value.isEmpty)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Text('Data tidak ditemukan'),
              ),
            ...filteredItems.value.map((item) {
              return Offstage(
                offstage: false, // Selalu tampilkan karena sudah difilter
                child: ShadOption(
                  value: itemValue(item),
                  child: Text(itemLabel(item), style: optionStyle),
                ),
              );
            }),
          ],
          selectedOptionBuilder: (context, value) {
            // Pastikan items tidak kosong sebelum memanggil firstWhere
            if (items.isEmpty) {
              return const Text('Tidak ada data');
            }

            final selectedItem =
                items.isNotEmpty
                    ? items.firstWhere(
                      (item) => itemValue(item) == value,
                      orElse: () => items.first,
                    )
                    : null;

            return selectedItem != null
                ? Text(itemLabel(selectedItem))
                : const Text('Pilihan tidak valid');
          },
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
