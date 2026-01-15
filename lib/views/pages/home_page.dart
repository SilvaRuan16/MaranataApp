// ignore_for_file: avoid_print

import 'package:biblia_sagrada/core/constants/constants.dart';
import 'package:biblia_sagrada/core/enums/view_state.dart';
import 'package:biblia_sagrada/core/other/iconHelper.dart';
import 'package:biblia_sagrada/provider/home_provider.dart';
// ignore: unused_import
import 'package:biblia_sagrada/provider/theme_provider.dart';
import 'package:biblia_sagrada/services/system/navigation_service.dart';
import 'package:biblia_sagrada/views/widgets/appbar_widget.dart';
import 'package:biblia_sagrada/views/widgets/body_widget.dart';
import 'package:biblia_sagrada/views/widgets/button_widget.dart';
import 'package:biblia_sagrada/views/widgets/card_widget.dart';
import 'package:biblia_sagrada/views/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppbarWidget(
        title: Consumer<HomeProvider>(
          builder: (_, provider, __) {
            return Text(
              provider.homeData?.titulo ?? "Carregando...",
              style: TextStyle(fontSize: appBarTitleSize),
            );
          },
        ),
      ),
      drawer: DrawerWidget(),
      body: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          if (provider.state == ViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (provider.state == ViewState.error) {
            return Center(child: Text("Erro: ${provider.errorMessage}"));
          }
          if (provider.state == ViewState.success) {
            // VARIAVEIS DE REAPROVEITAMENTO
            final data = provider.homeData!;
            final btn = data.listaConteudoBotao;
            final MainAxisAlignment aligment = MainAxisAlignment.spaceBetween;
            // ignore: no_leading_underscores_for_local_identifiers, unused_local_variable
            final _onPrimary = Theme.of(context).colorScheme.onPrimary;

            return BodyWidget(
              child: Column(
                children: [
                  CardWidget(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    width: double.infinity,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Gênesis 1:12',
                            style: TextStyle(
                              fontSize: textSizeSystem,
                              color: _onPrimary,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.heart_broken_sharp,
                              color: _onPrimary,
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.share, color: _onPrimary),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'E a terra produziu erva, erva dando semente conforme a sua espécie, e a árvore frutífera, cuja semente está nela conforme a sua espécie; e viu Deus que era bom',
                        style: TextStyle(
                          fontSize: textSizeSystem,
                          color: _onPrimary,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: aligment,
                    children: btn.sublist(0, 2).map((element) {
                      return Expanded(
                        child: ButtonWidget(
                          buttonText: element.titulo,
                          icon: IconHelper.getIcon(element.icon),
                          onPressed: () => NavigationService.navigateTo(
                            context,
                            element.titulo,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: aligment,
                    children: btn.sublist(2, 4).map((element) {
                      return Expanded(
                        child: ButtonWidget(
                          buttonText: element.titulo,
                          icon: IconHelper.getIcon(element.icon),
                          onPressed: () => NavigationService.navigateTo(
                            context,
                            element.titulo,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 30),
                  Text(data.versao),
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
