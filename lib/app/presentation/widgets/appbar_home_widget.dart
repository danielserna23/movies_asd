import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/media/media_provider.dart';
import '../providers/theme/theme_provider.dart';
import '../responsive/responsive.dart';
import 'input_search_widget.dart';

class AppbarHomeWidget extends ConsumerWidget implements PreferredSizeWidget {
  final Responsive responsive;
  final TextEditingController searchController;
  const AppbarHomeWidget({
    super.key,
    required this.responsive,
    required this.searchController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSearching = ref.watch(isSearchingProvider);
    final isDarkMode = ref.watch(darkModeProvider);

    final title = Text(
      'Movies ASD',
      style: TextStyle(fontSize: responsive.dp(1.8)),
    );

    final iconSettings = IconButton(
      icon: Icon(
        isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
        size: responsive.dp(2),
      ),
      onPressed: () {
        ref.read(darkModeProvider.notifier).toggleDarkMode();
      },
    );
    return responsive.isTablet
        ? AppBar(
            title: title,
            centerTitle: true,
            actions: <Widget>[
              Container(
                width: responsive.wp(30),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InputSearchWidget(
                  searchController: searchController,
                  suffixIcon: searchController.text.isEmpty
                      ? Icon(
                          Icons.search,
                          size: responsive.dp(2),
                          color: Colors.white,
                        )
                      : IconButton(
                          icon: const Icon(Icons.clear),
                          color: Colors.white,
                          onPressed: () {
                            searchController.clear();
                          },
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: iconSettings,
              ),
            ],
          )
        : AppBar(
            title: isSearching
                ? InputSearchWidget(
                    searchController: searchController,
                  )
                : title,
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(
                  isSearching ? Icons.close : Icons.search,
                ),
                onPressed: () {
                  if (isSearching) {
                    searchController.clear();
                    ref.read(isSearchingProvider.notifier).state = false;
                  } else {
                    ref.read(isSearchingProvider.notifier).state = true;
                  }
                },
              ),
              iconSettings,
            ],
          );
  }

  @override
  Size get preferredSize => Size.fromHeight(responsive.hp(5));
}
