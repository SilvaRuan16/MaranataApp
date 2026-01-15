// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:biblia_sagrada/core/constants/constants.dart';
import 'package:biblia_sagrada/core/enums/view_state.dart';
import 'package:biblia_sagrada/provider/settings_provider.dart';
import 'package:biblia_sagrada/provider/theme_provider.dart';
import 'package:biblia_sagrada/views/widgets/appbar_widget.dart';
import 'package:biblia_sagrada/views/widgets/body_widget.dart';
import 'package:biblia_sagrada/views/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: Consumer<SettingsProvider>(
          builder: (_, provider, __) {
            return Text(
              provider.settingsData?.titulo ?? "Carregando...",
              style: TextStyle(fontSize: appBarTitleSize),
            );
          },
        ),
      ),
      body: Consumer<SettingsProvider>(
        builder: (context, provider, child) {
          if (provider.state == ViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (provider.state == ViewState.error) {
            return Center(child: Text("Erro: ${provider.errorMessage}"));
          }
          if (provider.state == ViewState.success) {
            // VARIAVEIS DE REAPROVEITAMENTO
            final data = provider.settingsData!;
            final card = data.listaConteudoCard;
            final themeController = Provider.of<ThemeController>(context);
            final _primary = Theme.of(context).colorScheme.primary;

            return BodyWidget(
              hasScroll: false,
              child: ListView.builder(
                itemCount: card.length,
                itemBuilder: (BuildContext context, index) {
                  final item = card[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardWidget(
                      width: double.infinity,
                      backgroundColor: _primary,
                      children: [
                        Text(item.titulo),
                        const SizedBox(height: 10),
                        Text(item.descricao),
                      ],
                    ),
                  );
                },
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
