// listagem das questoes e respostas
List<Map<String, dynamic>> saudeBucal = [
    {
    'question': 'Qual é a recomendação geral para escovar os dentes?',
    'answers': ['Duas vezes por semana', 'Três vezes por dia', 'Uma vez por mês', 'Apenas em dias pares'],
    'correctIndex': 1,
  },
  {
    'question': 'Qual é o nome da substância que endurece o esmalte dos dentes?',
    'answers': ['Creme dental', 'Cálcio', 'Flúor', 'Açúcar'],
    'correctIndex': 2,
  },
  {
    'question': 'O que pode acontecer se não cuidarmos da saúde bucal?',
    'answers': [
      'Nada, a saúde bucal não afeta a saúde geral',
      'Apenas mau hálito',
      'Cáries, gengivite e outros problemas de saúde',
      'Os dentes começam a brilhar'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'Qual é a melhor maneira de evitar problemas bucais?',
    'answers': ['Não escovar os dentes', 'Comer muitos doces', 'Fazer exercícios físicos', 'Manter uma boa higiene bucal'],
    'correctIndex': 3,
  },
  {
    'question': 'O que é o fio dental usado para fazer?',
    'answers': ['Pentear os cabelos', 'Limpar entre os dentes', 'Enrolar bolas de algodão', 'Limpar as unhas'],
    'correctIndex': 1,
  },
  {
    'question': 'Qual desses alimentos é mais propenso a causar cáries?',
    'answers': ['Frutas e vegetais', 'Leite', 'Batata frita', 'Chocolate'],
    'correctIndex': 2,
  },
  {
    'question': 'Por que é importante evitar o consumo excessivo de doces?',
    'answers': [
      'Para economizar dinheiro',
      'Porque o açúcar faz os dentes brilharem',
      'Para manter a saúde bucal e geral',
      'Porque os doces são apenas para ocasiões especiais'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'Qual é o tempo mínimo recomendado para escovar os dentes?',
    'answers': ['10 segundos', '1 minuto', '5 minutos', '30 segundos'],
    'correctIndex': 3,
  },
  {
    'question': 'O que é uma obturação?',
    'answers': ['Um brinquedo', 'Uma forma de pentear o cabelo', 'Um tipo de doce', 'Um tratamento para cáries'],
    'correctIndex': 3,
  },
  {
    'question': 'Quais são os sinais de uma possível infecção na boca?',
    'answers': ['Unhas saudáveis', 'Gengivas vermelhas, inchadas ou sensíveis', 'Visão turva', 'Dor no pescoço'],
    'correctIndex': 1,
  },
];

List<Map<String, dynamic>> alimentacao = [
  {
    'question': 'Qual alimento é uma fonte rica de proteína?',
    'answers': ['Arroz', 'Feijão', 'Macarrão', 'Maçã'],
    'correctIndex': 1,
  },
  {
    'question': 'Qual desses alimentos é considerado uma gordura saudável?',
    'answers': ['Manteiga', 'Azeite de Oliva', 'Refrigerante', 'Batata Frita'],
    'correctIndex': 1,
  },
  {
    'question': 'Qual é o grupo alimentar que inclui leite e seus derivados?',
    'answers': ['Frutas', 'Carnes', 'Laticínios', 'Cereais'],
    'correctIndex': 2,
  },
  {
    'question': 'Qual destes alimentos é uma boa fonte de fibras?',
    'answers': ['Arroz Branco', 'Pão Branco', 'Brócolis', 'Bacon'],
    'correctIndex': 2,
  },
  {
    'question': 'Qual é a importância de beber água?',
    'answers': [
      'Não é importante',
      'Ajuda na digestão',
      'Substitui a necessidade de alimentos',
      'Causa sede'
    ],
    'correctIndex': 1,
  },
  {
    'question': 'Qual é o benefício de consumir alimentos ricos em vitamina C?',
    'answers': [
      'Deixa a pele mais pálida',
      'Ajuda a emagrecer rapidamente',
      'Fortalece os ossos',
      'Melhora o sistema imunológico'
    ],
    'correctIndex': 3,
  },
  {
    'question': 'Qual é a porção recomendada de vegetais por dia?',
    'answers': ['Nenhuma', '1 grama', '2-3 porções', '10 porções'],
    'correctIndex': 2,
  },
  {
    'question': 'Qual é o grupo alimentar que inclui feijão e lentilhas?',
    'answers': ['Frutas', 'Carnes', 'Laticínios', 'Leguminosas'],
    'correctIndex': 3,
  },
  {
    'question': 'Qual é o nutriente essencial para a construção de músculos?',
    'answers': ['Vitamina C', 'Fibra', 'Proteína', 'Açúcar'],
    'correctIndex': 2,
  },
  {
    'question': 'Qual destes alimentos é uma fonte de carboidratos complexos?',
    'answers': ['Doces', 'Refrigerante', 'Batata Doce', 'Pizza'],
    'correctIndex': 2,
  },
];

List<Map<String, dynamic>> reciclagem = [
    {
    'question': 'Qual dos itens abaixo NÃO é geralmente reciclável?',
    'answers': ['Plástico', 'Vidro', 'Papel', 'Guardanapos sujos'],
    'correctIndex': 3,
  },
  {
    'question': 'O que é o lixo eletrônico?',
    'answers': ['Lixo de comida', 'Lixo que brilha', 'Itens eletrônicos descartados', 'Papéis de lixo'],
    'correctIndex': 2,
  },
  {
    'question': 'Qual é o primeiro passo para a reciclagem?',
    'answers': ['Colocar tudo no mesmo saco', 'Separar os materiais', 'Jogar fora', 'Deixar os itens onde estão'],
    'correctIndex': 1,
  },
  {
    'question': 'O que é a compostagem?',
    'answers': ['Um tipo de reciclagem', 'Uma dança popular', 'Um filme de ação', 'Decoração de jardim'],
    'correctIndex': 0,
  },
  {
    'question': 'Quais são as três setas na maioria dos símbolos de reciclagem?',
    'answers': ['Setas mágicas', 'Setas de direção', 'Setas de corrida', 'Setas de reciclagem'],
    'correctIndex': 1,
  },
  {
    'question': 'Qual dos seguintes materiais geralmente é reciclável?',
    'answers': ['Papelão sujo', 'Papel limpo', 'Papel plastificado', 'Papel rasgado'],
    'correctIndex': 1,
  },
  {
    'question': 'Por que a reciclagem é importante?',
    'answers': [
      'Porque é uma moda',
      'Porque mantém as ruas limpas',
      'Porque ajuda a conservar recursos naturais e reduzir o lixo',
      'Porque as pessoas não têm mais nada para fazer'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'Qual é a diferença entre lixo orgânico e reciclável?',
    'answers': [
      'Nenhuma diferença',
      'O lixo orgânico é mais pesado',
      'O lixo reciclável é feito de plástico',
      'O lixo orgânico pode ser decomposto naturalmente, enquanto o reciclável pode ser transformado em novos produtos'
    ],
    'correctIndex': 3,
  },
  {
    'question': 'Qual é a importância de reduzir o uso de plástico descartável?',
    'answers': [
      'Não tem importância',
      'Plástico descartável é mais barato',
      'Ajuda a preservar a saúde do planeta e dos animais',
      'Plástico é biodegradável'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'O que fazer com as pilhas e baterias usadas?',
    'answers': [
      'Jogar no lixo comum',
      'Reciclar com o papel',
      'Levar a um ponto de coleta de pilhas e baterias',
      'Guardá-las em casa'
    ],
    'correctIndex': 2,
  },
];

List<Map<String, dynamic>> sustentabilidade = [
    {
    'question': 'O que significa sustentabilidade?',
    'answers': [
      'Usar recursos naturais sem pensar',
      'Preservar o meio ambiente',
      'Consumir mais para produzir mais',
      'Descartar resíduos a qualquer hora'
    ],
    'correctIndex': 1,
  },
  {
    'question': 'O que são fontes renováveis de energia?',
    'answers': [
      'Fontes de energia que nunca se esgotam',
      'Fontes de energia que não são sustentáveis',
      'Fontes de energia produzidas apenas à noite',
      'Fontes de energia que não podem ser utilizadas'
    ],
    'correctIndex': 0,
  },
  {
    'question': 'Qual é a importância de reduzir o consumo de água?',
    'answers': [
      'Não há necessidade de reduzir o consumo de água',
      'Água é infinita',
      'Para conservar um recurso limitado e evitar escassez',
      'A água é inesgotável'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'O que é um consumo consciente?',
    'answers': [
      'Comprar tudo o que é possível',
      'Não se preocupar com as compras',
      'Comprar apenas itens de luxo',
      'Fazer escolhas de compra considerando o impacto ambiental e social'
    ],
    'correctIndex': 3,
  },
  {
    'question': 'Qual é o objetivo da coleta seletiva?',
    'answers': [
      'Separar o lixo apenas para complicar',
      'Deixar o lixo mais colorido',
      'Facilitar o descarte do lixo',
      'Separar resíduos para que possam ser reciclados'
    ],
    'correctIndex': 3,
  },
  {
    'question': 'O que é a pegada de carbono?',
    'answers': [
      'Uma marca no chão',
      'Uma pegada gigante',
      'A quantidade de carbono emitida por uma pessoa, organização ou produto',
      'Um tipo de bota'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'O que são produtos biodegradáveis?',
    'answers': [
      'Produtos que não se decompõem',
      'Produtos feitos de bioplástico',
      'Produtos que se decompõem rapidamente no meio ambiente',
      'Produtos que nunca estragam'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'O que é upcycling?',
    'answers': [
      'Reciclagem tradicional',
      'Jogar coisas fora',
      'Reutilizar materiais para criar produtos melhores',
      'Deixar as coisas no mesmo lugar'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'Qual é o objetivo da agricultura sustentável?',
    'answers': [
      'Produzir alimentos de qualquer maneira',
      'Usar pesticidas em excesso',
      'Preservar o solo e os recursos naturais enquanto produz alimentos',
      'Produzir mais alimentos usando menos terra'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'Por que a sustentabilidade é importante para o futuro do planeta?',
    'answers': [
      'Não é importante, o planeta cuidará de si mesmo',
      'Porque a poluição não é um problema',
      'Porque garante um ambiente saudável e recursos para as gerações futuras',
      'Porque a humanidade não tem impacto no meio ambiente'
    ],
    'correctIndex': 2,
  },
];

List<Map<String, dynamic>> exercicio= [
    {
    'question': 'Qual é o benefício da prática regular de exercícios físicos?',
    'answers': [
      'Nenhum benefício',
      'Aumento da flexibilidade',
      'Risco de lesões',
      'Melhora da saúde cardiovascular, força e disposição'
    ],
    'correctIndex': 3,
  },
  {
    'question': 'Qual é a importância do aquecimento antes do exercício?',
    'answers': [
      'Não é importante',
      'Ajuda a se refrescar',
      'Evita riscos de lesões e prepara o corpo para o exercício',
      'Diminui a flexibilidade'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'O que é o alongamento?',
    'answers': [
      'Uma forma de correr rápido',
      'Uma dança',
      'Um exercício de força',
      'Um exercício para esticar os músculos'
    ],
    'correctIndex': 3,
  },
  {
    'question': 'Qual é a importância da hidratação durante o exercício?',
    'answers': [
      'Não é importante, pode-se beber após o exercício',
      'Ajuda a ganhar peso',
      'Evita o suor',
      'Mantém o corpo funcionando bem e previne a desidratação'
    ],
    'correctIndex': 3,
  },
  {
    'question': 'O que é a resistência muscular?',
    'answers': [
      'Não se aplica à educação física',
      'A capacidade de correr muito rápido',
      'A força dos músculos',
      'A capacidade dos músculos de realizar esforços por um período de tempo'
    ],
    'correctIndex': 3,
  },
  {
    'question': 'O que é a frequência cardíaca?',
    'answers': [
      'Uma música',
      'Um teste de audição',
      'A quantidade de vezes que o coração bate por minuto',
      'A cor do coração'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'O que é o condicionamento físico?',
    'answers': [
      'Um estilo de cabelo',
      'A habilidade de tocar um instrumento musical',
      'A habilidade de realizar atividades físicas com eficiência',
      'A forma como as roupas são organizadas no armário'
    ],
    'correctIndex': 2,
  },
  {
    'question': 'Qual é a importância do descanso após o exercício?',
    'answers': [
      'Não é importante',
      'Ajuda a ganhar peso',
      'Evita a sonolência',
      'Permite que os músculos se recuperem e cresçam'
    ],
    'correctIndex': 3,
  },
  {
    'question': 'O que é o exercício aeróbico?',
    'answers': [
      'Um exercício que só é feito no ar',
      'Um exercício que não envolve o coração',
      'Um exercício de força',
      'Um exercício que aumenta a capacidade cardiovascular'
    ],
    'correctIndex': 3,
  },
  {
    'question': 'Qual é a importância de uma boa postura durante o exercício?',
    'answers': [
      'Não é importante, a postura não afeta o corpo',
      'Ajuda a parecer mais alto',
      'Ajuda a melhorar a aparência',
      'Evita lesões e contribui para o correto alinhamento do corpo'
    ],
    'correctIndex': 3,
  },
];
