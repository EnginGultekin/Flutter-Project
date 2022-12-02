import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

class BootstapButtons extends StatefulWidget {
  @override
  _BootstapButtonsState createState() => _BootstapButtonsState();
}

class _BootstapButtonsState extends State<BootstapButtons> {

  bool disabled = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          OverlayDropdownButton.removeAll();
        },
        child: Scaffold(
            appBar: AppBar(title: Text('Bootstraps Buttons')),
            body: Scrollbar(child: SingleChildScrollView(
              child: Container(
                height: 2000,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BsRow(
                      children: [
                        BsCol(
                          margin: EdgeInsets.only(bottom: 10.0),
                          sizes: ColScreen.all(Col.col_12),
                          child: Wrap(
                            children: [
                              BsButton(
                                disabled: disabled,
                                margin:const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {print('1.Satır');},
                                style: BsButtonStyle.primary,
                                prefixIcon: Icons.block,
                                label: const Text('1. Satır 1.Bs Buton primary'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {
                                  setState(() {
                                    disabled = disabled ? false : true;
                                    print('1.Satır');

                                  });
                                },
                                style: BsButtonStyle.primary,
                                prefixIcon: Icons.block,
                                label: Text('${disabled ? 'Enable' : 'Disabled'} Button yandakinin aynısı'),
                              ),
                              BsButton(
                                margin:const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                prefixIcon: Icons.block,
                                label:const Text('Secondary'),
                                size:const BsButtonSize(
                                  fontSize: 22.0,
                                  iconSize: 22.0,
                                  spaceLabelIcon: 18.0,
                                ),
                              ),
                              BsButton(
                                margin:const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.success,
                                prefixIcon: Icons.block,
                                label:const Text('Success'),
                                autofocus: true,
                              ),
                              BsButton(
                               // width: 900,
                                margin:const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.danger,
                                prefixIcon: Icons.block,
                                label: const Text('Danger'),
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.warning,
                                prefixIcon: Icons.block,
                                label:const  Text('Warning'),
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.info,
                                prefixIcon: Icons.block,
                                label: const Text('Info'),
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.light,
                                prefixIcon: Icons.block,
                                label:const  Text('Light'),
                              ),
                              BsButton(
                                margin:const  EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.dark,
                                prefixIcon: Icons.block,
                                label: const Text('Dark'),
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(bottom: 10.0),
                                onPressed: () {},
                                size: BsButtonSize.btnIconLg,
                                prefixIcon: Icons.check,
                                 mainAxisAlignment:  MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                              )
                            ],
                          ),
                        ),
                        BsCol(
                          margin: EdgeInsets.only(bottom: 10.0),
                          sizes: ColScreen.all(Col.col_12),
                          child: Wrap(
                            children: [
                              BsButton(
                                disabled: disabled,
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlinePrimary,
                                label: const Text('Outline Primary disable'),
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlinePrimary,
                                label: const Text('Outline Primary'),
                              ),
                              BsButton(
                                margin:const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineSecondary,
                                label:const  Text('Outline Secondary'),
                              ),
                              BsButton(
                                margin:const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineWarning,
                                label:const  Text('Outline Warning'),
                              ),
                              BsButton(
                                margin:const  EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineSuccess,
                                label: const Text('Outline Success'),
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineDanger,
                                label: const Text('Outline Danger'),
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineInfo,
                                label: const Text('Outline Info'),
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineLight,
                                label: const Text('Outline Light'),
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineDark,
                                label: const Text('Outline Dark'),
                              ),
                              BsButton(
                                margin:const  EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle(
                                    borderRadius: BorderRadius.circular(70.0),
                                    backgroundColor: Colors.pink,
                                    color: Colors.white
                                ),
                                label:const  Text('Outline Dark with style'),
                              ),
                            ],
                          ),
                        ),
                        BsCol(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          sizes: ColScreen.all(Col.col_12),
                          child: Wrap(
                            children: [
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnSm,
                                label:const  Text('Small'),
                              ),
                              BsButton(
                                margin:const  EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                label: const Text('Medium'),
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnLg,
                                label: const Text('Large'),
                              ),
                              BsButton(
                                margin:const  EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnIconSm,
                                prefixIcon: Icons.check,
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnIconMd,
                                prefixIcon: Icons.check,
                              ),
                              BsButton(
                                margin:const  EdgeInsets.only(right: 20.0, bottom: 30.0),

                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnIconLg,
                                prefixIcon: Icons.check,
                              ),
                              BsButton(
                                margin: const EdgeInsets.all(20),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnSm,
                                label:const  Text('Small'),
                                prefixIcon: Icons.calendar_today,
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                label:const  Text('Medium'),
                                prefixIcon: Icons.calendar_today,
                              ),
                              BsButton(
                                //margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnLg,
                                label: Text('Large'),
                                prefixIcon: Icons.calendar_today,
                              ),
                            ],
                          ),
                        ),
                        BsCol(
                          margin: EdgeInsets.only(bottom: 10.0),
                          sizes: ColScreen.all(Col.col_12),
                          child: Wrap(
                            children: [
                              BsButton(
                                margin:const  EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnSm,
                                label:const  Text('Small'),
                                prefixIcon: Icons.edit,
                                badge:const  BsBadge(
                                  style: BsBadgeStyle.info,
                                  size: BsBadgeSize.small,
                                  child: Text('4'),
                                ),
                              ),
                              BsButton(
                                margin:const  EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnMd,
                                label: Text('Notification'),
                                prefixIcon: Icons.calendar_today,
                                badge: const BsBadge(
                                  size: BsBadgeSize(
                                    fontSize: 24,
                                    padding: EdgeInsets.all(35),
                                    margin: EdgeInsets.all(15),
                                  ),
                                  style: BsBadgeStyle.danger,
                                  child: const Text('4'),
                                ),
                              ),
                              BsButton(
                                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnLg,
                                label: Text('Notification'),
                                prefixIcon: Icons.calendar_today,
                                badge: const BsBadge(
                                  style: BsBadgeStyle.success,
                                  size: BsBadgeSize.large,
                                  child: Text('4'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        BsCol(
                          sizes: ColScreen.all(Col.col_12),
                          child: Wrap(
                            children: [
                              BsDropdownButton(
                                margin:const  EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  suffixIcon: Icons.arrow_drop_down,
                                  label:const  Text('Bottom'),
                                ),
                                dropdownDirection: BsDropdownDirection.bottom,
                                dropdownMenuSize: const BsDropdownMenuSize(
                                  minWidth: 500,
                                ),
                                dropdownMenu: const BsDropdownMenu(
                                  children: [
                                    BsDropdownItem(child: Text('Action'), active: true , padding: EdgeInsets.all(22),),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here')),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link') ,disabled: true),
                                  ],
                                ),
                              ),
                              BsDropdownButton(
                                margin: const EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  suffixIcon: Icons.arrow_drop_down,
                                  label: const Text('Top'),
                                ),
                                dropdownDirection: BsDropdownDirection.top,
                                dropdownMenu: const BsDropdownMenu(
                                  header: BsDropdownHeader(child: Text('Dropdown Header')),
                                  children: [
                                    BsDropdownItem(child: Text('Action')),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here')),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link')),
                                  ],
                                ),
                              ),
                              BsDropdownButton(
                                margin: EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  suffixIcon: Icons.arrow_right,
                                  label: Text('Right'),
                                ),
                                dropdownDirection: BsDropdownDirection.right,
                                dropdownMenu: const BsDropdownMenu(
                                  children: [
                                    BsDropdownItem(child: Text('Action')),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here')),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link')),
                                  ],
                                ),
                              ),
                              BsDropdownButton(
                                margin: EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  prefixIcon: Icons.arrow_left,
                                  label: Text('Left'),
                                ),
                                dropdownDirection: BsDropdownDirection.left,
                                dropdownMenu: const BsDropdownMenu(
                                  children: [
                                    BsDropdownItem(child: Text('Action')),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here')),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link')),
                                  ],
                                ),
                              ),
                              BsDropdownButton(
                                margin: EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  suffixIcon: Icons.arrow_right,
                                  label: Text('Horizontal'),
                                ),
                                dropdownDirection: BsDropdownDirection.horizontal,
                                dropdownMenu: const BsDropdownMenu(
                                  children: [
                                    BsDropdownItem(child: Text('Action')),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here')),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link')),
                                  ],
                                ),
                              ),
                              BsDropdownButton(
                                margin: EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  suffixIcon: Icons.arrow_drop_down,
                                  label: Text('Vertical'),
                                ),
                                dropdownDirection: BsDropdownDirection.vertical,
                                dropdownMenu: const BsDropdownMenu(
                                  children: [
                                    BsDropdownItem(child: Text('Action'), active: true),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here'), disabled: true),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 100,),
                    Scrollbar(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(top: 10.0),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      BsDropdownButton(
                                        margin: EdgeInsets.only(right: 5.0),
                                        toggleMenu: (_) => BsButton(
                                          onPressed: () => _.toggle(),
                                          style: BsButtonStyle.primary,
                                          suffixIcon: Icons.arrow_drop_down,
                                          label: const Text('Vertical'),
                                        ),
                                        dropdownDirection: BsDropdownDirection.vertical,
                                        dropdownMenu:const  BsDropdownMenu(
                                          children: [
                                            BsDropdownItem(child: Text('Action')),
                                            BsDropdownItem(child: Text('Another Action')),
                                            BsDropdownItem(child: Text('Something else here')),
                                            BsDropdownDivider(),
                                            BsDropdownItem(child: Text('Separate link')),
                                          ],
                                        ),
                                      ),
                                      BsDropdownButton(
                                        margin: EdgeInsets.only(left: 1000, right: 1000),
                                        toggleMenu: (_) => BsButton(
                                          onPressed: () => _.toggle(),
                                          style: BsButtonStyle.primary,
                                          suffixIcon: Icons.arrow_drop_down,
                                          label: Text('Horizontal Buttons'),
                                        ),
                                        dropdownDirection: BsDropdownDirection.horizontal,
                                        dropdownMenu:const  BsDropdownMenu(
                                          children: [
                                            BsDropdownItem(child: Text('Action')),
                                            BsDropdownItem(child: Text('Another Action')),
                                            BsDropdownItem(child: Text('Something else here')),
                                            BsDropdownDivider(),
                                            BsDropdownItem(child: Text('Separate link')),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
        ),
      );
  }
}