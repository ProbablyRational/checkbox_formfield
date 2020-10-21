import 'package:flutter/material.dart';

/// Use CheckboxListTile as part of Form
class CheckboxListTileFormField extends FormField<bool> {
  CheckboxListTileFormField({
    Key key,
    Widget title,
    BuildContext context,
    FormFieldSetter<bool> onSaved,
    FormFieldValidator<bool> validator,
    bool initialValue = false,
    bool autovalidate = false,
    bool enabled = true,
    bool dense = false,
    TextStyle errorStyle,
    Color activeColor,
    Color checkColor,
    ListTileControlAffinity controlAffinity = ListTileControlAffinity.leading,
    Widget secondary,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: validator,
          initialValue: initialValue,
          autovalidate: autovalidate,
          builder: (FormFieldState<bool> state) {
            errorStyle ??=
                (context == null ? TextStyle(color: Colors.red) : TextStyle(color:Theme.of(context).errorColor));

            return CheckboxListTile(
              title: title,
              dense: dense,
              activeColor: activeColor,
              checkColor: checkColor,
              value: state.value,
              onChanged: enabled ? state.didChange : null,
              subtitle: state.hasError
                  ? Text(
                      state.errorText,
                      style: errorStyle,
                    )
                  : null,
              controlAffinity: controlAffinity,
              secondary: secondary,
            );
          },
        );
}
