import 'package:flutter/material.dart';

void main() => runApp(const BiomasApp());

// ---------------------------------------------------------------------------
// DADOS
// Cada bioma é um Map<String, String>. Campos obrigatórios do trabalho:
// nome, imagemUrl, status, critica, corHex. Extras: destaque e impactos.
// ATENÇÃO: confira os números nas fontes citadas antes de apresentar.
// ---------------------------------------------------------------------------
final List<Map<String, String>> biomas = [
  {
    'nome': 'Amazônia',
    'imagemUrl': 'lib/assets/amazonia.jpg',
    'corHex': '#2E7D32',
    'destaque': '6.288 km²',
    'status':
        'Valor de referência: cerca de 6.288 km² de desmatamento entre ago/2023 '
        'e jul/2024 (PRODES/INPE). Confira a atualização mais recente no '
        'TerraBrasilis (INPE) antes de apresentar.',
    'critica':
        'A floresta funciona como uma bomba de umidade: ela devolve água à '
        'atmosfera e ajuda a levar chuva para outras regiões do país. Quando '
        'cai, o regime de chuvas muda. O resultado aparece longe da floresta: '
        'secas mais longas, rios com menos água, hidrelétricas produzindo '
        'menos energia e lavouras com mais risco. Quem paga é a população, na '
        'conta de luz e no preço do alimento. As comunidades ribeirinhas e '
        'indígenas sofrem primeiro, com rios secos e fumaça no ar.',
    'impactos':
        'Mudança no regime de chuvas e secas mais longas;'
        'Rios baixos que isolam comunidades ribeirinhas;'
        'Fumaça de queimadas que causa doenças respiratórias;'
        'Risco para a geração de energia e para o preço dos alimentos',
  },
  {
    'nome': 'Cerrado',
    'imagemUrl': 'lib/assets/cerrado.png',
    'corHex': '#E08A1E',
    'destaque': '7.015 km²',
    'status':
        'Valor de referência: cerca de 7.015 km² de desmatamento entre ago/2023 '
        'e jul/2024 (PRODES Cerrado/INPE). Dado a verificar e atualizar no '
        'TerraBrasilis.',
    'critica':
        'O Cerrado é chamado de "berço das águas": suas nascentes abastecem '
        'grandes bacias hidrográficas do país. Suas raízes profundas ajudam a '
        'infiltrar a chuva e a recarregar os aquíferos. Ao substituir a '
        'vegetação nativa por monocultura, a água infiltra menos, as nascentes '
        'enfraquecem e os rios perdem vazão. Isso afeta cidades, irrigação e '
        'energia. O mesmo modelo que expande a fronteira agrícola pode ameaçar '
        'a água de que a própria agricultura depende.',
    'impactos':
        'Nascentes e rios com menos água;'
        'Racionamento e crise hídrica em cidades;'
        'Perda de frutos e plantas usados por comunidades tradicionais;'
        'Insegurança para a produção de alimentos',
  },
  {
    'nome': 'Mata Atlântica',
    'imagemUrl': 'lib/assets/mata-atlantica.webp',
    'corHex': '#00796B',
    'destaque': '~12%',
    'status':
        'Valor de referência: restam cerca de 12% da vegetação original '
        '(SOS Mata Atlântica/INPE). Confira a edição mais recente do Atlas '
        'da Mata Atlântica.',
    'critica':
        'É o bioma onde vive grande parte da população brasileira, e o que '
        'restou está fragmentado. As florestas seguram encostas, protegem '
        'mananciais e regulam o clima das cidades. Sem elas, chuvas fortes '
        'viram deslizamentos e enchentes, e os reservatórios que abastecem as '
        'metrópoles ficam mais vulneráveis. A perda de vegetação também '
        'esquenta as cidades e piora a qualidade do ar. Aqui a destruição já '
        'aconteceu, e a conta chega em forma de tragédia urbana.',
    'impactos':
        'Deslizamentos e enchentes em áreas urbanas;'
        'Mananciais ameaçados e risco de falta de água;'
        'Cidades mais quentes e com ar de pior qualidade;'
        'Moradores de áreas de risco são os mais afetados',
  },
  {
    'nome': 'Caatinga',
    'imagemUrl': 'lib/assets/caatinga.jpg',
    'corHex': '#C2693B',
    'destaque': '~45%',
    'status':
        'Cerca de 45% da vegetação nativa já foi perdida ou alterada, restando '
        'aproximadamente 55% de área preservada (MapBiomas). Em 2023, perdeu '
        'cerca de 2.016 km² de cobertura (MapBiomas Alertas).',
    'critica':
        'A Caatinga é o único bioma exclusivamente brasileiro e abriga '
        'milhões de pessoas no semiárido. A retirada de vegetação, o uso '
        'intenso de lenha e o manejo inadequado do solo aumentam a erosão e '
        'a desertificação. Sem cobertura vegetal, o solo perde a capacidade '
        'de reter água, o que agrava a seca e dificulta plantar e criar '
        'animais. A pobreza e a migração forçada de famílias aparecem como '
        'consequência de um ambiente cada vez mais degradado.',
    'impactos':
        'Solo empobrecido e risco de desertificação;'
        'Menos água para consumo, plantio e criação de animais;'
        'Queda de renda e migração de famílias;'
        'Dependência de carros-pipa e de ajuda emergencial',
  },
  {
    'nome': 'Pampa',
    'imagemUrl': 'lib/assets/pampa.jpg',
    'corHex': '#8BA63A',
    'destaque': '~54%',
    'status':
        'Cerca de 54% dos campos nativos já foram convertidos para uso agrícola '
        'e silvicultura, restando apenas cerca de 46% de vegetação nativa (MapBiomas).',
    'critica':
        'Os campos nativos do Pampa são pouco lembrados, mas sustentam a '
        'pecuária tradicional, protegem o solo e guardam grande diversidade '
        'de gramíneas e aves. Quando viram lavoura ou plantio de árvores em '
        'larga escala, o solo fica exposto, a erosão aumenta e a água de '
        'rios e açudes pode ser contaminada por agrotóxicos. Pequenos '
        'produtores perdem espaço, e a paisagem que forma a identidade da '
        'região vai desaparecendo sem muita atenção pública.',
    'impactos':
        'Erosão e perda de solo fértil;'
        'Contaminação de rios e açudes;'
        'Pequenos pecuaristas perdem espaço e renda;'
        'Perda de paisagem e cultura regionais',
  },
  {
    'nome': 'Pantanal',
    'imagemUrl':
        'lib/assets/pantanal.webp',
    'corHex': '#1E88B5',
    'destaque': '~30%',
    'status':
        'Valor de referência: cerca de 30% do bioma foi atingido pelo fogo em '
        '2020 (LASA/UFRJ). Verifique também os dados mais recentes do '
        'MapBiomas Fogo.',
    'critica':
        'O Pantanal é uma das maiores planícies alagáveis do planeta e '
        'funciona como uma esponja natural: armazena água na cheia e a '
        'libera aos poucos. Com desmatamento nas cabeceiras, secas '
        'prolongadas e fogo, esse ciclo se desequilibra. Rios secam, '
        'incêndios se espalham e a fumaça chega a cidades distantes. A '
        'pesca, o turismo e a pecuária pantaneira perdem renda, e as '
        'comunidades tradicionais veem o modo de vida desaparecer.',
    'impactos':
        'Incêndios cada vez mais frequentes e intensos;'
        'Rios secos e menos peixe para a pesca;'
        'Fumaça que atinge a saúde em cidades distantes;'
        'Perda de renda no turismo e na pecuária',
  },
];

// ---------------------------------------------------------------------------
// FUNÇÕES AUXILIARES
// ---------------------------------------------------------------------------

/// Converte '#RRGGBB' em Color (adiciona o canal alfa FF).
Color corDoBioma(String hex) =>
    Color(int.parse('FF${hex.replaceAll('#', '')}', radix: 16));

/// Escurece uma cor mantendo o matiz: serve para criar fundos temáticos.
Color escurecer(Color cor, double luminosidade) =>
    HSLColor.fromColor(cor).withLightness(luminosidade).toColor();

/// Rota com transição suave (fade + leve deslocamento vertical).
Route<T> rotaSuave<T>(Widget pagina) {
  return PageRouteBuilder<T>(
    transitionDuration: const Duration(milliseconds: 500),
    reverseTransitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (context, animation, secondaryAnimation) => pagina,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final curva = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutCubic,
      );
      return FadeTransition(
        opacity: curva,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0.06),
            end: Offset.zero,
          ).animate(curva),
          child: child,
        ),
      );
    },
  );
}

// ---------------------------------------------------------------------------
// APP
// ---------------------------------------------------------------------------
class BiomasApp extends StatelessWidget {
  const BiomasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biomas Brasileiros',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, // Material 3
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xFF2E7D32),
        scaffoldBackgroundColor: const Color(0xFF0B140E),
      ),
      home: const HomeScreen(),
    );
  }
}

// ---------------------------------------------------------------------------
// IMAGEM COM TRATAMENTO DE CARREGAMENTO E ERRO
// ---------------------------------------------------------------------------
class BiomaImage extends StatelessWidget {
  final String url;
  final Color cor;
  const BiomaImage({super.key, required this.url, required this.cor});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      url,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      // Se o arquivo não puder ser carregado, mostra o degradê e um aviso.
      errorBuilder: (context, erro, stack) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [cor, escurecer(cor, 0.12)],
            ),
          ),
          alignment: Alignment.center,
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.broken_image_rounded, color: Colors.white70, size: 32),
              SizedBox(height: 6),
              Text(
                'Imagem indisponível',
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ---------------------------------------------------------------------------
// TELA INICIAL
// ---------------------------------------------------------------------------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF16301C), Color(0xFF0B140E)],
          ),
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // Cabeçalho editorial
            SliverToBoxAdapter(
              child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
                  child: TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0, end: 1),
                    duration: const Duration(milliseconds: 900),
                    curve: Curves.easeOut,
                    builder: (context, v, child) => Opacity(
                      opacity: v,
                      child: Transform.translate(
                        offset: Offset(0, 20 * (1 - v)),
                        child: child,
                      ),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.eco_rounded,
                              color: Color(0xFF81C784),
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'SEIS BIOMAS · UM SÓ FUTURO',
                              style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 12,
                                color: Color(0xFF81C784),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Text(
                          'A natureza não é cenário.\nÉ a base da nossa vida.',
                          style: TextStyle(
                            fontFamily: 'serif',
                            fontSize: 32,
                            height: 1.15,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Cada bioma destruído cobra uma conta: água que '
                          'falta, chuva que muda, comida que encarece. '
                          'Toque em um bioma e descubra quem paga.',
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Grid responsivo: SliverLayoutBuilder informa a largura disponível.
            SliverLayoutBuilder(
              builder: (context, constraints) {
                final largura = constraints.crossAxisExtent;
                final colunas = largura >= 900 ? 3 : 2;
                return SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: colunas,
                      mainAxisSpacing: 14,
                      crossAxisSpacing: 14,
                      childAspectRatio: 0.78,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, i) => BiomaCard(bioma: biomas[i], indice: i),
                      childCount: biomas.length,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// CARD DO BIOMA
// ---------------------------------------------------------------------------
class BiomaCard extends StatefulWidget {
  final Map<String, String> bioma;
  final int indice; // usado para escalonar a animação de entrada
  const BiomaCard({super.key, required this.bioma, required this.indice});

  @override
  State<BiomaCard> createState() => _BiomaCardState();
}

class _BiomaCardState extends State<BiomaCard> {
  bool _pressionado = false; // controla o efeito de "encolher" ao tocar

  void _abrirDetalhes() {
    // Navigator.push empilha uma nova tela. O bioma selecionado é enviado
    // pelo CONSTRUTOR de BiomaDetailScreen.
    Navigator.push(context, rotaSuave(BiomaDetailScreen(bioma: widget.bioma)));
  }

  @override
  Widget build(BuildContext context) {
    final b = widget.bioma;
    final cor = corDoBioma(b['corHex']!);
    final verificar = b['destaque'] == 'Verificar';

    // Animação de entrada: aparece subindo e ganhando opacidade.
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 500 + widget.indice * 90),
      curve: Curves.easeOutCubic,
      builder: (context, v, child) => Opacity(
        opacity: v,
        child: Transform.translate(
          offset: Offset(0, 30 * (1 - v)),
          child: child,
        ),
      ),
      child: GestureDetector(
        onTapDown: (_) => setState(() => _pressionado = true),
        onTapUp: (_) => setState(() => _pressionado = false),
        onTapCancel: () => setState(() => _pressionado = false),
        onTap: _abrirDetalhes,
        child: AnimatedScale(
          scale: _pressionado ? 0.95 : 1.0,
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeOut,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Hero: a imagem "voa" até a tela de detalhes (mesma tag).
                Hero(
                  tag: 'bioma-${b['nome']}',
                  child: BiomaImage(url: b['imagemUrl']!, cor: cor),
                ),
                // Degradê para garantir contraste do texto.
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        cor.withValues(alpha: 0.35),
                        escurecer(cor, 0.08).withValues(alpha: 0.95),
                      ],
                      stops: const [0.35, 0.65, 1],
                    ),
                  ),
                ),
                Positioned(
                  left: 14,
                  right: 14,
                  bottom: 14,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.45),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: cor, width: 1.2),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              verificar
                                  ? Icons.info_outline
                                  : Icons.trending_down_rounded,
                              size: 14,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              b['destaque']!,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        b['nome']!,
                        style: const TextStyle(
                          fontFamily: 'serif',
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        'Ver o que está em jogo →',
                        style: TextStyle(fontSize: 12, color: Colors.white70),
                      ),
                    ],
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

// ---------------------------------------------------------------------------
// TELA DE DETALHES
// Recebe o bioma selecionado pelo CONSTRUTOR (Map<String, String>).
// ---------------------------------------------------------------------------
class BiomaDetailScreen extends StatefulWidget {
  final Map<String, String> bioma;
  const BiomaDetailScreen({super.key, required this.bioma});

  @override
  State<BiomaDetailScreen> createState() => _BiomaDetailScreenState();
}

class _BiomaDetailScreenState extends State<BiomaDetailScreen> {
  // Posição (0 a 1) da camada que o usuário arrasta com o dedo.
  double _revelar = 0.5;

  // Ícones usados na lista de impactos (repetidos em ordem).
  static const _iconesImpacto = [
    Icons.water_drop_outlined,
    Icons.thermostat_rounded,
    Icons.shopping_basket_outlined,
    Icons.health_and_safety_outlined,
  ];

  // Matriz que converte a imagem para tons de cinza (efeito "degradado").
  static const _cinza = ColorFilter.matrix(<double>[
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ]);

  @override
  Widget build(BuildContext context) {
    final b = widget.bioma;
    final cor = corDoBioma(b['corHex']!);
    final fundo = escurecer(cor, 0.09); // fundo personalizado por bioma
    final impactos = b['impactos']!.split(';');

    return Scaffold(
      backgroundColor: fundo,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          // AppBar expansível. O FlexibleSpaceBar cria o efeito parallax:
          // a imagem se move mais devagar que o conteúdo ao rolar.
          SliverAppBar(
            expandedHeight: 340,
            pinned: true,
            backgroundColor: escurecer(cor, 0.16),
            // Botão de voltar: Navigator.pop remove esta tela da pilha.
            leading: Padding(
              padding: const EdgeInsets.all(6),
              child: IconButton(
                tooltip: 'Voltar',
                style: IconButton.styleFrom(backgroundColor: Colors.black45),
                icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              titlePadding: const EdgeInsetsDirectional.only(
                start: 60,
                bottom: 14,
                end: 16,
              ),
              title: Text(
                b['nome']!,
                style: const TextStyle(
                  fontFamily: 'serif',
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Hero(
                    tag: 'bioma-${b['nome']}',
                    child: BiomaImage(url: b['imagemUrl']!, cor: cor),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black26,
                          Colors.transparent,
                          fundo.withValues(alpha: 0.95),
                        ],
                        stops: const [0, 0.4, 1],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
              child: Center(
                // Limita a largura em telas grandes (tablet/web).
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 720),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _painelStatus(b, cor),
                      const SizedBox(height: 20),
                      _cardCritica(b, cor),
                      const SizedBox(height: 28),
                      _tituloSecao(
                        'Arraste e compare',
                        Icons.swipe_rounded,
                        cor,
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Deslize o dedo: de um lado, a natureza preservada; '
                        'do outro, a imagem sem vida. (Ilustração, não é um '
                        'dado medido.)',
                        style: TextStyle(color: Colors.white60, height: 1.4),
                      ),
                      const SizedBox(height: 12),
                      _comparador(b, cor),
                      const SizedBox(height: 28),
                      _tituloSecao(
                        'No dia a dia de quem vive aqui',
                        Icons.groups_rounded,
                        cor,
                      ),
                      const SizedBox(height: 12),
                      for (int i = 0; i < impactos.length; i++)
                        _itemImpacto(
                          impactos[i].trim(),
                          _iconesImpacto[i % _iconesImpacto.length],
                          cor,
                        ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton.icon(
                          style: FilledButton.styleFrom(
                            backgroundColor: cor,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back_rounded),
                          label: const Text('Voltar aos biomas'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ----- Componentes visuais da tela de detalhes -----

  Widget _tituloSecao(String texto, IconData icone, Color cor) {
    return Row(
      children: [
        Icon(icone, color: cor, size: 22),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            texto,
            style: const TextStyle(
              fontFamily: 'serif',
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _painelStatus(Map<String, String> b, Color cor) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: cor.withValues(alpha: 0.18),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: cor.withValues(alpha: 0.6)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.warning_amber_rounded, color: cor, size: 32),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'INDICADOR DE DEGRADAÇÃO',
                  style: TextStyle(
                    fontSize: 11,
                    letterSpacing: 1.6,
                    color: Colors.white60,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  b['destaque']!,
                  style: const TextStyle(
                    fontFamily: 'serif',
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  b['status']!,
                  style: const TextStyle(
                    color: Colors.white70,
                    height: 1.45,
                    fontSize: 13.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardCritica(Map<String, String> b, Color cor) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            cor.withValues(alpha: 0.35),
            Colors.black.withValues(alpha: 0.35),
          ],
        ),
        border: Border.all(color: cor, width: 1.4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.format_quote_rounded, color: cor, size: 36),
              const SizedBox(width: 6),
              const Expanded(
                child: Text(
                  'Quem paga a conta?',
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            b['critica']!,
            style: const TextStyle(
              fontSize: 15.5,
              height: 1.6,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  /// Camada interativa: o dedo arrasta um divisor horizontal.
  /// À esquerda do divisor aparece a imagem colorida; à direita, em cinza.
  Widget _comparador(Map<String, String> b, Color cor) {
    const altura = 210.0;
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final largura = constraints.maxWidth;
          return GestureDetector(
            // onHorizontalDragUpdate: chamado a cada movimento do dedo.
            onHorizontalDragUpdate: (d) {
              setState(() {
                _revelar = (_revelar + d.delta.dx / largura).clamp(0.0, 1.0);
              });
            },
            child: SizedBox(
              height: altura,
              width: largura,
              child: Stack(
                children: [
                  // Fundo: imagem em cinza e escurecida (natureza degradada)
                  ColorFiltered(
                    colorFilter: _cinza,
                    child: SizedBox(
                      width: largura,
                      height: altura,
                      child: BiomaImage(url: b['imagemUrl']!, cor: cor),
                    ),
                  ),
                  Container(color: Colors.black.withValues(alpha: 0.35)),
                  // Frente: imagem colorida, recortada até a posição do dedo
                  ClipRect(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      widthFactor: _revelar,
                      child: SizedBox(
                        width: largura,
                        height: altura,
                        child: BiomaImage(url: b['imagemUrl']!, cor: cor),
                      ),
                    ),
                  ),
                  // Rótulos
                  const Positioned(
                    left: 12,
                    top: 12,
                    child: _Rotulo('Preservado'),
                  ),
                  const Positioned(
                    right: 12,
                    top: 12,
                    child: _Rotulo('Degradado'),
                  ),
                  // Divisor + alça
                  Positioned(
                    left: largura * _revelar - 1.5,
                    top: 0,
                    bottom: 0,
                    child: Container(width: 3, color: Colors.white),
                  ),
                  Positioned(
                    left: largura * _revelar - 20,
                    top: altura / 2 - 20,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: cor,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const Icon(
                        Icons.unfold_more_rounded,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _itemImpacto(String texto, IconData icone, Color cor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: cor.withValues(alpha: 0.25),
              shape: BoxShape.circle,
            ),
            child: Icon(icone, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              texto,
              style: const TextStyle(
                color: Colors.white,
                height: 1.4,
                fontSize: 14.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Pequeno rótulo sobre a imagem do comparador.
class _Rotulo extends StatelessWidget {
  final String texto;
  const _Rotulo(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
