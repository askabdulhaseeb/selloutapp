import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'utils/app_validator.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({
    required TextEditingController controller,
    this.textInputAction = TextInputAction.done,
    this.readOnly = false,
    this.title = 'Password',
    Key? key,
  })  : _controller = controller,
        super(key: key);
  final TextEditingController _controller;
  final TextInputAction? textInputAction;
  final bool readOnly;
  final String title;
  @override
  PasswordTextFormFieldState createState() => PasswordTextFormFieldState();
}

class PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _notVisible = true;
  void _onListener() => setState(() {});
  @override
  void initState() {
    widget._controller.addListener(_onListener);
    super.initState();
  }

  @override
  void dispose() {
    widget._controller.removeListener(_onListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextFormField(
            controller: widget._controller,
            obscureText: _notVisible,
            readOnly: widget.readOnly,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: widget.textInputAction,
            cursorColor: Theme.of(context).colorScheme.secondary,
            validator: (String? value) => AppValidator.password(value),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              hintText: 'Password',
              hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade400),
              suffixIcon: IconButton(
                onPressed: () => setState(() {
                  _notVisible = !_notVisible;
                }),
                splashRadius: 16,
                icon: (_notVisible == true)
                    ? const Icon(CupertinoIcons.eye)
                    : const Icon(CupertinoIcons.eye_slash),
              ),
              focusColor: Theme.of(context).primaryColor,
              border: const OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
