-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Out-2020 às 23:34
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entretenimento'),
(3, 'Política'),
(4, 'Moda'),
(5, 'Notícia'),
(6, 'Mundo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `noticia` text,
  `ano` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titulo`, `noticia`, `ano`, `codCategoria`, `mes`, `dia`, `codRedator`) VALUES
(1, 'Em meio à turbulência no Botafogo, Montenegro afirma: \"O clube está falido\"', 'O Botafogo vive dia turbulento depois de perder para o Cuiabá no jogo de ida das oitavas de final da Copa do Brasil na última terça-feira. Após declaração polêmica de Felipe Neto e demissão do técnico Bruno Lazaroni, o membro do comitê executivo de futebol Carlos Augusto Montenegro convocou a imprensa para uma entrevista coletiva, falou em \"vontade de sair\" e afirmou que \"o clube está falido\".\r\n\r\n- Eu já estava com vontade de sair, mas agora eu não posso, pois seria covarde. Poderia desmarcar essa entrevista, mas preferi fazer. Essa será uma entrevista histórica, pois será a última que pretendo fazer. A ideia do comitê preservou algumas pessoas no Botafogo, quem mais aparecemos somos eu e Rotenberg. Coloco a cara e acabo pagando por isso, mas não vou mudar com 66 anos. Está na hora de eu sair, pois está me fazendo mal - afirma Montenegro.\r\n\"As pessoas não entendem que o clube está falido, que não tem dinheiro para pagar água e luz, ficam pedindo Luxemburgo, Abel, contratações, mas não sabem que subimos alguns atletas na marra, a própria efetivação do Bruno foi por falta de dinheiro\"', 2020, 1, 10, 28, 1),
(3, 'Bolsonaro revoga decreto sobre privatização de postos de saúde do SUS', 'O presidente Jair Bolsonaro revogou nesta quarta-feira (28) o decreto que autorizava o Ministério da Economia a realizar estudos sobre a inclusão das Unidades Básicas de Saúde (UBS) dentro do Programa de Parcerias de Investimentos da Presidência da República (PPI).\r\n\r\nA revogação foi publicada em uma edição extra do \"Diário Oficial da União\". Antes, Bolsonaro anunciou a decisão em uma rede social.\r\n\r\n\"Temos atualmente mais de 4.000 Unidades Básicas de Saúde (UBS) e 168 Unidades de Pronto Atendimento (UPA) inacabadas. Faltam recursos financeiros para conclusão das obras, aquisição de equipamentos e contratação de pessoal\", disse Bolsonaro na postagem.\r\n\r\n\"O espírito do Decreto 10.530, já revogado, visava o término dessas obras, bem como permitir aos usuários buscar a rede privada com despesas pagas pela União\", prosseguiu.\r\n\r\n\'Obscuro\', \'apressado\' e \'inconstitucional\': especialistas analisam decreto sobre privatização de postos de saúde do SUS\r\nCom pandemia e plano de privatizações empacado, leilões do governo agora são promessa para 2021 e 2022\r\nMeia hora depois, Bolsonaro editou a publicação e adicionou mais um trecho, em que fala de uma possível reedição do decreto.\r\n\r\n\"A simples leitura do Decreto em momento algum sinalizava para a privatização do SUS. Em havendo entendimento futuro dos benefícios propostos pelo Decreto o mesmo poderá ser reeditado\", escreveu.', 2020, 3, 10, 27, 9),
(4, 'Dólar dispara e fecha cotado a R$ 5,76; turismo chega a R$ 6', 'O dólar encerrou a quarta-feira (28) negociado a R$ 5,7599, uma alta de 1,31%. Mais cedo, chegou a bater R$ 5,7900, maior valor na mesma sessão desde 18 de maio (R$ 5,8025). Na mínima, chegou a a R$ 5,7025. Já o câmbio turismo chegou a R$ 6,0186.\r\n\r\nNa parcial do mês, o dólar acumula alta de 2,52%. No ano, tem valorização de 43,65%.\r\n\r\nA alta perdeu força após intervenção do Banco Central, que vendeu US$ 1,042 bilhão em leilão de dólares à vista, no dia de reunião do Comitê de Política Monetária (Copom) sobre a taxa básica de juros do país.\r\n\r\nO mercado viveu um dia tenso por conta de notícias vindas da Europa, onde há uma nova onda de contágios da Covid-19. Nesta quarta-feira (28), França e Alemanha anunciaram que fecharão novamente bares e restaurantes. O temor é por uma nova parada da economia global.\r\n\r\nA Bovespa, por sua vez, caiu 4,25%, aos 95.368 pontos, com avanço da Covid-19 e pessimismo com a economia global. Foi a pior pontuação desde 2 de outubro.\r\n\r\nLá fora, o aumento dos casos de coronavírus provocava temores de que lockdowns na Europa prejudiquem a recuperação econômica. Pesavam também as incertezas antes das eleições nos EUA.\r\n\r\n\"Os mercados globais parecem estar incrivelmente nervosos, o misto de alta nos casos de Covid-19 e mortes e o potencial lockdown na França somam-se à incerteza antes das eleições nos EUA e você tem esse pano de fundo bastante fraco\", disse John Woolfitt, diretor de trading do Atlantic Capital Markets.', 2020, 6, 10, 24, 9),
(5, 'Brasil passa de 158 mil mortes por Covid-19, segundo consórcio dos veículos de imprensa', 'O Brasil tem 158.101 mortes por coronavírus confirmadas até as 13h desta quarta-feira (28), segundo levantamento do consórcio de veículos de imprensa a partir de dados das secretarias estaduais de Saúde.\r\n\r\nDesde o balanço das 20h de terça-feira (27), 7 estados atualizaram seus dados: BA, CE, GO, MG, MS, RR e TO.\r\n\r\nVeja os números consolidados:\r\n\r\n158.101 mortes confirmadas\r\n5.445.475 casos confirmados\r\nÀs 8h, o consórcio publicou a primeira atualização do dia com 157.988 mortes e 5.441.210 casos.\r\n\r\nNa terça-feira, às 20h, o balanço indicou: 157.981 mortes confirmadas, 530 em 24 horas. Com isso, a média móvel de mortes no Brasil em 7 dias foi de 442, a menor marca desde o dia 6 de maio, quando estava em 437. É a primeira vez desde então que essa média fica abaixo de 450. A variação foi de -11% em comparação à média de 14 dias atrás, indicando tendência de estabilidade nas mortes por Covid-19.\r\n\r\nEm casos confirmados, desde o começo da pandemia 5.440.903 brasileiros já tiveram ou têm o novo coronavírus, com 29.353 desses confirmados no último dia. A média móvel de novos casos nos últimos 7 dias foi de 23.727 por dia, uma variação de +19% em relação aos casos registrados em 14 dias. Ou seja, o país voltou a registrar alta após 7 dias em estabilidade.\r\n\r\nÉ a primeira vez desde o dia 4 de agosto que os casos apresentam tendência de alta.\r\n\r\nBrasil, 27 de outubro\r\nQuatro estados apresentam indicativo de alta de mortes: Amazonas, Amapá, Ceará e Pernambuco. Outros onze estados têm curvas que apontam queda.\r\n\r\nVale ressaltar que há estados em que o baixo número médio de óbitos pode levar a grandes variações percentuais. No AP, por exemplo, a média estava em 1 permaneceu em 1 no período de duas semanas, resultando em uma variação de +50%. No AM, que teve a maior variação (+74%), o número saltou de 9 para 16 mortes por dia. Os dados de médias móveis são, em geral, em números decimais e arredondados para facilitar a apresentação dos dados.\r\n\r\nEstados\r\nSubindo (4 estados): AM, AP, CE e PE\r\nEm estabilidade, ou seja, o número de mortes não caiu nem subiu significativamente (12 estados): PR, RS, SC, ES, MG, RJ, GO, AC, PA, TO, MA e SE\r\nEm queda (10 estados + o DF): SP, DF, MS, MT, RO, RR, AL, BA, PB, PI e RN\r\nEssa comparação leva em conta a média de mortes nos últimos 7 dias até a publicação deste balanço em relação à média registrada duas semanas atrás (entenda os critérios usados pelo G1 para analisar as tendências da pandemia).', 2020, 5, 10, 24, 6),
(6, 'Alemanha e França anunciam lockdown parcial após explosão de casos de Covid-19', 'Os governos da Alemanha e da França anunciaram nesta quarta-feira (28) um lockdown parcial para conter a segunda onda do novo coronavírus nos dois países.\r\n\r\nAs novas medidas ocorrem em uma semana de forte alta nos casos de Covid-19 na Europa, com mais diagnósticos do que a onda mortal vista no primeiro semestre. O intuito é evitar colapso de hospitais, como ocorrido meses atrás, no começo da pandemia.\r\n\r\nEm comum, as novas diretrizes anunciadas incluem o fechamento de bares e restaurantes. Apenas escolas podem abrir.\r\n\r\nCovid-19: as lições que Brasil pode aprender com segunda onda de casos na Europa\r\nEm meio à 2ª onda de Covid na Europa, Bélgica pode ficar sem leitos de UTI em 2 semanas', 2020, 6, 10, 19, 1),
(7, 'Com um a menos, Santos segura empate com Ceará nas oitavas da Copa do Brasil', 'Santos e Ceará ficaram no empate por 0 a 0 na tarde desta quarta-feira, na Vila Belmiro, pelo jogo de ida das oitavas de final da Copa do Brasil – foi a estreia do Peixe na competição, enquanto o Vozão já vinha disputando as fases anteriores. A expulsão do zagueiro Lucas Veríssimo, no fim do primeiro tempo, decidiu o andamento da partida: na segunda etapa, o Ceará pressionou em busca da vitória, criou chances e não chegou ao gol, enquanto o Peixe explorou contra-ataques e também não conseguiu abrir o placar. A vaga nas quartas de final será decidida em Fortaleza, semana que vem.\r\n\r\nSantos e Ceará jogam na próxima quarta-feira, às 19h (de Brasília), na Arena Castelão, pelo jogo de volta das oitavas. Qualquer empate leva a decisão para os pênaltis. Um eventual vencedor no tempo normal, claro, fica com a vaga. CLIQUE AQUI e veja a tabela da Copa do Brasil.\r\n\r\nO lance capital do jogo ocorreu nos acréscimos do primeiro tempo, quando Lucas Veríssimo acertou a cabeça de Rafael Sobis com as travas da chuteira, em um lance no meio-campo. O comentarista Sálvio Spinola esclareceu que \"não houve intensidade no lance\", mas que a CBF recomenda expulsão quando há um golpe na região da cabeça. O árbitro Vagner do Nascimento Magalhães havia aplicado cartão amarelo, decisão revista após consulta ao VAR.\r\n\r\n', 2020, 2, 10, 26, 2),
(8, 'Sapato social ou sapatenis? Dicas para você não errar na escolha', 'Formal demais para um tênis. Informal demais para um sapato. De vez em quando surge aquela situação em que você precisa estar elegante, mas sem apelar para o sapato social. Para esses momentos, a escolha mais versátil é o sapatênis. Ele é uma peça coringa que alia elegância e conforto, ideal para sair de noite, ir na balada, ficar na roda de amigos, ir no barzinho, trabalhar, namorar, etc. A Buscariollo elencou alguns modelos “chave” que combinam com tudo.\r\n\r\n26/09/2016 16h50 - Atualizado em 26/09/2016 16h50\r\n\r\nSapato social ou sapatenis? Dicas para você não errar na escolha\r\nLogo Lojas Milla\r\nPORLOJAS MILLA\r\n\r\nconteúdo de responsabilidade do anunciante\r\n\r\nFACEBOOK\r\nPode parecer fácil combinar roupa masculina, mas de vez em quando bate aquela dúvida sobre o calçado ideal, de acordo com a ocasião.\r\n\r\nO sapatenis\r\n\r\nFormal demais para um tênis. Informal demais para um sapato. De vez em quando surge aquela situação em que você precisa estar elegante, mas sem apelar para o sapato social. Para esses momentos, a escolha mais versátil é o sapatênis. Ele é uma peça coringa que alia elegância e conforto, ideal para sair de noite, ir na balada, ficar na roda de amigos, ir no barzinho, trabalhar, namorar, etc. A Buscariollo elencou alguns modelos “chave” que combinam com tudo:\r\n\r\n\r\nPode parecer superficial, porém a roupa que você usa diz muito de quem você é. Simplesmente, porque sua personalidade será revelada ao escolher uma cor, um modelo, algo mais confortável ou mais tradicional, e por aí vai.\r\n\r\nOs sapatos sociais são os calçados que mais proporcionam estilo e requinte ao homem.\r\nSão peças recomendadas, principalmente, para ocasiões formais, festas que exigem traje esporte fino, esporte chic ou black tie. Quando combinados com peças jeans, por exemplo, tornam o look mais casual. Veja as indicações da Buscariollo , de sapatos sociais que combinam tanto com roupas mais sérias, quanto com jeans.', 2020, 4, 4, 12, 9),
(9, 'Wesley Safadão anuncia que fará show em Natal no dia 21 de novembro', 'Wesley Safadão fará show em Natal no próximo dia 21 de novembro. O cantor confirmou a apresentação durante a live do Garota Vip, realizada no sábado (24), em Recife.\r\n\r\nDe acordo com o próprio Safadão, a festa WS Limited será realizada na Arena das Dunas, para 3 mil pessoas. A venda de ingressos começa no dia 2 ou 3 de novembro.\r\n\r\nDurante a live, o cantor também fez um apelo para que as autoridades deem mais atenção para o setor de entretenimento, um dos mais afetados pela pandemia do novo coronavírus (veja no vídeo abaixo).\r\n\r\n\"Deixo mais uma vez o meu apelo aos governadores e aos prefeitos de todas as cidades. Olhem um pouco para o entretenimento. Não pode fazer show, mas pode fazer comício. Não pode fazer show, mas praia está lotada. Olhem para o entretenimento! Pelo amor de Deus. A gente precisa voltar a trabalhar. A gente precisa sentir essa energia novamente\", disse.', 2020, 2, 9, 31, 6),
(10, 'Mundo registra mais de meio milhão de casos da Covid-19 em apenas um dia e bate novo recorde, segundo agência', 'O mundo registrou na terça-feira (27) um recorde de mais de 500 mil novos casos de coronavírus, segundo um balanço da agência AFP com base nos números divulgados pelas autoridades de saúde.\r\n\r\nNo total, foram declaradas 516.898 novas infecções e 7.723 mortes em 24 horas. De acordo com especialistas, este aumento do número de casos no mundo não pode ser explicado apenas pelo maior número de testes realizados desde a primeira onda mundial da epidemia, compreendida entre março e abril.\r\n\r\nMais da metade dos casos registrados em 24 horas estão localizados nos dez países mais afetados, segundo o levantamento da AFP: Estados Unidos, Índia, Brasil, Rússia, França, Espanha, Argentina, Colômbia, Reino Unido e México.\r\n\r\nColômbia é o 8º país do mundo a passar de 1 milhão de casos de Covid\r\nCovid-19: França, Rússia e Reino Unido registram recorde de mortes\r\nFrança alerta para risco de colapso do sistema de saúde na primeira quinzena de novembro\r\nEstados Unidos também vive um aumento no número de casos detectados. Pela primeira vez, registrou mais de 500 mil infectados em uma semana, enquanto na semana passada eram 370 mil.\r\n\r\nA Europa é o continente onde a pandemia avança mais rápido, com uma média diária maior que 220 mil novos casos nos últimos sete dias, um aumento de 44% em relação à semana anterior, segundo a AFP. A região se aproxima dos 2 mil mortos por dia. Durante o pior momento da pandemia, em abril, eram registrados mais de 4 mil mortes diárias.', 2020, 6, 10, 5, 5),
(11, 'Biden vota nas eleições presidenciais dos EUA', 'O candidato democrata para a presidência dos Estados Unidos, Joe Biden, votou antecipadamente nesta quarta-feira (28) na cidade onde mora, Wilmington, no Delaware. A seis dias das eleições, ele foi para o centro de votação acompanhado de sua esposa Jill.\r\n\r\n\"Nós acabamos de votar\", disse Biden nas escadarias do Carvel State Office Building, sede administrativa do governo regional.\r\n\r\nA data oficial do pleito é 3 de novembro, mas pelo menos 74 milhões de norte-americanos já votaram antecipadamente, estima o \"Projeto Eleições\", da Universidade da Flórida. O número já passa da metade dos votos totais das eleições de 2016.\r\n\r\nO presidente Donald Trump, que tenta a reeleição, também já depositou seu voto no fim da semana passada, na Flórida.\r\n\r\nDiferente do Brasil, o voto não é obrigatório nos Estados Unidos, e, lá, os eleitores também podem escolher o candidato antes da data oficial das eleições, inclusive enviando o voto pelo correio. O país usa cédulas de papel.\r\n\r\n\r\n', 2020, 3, 10, 15, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `email` varchar(155) DEFAULT NULL,
  `sobrenome` varchar(155) DEFAULT NULL,
  `nome` varchar(155) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `email`, `sobrenome`, `nome`, `ddd`, `telefone`, `cidade`, `uf`, `codTurma`, `mes`, `dia`, `ano`) VALUES
(1, 'gilsinho@email.com', 'dos Reis Gil', 'Giovani', 11, 977788897, 'Mauá', 'SP', 1, 12, 10, 2004),
(2, 'cainho@email.com', 'Silva', 'Cainho', 11, 965431234, 'Ribeirão Pires', 'SP', 3, 8, 8, 2005),
(5, 'mendes@email.com', 'Mendes', 'Jailson', 11, 99995566, 'Santo André', 'SP', 1, 7, 10, 2006),
(6, 'caetaninho@gmeil.com', 'Caetano', 'João', 11, 34421567, 'Mauá', 'SP', 6, 2, 18, 2001),
(9, 'felipe@outlock.com', 'Vinicuis', 'Felipe', 11, 97776543, 'Ribeirão Pires', 'SP', 4, 7, 11, 2000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Indexes for table `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Indexes for table `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Indexes for table `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `mes` (`mes`),
  ADD KEY `dia` (`dia`),
  ADD KEY `ano` (`ano`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
