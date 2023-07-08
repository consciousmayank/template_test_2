import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../common/app_constants.dart';
import '../../common/ui_helpers.dart';
import 'theme_change_viewmodel.dart';

class ThemeChangeView extends StackedView<ThemeChangeViewModel> {
  const ThemeChangeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ThemeChangeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).changeThemeText,
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                color: textColor(context),
              ),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: SwitchListTile.adaptive(
                  value: viewModel.darkModeValue,
                  onChanged: (value) =>
                      viewModel.setDarkModeValue(value: value),
                  title: Text(
                    'DarkMode',
                    style: Theme.of(context)
                        .listTileTheme
                        .titleTextStyle
                        ?.copyWith(
                          color: textColor(context),
                        ),
                  ),
                ),
              ),
              Card(
                child: SwitchListTile.adaptive(
                  value: viewModel.useMaterial3,
                  onChanged: (value) => viewModel.setUseMaterial3(value: value),
                  title: Text(
                    'Use Material 3 Designs',
                    style: Theme.of(context)
                        .listTileTheme
                        .titleTextStyle
                        ?.copyWith(
                          color: textColor(context),
                        ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title:  Text(
                    'Theme Color',
                    style: Theme.of(context)
                        .listTileTheme
                        .titleTextStyle
                        ?.copyWith(
                          color: textColor(context),
                        ),
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        viewModel.getSelectedThemeColorName(),
                      )
                    ],
                  ),
                ),
              ),
              verticalSpaceSmall,
              SizedBox(
                height: kToolbarHeight,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      viewModel.handleColorSelect(index);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(1),
                      height: kToolbarHeight,
                      width: kToolbarHeight,
                      decoration: BoxDecoration(
                          color: viewModel
                              .getColorOptions()
                              .elementAt(index)
                              .color,
                          borderRadius: defaultBorderRadius,
                          border: index == viewModel.selectedThemeIndex
                              ? Border.all(
                                  color: Colors.blueGrey,
                                  width: 3,
                                )
                              : null),
                    ),
                  ),
                  itemCount: viewModel.getColorOptions().length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      height: 3,
                    );
                  },
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    const SliverToBoxAdapter(child: verticalSpaceSmall),
                    SliverList.list(children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Elevated Button',
                        ),
                      ),
                      ElevatedButton.icon(
                        label: const Text(
                          'Elevated Button icon',
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.phone_android),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Outline Button',
                        ),
                      ),
                      OutlinedButton.icon(
                        label: const Text(
                          'Outline Button icon',
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.phone_android),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Text Button',
                        ),
                      ),
                      TextButton.icon(
                        label: const Text(
                          'Text Button icon',
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.phone_android),
                      ),
                      verticalSpaceMedium,
                      TextFormField(
                        // controller: TextEditingController(text: 'Test'),
                        decoration: const InputDecoration(
                          filled: true,
                          hintText: 'Hint Text',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Label',
                        ),
                      ),
                      verticalSpaceMedium,
                      Wrap(
                        children: [
                          surroundByContainer(
                            child: Column(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {},
                                  child: const Icon(Icons.add),
                                ),
                                verticalSpaceMedium,
                                 Text(
                                  'FloatingActionButton',
                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: textColor(context,),),
                                )
                              ],
                            ),
                          ),
                          horizontalSpaceSmall,
                          surroundByContainer(
                            child: Column(
                              children: [
                                FloatingActionButton.extended(
                                  onPressed: () {},
                                  label: const Icon(Icons.add),
                                ),
                                verticalSpaceMedium,
                                 Text(
                                  'FloatingActionButton.extended with Icon',
                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: textColor(context,),),
                                )
                              ],
                            ),
                          ),
                          horizontalSpaceSmall,
                          surroundByContainer(
                            child: Column(
                              children: [
                                FloatingActionButton.extended(
                                  onPressed: () {},
                                  label: const Text('Text'),
                                ),
                                verticalSpaceMedium,
                                 Text(
                                  'FloatingActionButton.extended with text',
                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: textColor(context,),),
                                )
                              ],
                            ),
                          ),
                          horizontalSpaceSmall,
                          surroundByContainer(
                            child: Column(
                              children: [
                                FloatingActionButton.small(
                                  onPressed: () {},
                                  child: const Icon(Icons.add),
                                ),
                                verticalSpaceMedium,
                                 Text(
                                  'FloatingActionButton.small',
                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: textColor(context,),),
                                )
                              ],
                            ),
                          ),
                          horizontalSpaceSmall,
                          surroundByContainer(
                            child: Column(
                              children: [
                                FloatingActionButton.large(
                                  onPressed: () {},
                                  child: const Icon(Icons.add),
                                ),
                                verticalSpaceMedium,
                                 Text(
                                  'FloatingActionButton.large',
                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: textColor(context)),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ThemeChangeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ThemeChangeViewModel();

  Container surroundByContainer({required Widget child}) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: colorGrey),
          borderRadius: defaultBorderRadius),
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.all(2),
      child: child,
    );
  }
}
