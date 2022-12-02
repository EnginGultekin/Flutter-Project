import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleInputText extends StatelessWidget {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 20.0),
      child: BsCard(
        style: const BsCardStyle(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.red,
                width: 3,
              ),
              bottom: BorderSide(
                color: Colors.amber,
                width: 10.0,
              ),
            ),
          ),
        ),
        children: [
          const BsCardContainer(
            title: Text('Input Text'),
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(12),
          ),
          BsCardContainer(
              child: Form(
            key: _formState,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: BsRow(
              gutter: const EdgeInsets.only(left: 10.0, right: 10.0),
              margin: EdgeInsets.all(16),
              children: [
                BsCol(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  sizes: const ColScreen(md: Col.col_2),
                  child: BsInput(
                    suffixIcon: Icons.input,
                    onTapSuffixIcon: () {
                      print(TextEditingController());
                    },
                    autocorrect: true,
                    cursorWidth: 4.0,
                    cursorRadius: Radius.circular(16),
                    prefixIcon: Icons.start,
                    cursorColor: Colors.amber,
                    hintTextLabel: 'Hint Text Label',
                    maxLines: 2,
                    textInputAction: TextInputAction.emergencyCall,
                    inputFormatters: [],
                    size: BsInputSize.sm,
                    hintText: 'Small input',
                    controller: TextEditingController(),
                    validators: [
                      BsInputValidator(validator: (value) {
                        if (value.toString().length > 10) {
                          return 'biz yazabiliyoruz';
                        }
                        return null;
                      })
                    ],
                  ),
                ),
                BsCol(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  sizes: const ColScreen(md: Col.col_2),
                  child: BsInput(
                    style: BsInputStyle.outlineRounded,
                    size: BsInputSize.md,
                    hintTextLabel: 'Medium input',
                    controller: TextEditingController(),
                    validators: [BsInputValidators.minLength(10)],
                  ),
                ),
                BsCol(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  sizes: const ColScreen(md: Col.col_2),
                  child: BsInput(
                    //disabled: true,
                    size: BsInputSize.lg,
                    maxLines: 2,
                    readOnly: true,
                    hintTextLabel: 'Large input',
                    controller: TextEditingController(
                        text: 'TextEditingController for now Only Read'),
                  ),
                ),
                BsCol(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  sizes: const ColScreen(md: Col.col_2),
                  child: BsInput(
                    style: BsInputStyle.outlineBottom,
                    size: BsInputSize.outlineBottomSm,
                    hintTextLabel: 'Small input',
                    controller: TextEditingController(),
                  ),
                ),
                BsCol(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  sizes: const ColScreen(md: Col.col_2),
                  child: BsInput(
                    style: BsInputStyle.outlineBottom,
                    size: BsInputSize.outlineBottomMd,
                    hintTextLabel: 'Medium input',
                    controller: TextEditingController(),
                  ),
                ),
                BsCol(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  sizes: const ColScreen(md: Col.col_2),
                  child: BsInput(
                    style: BsInputStyle.outlineBottom,
                    size: BsInputSize.outlineBottomLg,
                    hintTextLabel: 'Large input',
                    maxLines: 5,
                    controller: TextEditingController(),
                    validators: [BsInputValidators.required],
                  ),
                ),
                BsCol(
                  margin: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                  sizes: const ColScreen(md: Col.col_4),
                  child: BsButton(
                    margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                    onPressed: () {
                      _formState.currentState!.save();
                    },
                    style: BsButtonStyle.primary,
                    label: const Text('Validate with BsButton'),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
