import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app/core/constants/app_assets.dart';
import 'package:weather_app/core/extensions/context_extensions.dart';
import 'package:weather_app/features/home/presentation/providers/search_provider.dart';
import 'package:weather_app/i18n/translations.g.dart';

class SearchField extends HookConsumerWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final searchState = ref.watch(searchProvider);

    return TextField(
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.text,
      cursorColor: context.colors.primary,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      controller: controller,
      onChanged: (v) => ref.read(searchProvider.notifier).onTextChanged(v),
      decoration: InputDecoration(
        hintText: context.t.home.searchField.hint,
        prefixIcon: IconButton(
          onPressed: () => ref.read(searchProvider.notifier).onSearch(),
          icon: SvgPicture.asset(
            AppAssets.search,
            width: 24,
            height: 24,
          ),
        ),
        suffixIcon: AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: IconButton(
            key: ValueKey(searchState.hasText),
            onPressed: searchState.hasText
                ? () {
                    controller.clear();
                    ref.read(searchProvider.notifier).clear();
                  }
                : () => ref.read(searchProvider.notifier).onSearchByLocation(),
            icon: SvgPicture.asset(
              searchState.hasText ? AppAssets.cancel : AppAssets.myLocation,
              width: 24,
              height: 24,
            ),
          ),
        ),
      ),
    );
  }
}
