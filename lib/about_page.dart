import 'package:who_goes_first/custom_icons_icons.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  PackageInfo? packageInfo;

  void setup() async {
    packageInfo = await PackageInfo.fromPlatform();
    setState(() {});
  }

  @override
  void initState() {
    setup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 4,
        shadowColor: Theme.of(context).colorScheme.shadow,
        title: const Text("О приложении"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    child: Row(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            'assets/icon/logo.png',
                            height: 40,
                            filterQuality: FilterQuality.medium,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Opacity(
                              opacity: 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Кто ходит первым?',
                                    style: Theme.of(context).textTheme.titleLarge,
                                  ),
                                  Text(
                                    '© 2024 Jefferey Neuffer, перевёл Denis Kiselev',
                                    style: Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    child: Row(
                      children: [
                        const Opacity(
                          opacity: 0.5,
                          child: Icon(
                            Icons.info_outline,
                            size: 32,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Opacity(
                              opacity: 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Версия приложения',
                                    style: Theme.of(context).textTheme.titleLarge,
                                  ),
                                  Text(
                                    '${packageInfo?.version ?? '-.-.-'} (${packageInfo?.buildNumber ?? ''})',
                                    style: Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => launchUrl(Uri.parse('https://j7126.dev/projects/who-goes-first')),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                      child: Row(
                        children: [
                          const Opacity(
                            opacity: 0.5,
                            child: Icon(
                              Icons.home_outlined,
                              size: 32,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Opacity(
                                opacity: 0.9,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Домашняя страница',
                                      style: Theme.of(context).textTheme.titleLarge,
                                    ),
                                    Text(
                                      'https://j7126.dev/projects/who-goes-first',
                                      style: Theme.of(context).textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => launchUrl(Uri.parse('https://github.com/j7126/who_goes_first/issues')),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                      child: Row(
                        children: [
                          const Opacity(
                            opacity: 0.5,
                            child: Icon(
                              Icons.bug_report,
                              size: 32,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Opacity(
                                opacity: 0.9,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Сообщить об ошибке',
                                      style: Theme.of(context).textTheme.titleLarge,
                                    ),
                                    Text(
                                      'https://github.com/j7126/who_goes_first/issues',
                                      style: Theme.of(context).textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => launchUrl(Uri.parse('https://github.com/j7126/who_goes_first')),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                      child: Row(
                        children: [
                          const Opacity(
                            opacity: 0.5,
                            child: Icon(
                              CustomIcons.github_circled,
                              size: 32,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Opacity(
                                opacity: 0.9,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Открыть на GitHub',
                                      style: Theme.of(context).textTheme.titleLarge,
                                    ),
                                    Text(
                                      'https://github.com/j7126/who_goes_first',
                                      style: Theme.of(context).textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => launchUrl(Uri.parse('https://github.com/j7126/who_goes_first/blob/main/CREDITS.md')),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Opacity(
                            opacity: 0.5,
                            child: Icon(
                              Icons.edit_outlined,
                              size: 32,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Opacity(
                                opacity: 0.9,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Разработчики',
                                      style: Theme.of(context).textTheme.titleLarge,
                                    ),
                                    Text(
                                      'https://github.com/j7126/who_goes_first/blob/main/CREDITS.md',
                                      style: Theme.of(context).textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => launchUrl(Uri.parse('https://github.com/j7126/who_goes_first/blob/main/LICENSE.txt')),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Opacity(
                            opacity: 0.5,
                            child: Icon(
                              Icons.gavel_outlined,
                              size: 32,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Opacity(
                                opacity: 0.9,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Лицензия',
                                      style: Theme.of(context).textTheme.titleLarge,
                                    ),
                                    Text(
                                      'GNU Affero General Public License',
                                      style: Theme.of(context).textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Opacity(
                    opacity: 0.3,
                    child: Text(
                      "Who Goes First Copyright (C) 2024 Jefferey Neuffer, translated by Denis Kiselev \nThis program is free software, licensed under GNU AGPL v3 or any later version.",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
