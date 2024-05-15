import 'package:flutter/material.dart';
import 'package:keop/core/constants/theme_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hint,
    this.label,
    this.isObscureText,
    this.onChanges,
    this.controller,
    this.onSuffixClick,
    this.textInputType,
    this.textInputAction,
    this.suffixIcon,
    this.isReadOnly,
  }) : super(key: key);
  final String? hint;
  final String? label;
  final bool? isObscureText;
  final Function(String)? onChanges;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Function? onSuffixClick;
  final Widget? suffixIcon;
  final bool? isReadOnly;

  InputBorder get underlineInputBorder => const UnderlineInputBorder(
        borderSide: BorderSide(color: ThemeColors.clrGrey),
      );

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ThemeColors.clrBlack,
      textAlignVertical: TextAlignVertical.center,
      readOnly: isReadOnly ?? false,
      controller: controller,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: isObscureText ?? false,
      obscuringCharacter: '●',
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: ThemeColors.clrWhite,
          ),
      onChanged: (data) {
        if (onChanges != null) {
          onChanges!(data);
        }

      },
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        alignLabelWithHint: true,
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: ThemeColors.clrWhite,
            ),
        enabledBorder: underlineInputBorder,
        disabledBorder: underlineInputBorder,
        errorBorder: underlineInputBorder,
        focusedBorder: underlineInputBorder,
        focusedErrorBorder: underlineInputBorder,
        border: underlineInputBorder,
        labelText: label,
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: ThemeColors.clrWhite,
            ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
