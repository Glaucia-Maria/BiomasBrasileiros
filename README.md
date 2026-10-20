# Biomas Brasileiros

Aplicativo Flutter educativo sobre os seis biomas brasileiros: Amazônia,
Cerrado, Mata Atlântica, Caatinga, Pampa e Pantanal.

## Funcionalidades

- Cartões responsivos com imagem e indicador de cada bioma.
- Tela de detalhes com contexto, impactos socioambientais e comparação visual
  interativa entre uma imagem colorida e a mesma imagem em tons de cinza.
- Tratamento visual para falhas no carregamento das imagens remotas.

As imagens precisam de conexão com a internet. No Android, a permissão de rede
está declarada no manifesto de produção. Os indicadores mostrados são referências
didáticas: verifique as fontes e atualize os dados antes de usá-los em trabalhos
ou apresentações.

## Executar

```sh
flutter pub get
flutter run
```

## Validar

```sh
flutter analyze
flutter test
```
