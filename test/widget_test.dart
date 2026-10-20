import 'package:calculadora/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('exibe os biomas na tela inicial', (tester) async {
    tester.view.physicalSize = const Size(1200, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const BiomasApp());
    await tester.pump(const Duration(seconds: 1));

    expect(find.text('SEIS BIOMAS · UM SÓ FUTURO'), findsOneWidget);
    for (final nome in [
      'Amazônia',
      'Cerrado',
      'Mata Atlântica',
      'Caatinga',
      'Pampa',
      'Pantanal',
    ]) {
      expect(find.text(nome), findsOneWidget);
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('abre os detalhes e permite voltar à lista', (tester) async {
    tester.view.physicalSize = const Size(1200, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const BiomasApp());
    await tester.pump(const Duration(seconds: 1));

    await tester.tap(find.text('Amazônia'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 600));

    expect(find.text('INDICADOR DE DEGRADAÇÃO'), findsOneWidget);
    expect(find.text('Quem paga a conta?'), findsOneWidget);
    expect(find.text('Arraste e compare'), findsOneWidget);

    await tester.tap(find.byTooltip('Voltar'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.text('SEIS BIOMAS · UM SÓ FUTURO'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
