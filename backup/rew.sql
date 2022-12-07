-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Dez-2022 às 01:26
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rew`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avalia`
--

CREATE TABLE `avalia` (
  `cod_avalia` int(11) NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_livro` int(11) DEFAULT NULL,
  `estrelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `capitulos`
--

CREATE TABLE `capitulos` (
  `cod_capitulo` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `texto` mediumtext DEFAULT NULL,
  `cod_livro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `capitulos`
--

INSERT INTO `capitulos` (`cod_capitulo`, `titulo`, `texto`, `cod_livro`) VALUES
(1, 'Cap&iacute;tulo 1', '&lt;p&gt;Humano, algo t&amp;atilde;o complexo e misterioso, tantas vis&amp;otilde;es e maneiras de entender, t&amp;atilde;o belo e cruel, uma mistura de tudo: Sentimentos, apar&amp;ecirc;ncia e etc. Algo t&amp;atilde;o confuso quanto um quebra-cabe&amp;ccedil;a em branco. Vejo a humanidade como algo &amp;uacute;nico, algo t&amp;atilde;o bom e t&amp;atilde;o ruim ao mesmo tempo. No fim, creio que nunca vou entender. Mesmo sendo um, n&amp;atilde;o consigo me descrever.&lt;/p&gt;', 5),
(2, 'Matem&aacute;tico', '&lt;p&gt;Por todas as raz&amp;otilde;es e problemas,&lt;/p&gt;\r\n&lt;p&gt;Eu n&amp;atilde;o entendo...&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o compreendo;&lt;/p&gt;\r\n&lt;p&gt;Talvez eu mere&amp;ccedil;a isso e&lt;/p&gt;\r\n&lt;p&gt;Te entendo por me odiar.&lt;/p&gt;\r\n&lt;p&gt;Mesmo em seus olhos claros, vejo...&lt;/p&gt;\r\n&lt;p&gt;Tanta coisa,&lt;/p&gt;\r\n&lt;p&gt;Talvez repugn&amp;acirc;ncia.&lt;/p&gt;\r\n&lt;p&gt;Eu te entendo...&lt;/p&gt;\r\n&lt;p&gt;Desculpe por ser assim,&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o escolhi tal fim,&lt;/p&gt;\r\n&lt;p&gt;Talvez eu merece isso.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Eu te admiro,&lt;/p&gt;\r\n&lt;p&gt;Mas como um broto&lt;/p&gt;\r\n&lt;p&gt;Em um vasto jardim,&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o sou nada...&lt;/p&gt;\r\n&lt;p&gt;Nada pra ningu&amp;eacute;m.&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o existe matem&amp;aacute;tica,&lt;/p&gt;\r\n&lt;p&gt;Nenhuma na qual explique&lt;/p&gt;\r\n&lt;p&gt;Essa quest&amp;atilde;o ou gr&amp;aacute;fico t&amp;ecirc;nue,&lt;/p&gt;\r\n&lt;p&gt;Esse problema cartesiano e&lt;/p&gt;\r\n&lt;p&gt;Complexo, que me deixa perplexo.&lt;/p&gt;\r\n&lt;p&gt;E como um gr&amp;atilde;o de areia,&lt;/p&gt;\r\n&lt;p&gt;Eu vou embora e&lt;/p&gt;\r\n&lt;p&gt;Mesmo que a vida precise&lt;/p&gt;\r\n&lt;p&gt;Da linda matem&amp;aacute;tica,&lt;/p&gt;\r\n&lt;p&gt;Minha vida n&amp;atilde;o passa de&lt;/p&gt;\r\n&lt;p&gt;Uma linda quest&amp;atilde;o.&lt;/p&gt;\r\n&lt;p&gt;Mas como a matem&amp;aacute;tica,&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o existe plano ou fuga&lt;/p&gt;\r\n&lt;p&gt;E mesmo que me odeie,&lt;/p&gt;\r\n&lt;p&gt;Entendo seu &amp;oacute;dio,&lt;/p&gt;\r\n&lt;p&gt;Tamb&amp;eacute;m n&amp;atilde;o me gosto.&lt;/p&gt;\r\n&lt;p&gt;Pois como qualquer equa&amp;ccedil;&amp;atilde;o&lt;/p&gt;\r\n&lt;p&gt;Elavada &amp;agrave; zero,&lt;/p&gt;\r\n&lt;p&gt;Meu resultado n&amp;atilde;o &amp;eacute; nada.&amp;nbsp;&lt;/p&gt;', 6),
(3, 'Desejo', '&lt;p&gt;Eu apenas te queria,&lt;/p&gt;\r\n&lt;p&gt;Temos sintonia,&lt;/p&gt;\r\n&lt;p&gt;Mas n&amp;atilde;o harmonia.&lt;/p&gt;\r\n&lt;p&gt;&amp;Eacute; t&amp;atilde;o estranho como te amo,&lt;/p&gt;\r\n&lt;p&gt;Que me conven&amp;ccedil;o que me ama,&lt;/p&gt;\r\n&lt;p&gt;Mas tu ama...N&amp;atilde;o como eu queria.&lt;/p&gt;\r\n&lt;p&gt;Eu apenas te queria,&lt;/p&gt;\r\n&lt;p&gt;Mais um dia,&lt;/p&gt;\r\n&lt;p&gt;Talvez uma semana longa,&lt;/p&gt;\r\n&lt;p&gt;Mas somos separados pelo tempo,&lt;/p&gt;\r\n&lt;p&gt;O tempo e sua velha ilus&amp;atilde;o,&lt;/p&gt;\r\n&lt;p&gt;De que as horas s&amp;atilde;o para sempre&lt;/p&gt;\r\n&lt;p&gt;E o amor sem imensid&amp;atilde;o.&lt;/p&gt;\r\n&lt;p&gt;Eu apenas te queria,&lt;/p&gt;\r\n&lt;p&gt;Queria te abra&amp;ccedil;ar, aconchegar.&lt;/p&gt;\r\n&lt;p&gt;Mesmo que meus l&amp;aacute;bios neguem,&lt;/p&gt;\r\n&lt;p&gt;A minha mente te tem como desejo&lt;/p&gt;\r\n&lt;p&gt;E eu com todo meu desespero&lt;/p&gt;\r\n&lt;p&gt;Te quero e n&amp;atilde;o nego,&lt;/p&gt;\r\n&lt;p&gt;Por todo meu ego,&lt;/p&gt;\r\n&lt;p&gt;Te amar sem medo.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Eu apenas te queria,&lt;/p&gt;\r\n&lt;p&gt;Voc&amp;ecirc; me compreende,&lt;/p&gt;\r\n&lt;p&gt;Me entende e Isso me mata,&lt;/p&gt;\r\n&lt;p&gt;Porque sei que n&amp;atilde;o te mere&amp;ccedil;o,&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o sou seu desejo,&lt;/p&gt;\r\n&lt;p&gt;Apenas algu&amp;eacute;m que te queria.&lt;/p&gt;', 7),
(4, 'Cap&iacute;tulo 1', '&lt;p&gt;Nunca foi a inten&amp;ccedil;&amp;atilde;o me apaixonar, mas desde a primeira vez quandosentei atr&amp;aacute;s dela na sala, ela me faz uma simples piada e logo me apaixono.N&amp;atilde;o sei se devia pensar assim, por&amp;eacute;m eu acho o sorriso dela incr&amp;iacute;vel, elemotiva as pessoas que est&amp;atilde;o em volta, ele me motivou.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;A &amp;ldquo;Top 1&amp;rdquo;, como costumo me referir a Isabela, vem se tornando cada vezmais especial para mim! Olho para ela do meu lugar. Isabela vira para tr&amp;aacute;s eme pede que eu explique a atividade. O dia passou com um piscar de olhos. Sexta &amp;agrave; noite, &amp;agrave; espera de umamensagem da Top 1. Como conversamos todas as noites, n&amp;atilde;o poderia serdiferente. Nove horas. Isabela simplesmente pergunta se eu topo viajar com elapara Gr&amp;eacute;cia. Eu respondo que sim. Ent&amp;atilde;o pergunto sobre os detalhes daviagem.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;Dez e meia da noite. Nem vejo o tempo passar. Depois de falarmossobre a Gr&amp;eacute;cia, criamos fanfics sobre o pessoal da sala. Somos t&amp;atilde;o criativos!Parece que ela l&amp;ecirc; meu pensamento. Uma nova semana se inicia e, na escola, o pessoal come&amp;ccedil;a a criar umafanfic sobre Isabela e eu. Na quarta, ap&amp;oacute;s responder &amp;agrave;s suas mensagens sobreas tarefas da escola, comento em rela&amp;ccedil;&amp;atilde;o ao dia do nosso suposto casamento.Decidimos que seria no dia cinco de julho. Sempre que falamos de fanfic nuncasei o que pode ser verdade ou n&amp;atilde;o.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;Na fanfic, somos noivos. Mas ser&amp;aacute; assimtamb&amp;eacute;m no mundo real? De qualquer forma, eu s&amp;oacute; quero que chegue a festa deRebeca, que ser&amp;aacute; no final de semana. Falando sobre quinta e sexta, fiquei com fortes dores de cabe&amp;ccedil;a e n&amp;atilde;oconversei com a Isabela. Finalmente chega s&amp;aacute;bado, o dia da festa de Rebeca. Assim que chego &amp;agrave;ch&amp;aacute;cara do anivers&amp;aacute;rio, me junto aos meninos, Ot&amp;aacute;vio e Carlos. Minutosdepois, aparecem Isabela, Larissa e Rebeca. A Top 1 est&amp;aacute; top, quer dizer, est&amp;aacute;linda! O vestido azul que est&amp;aacute; usando contrasta bem com seu colar de meialua. A aniversariante e suas companheiras sentam conosco em uma mesa.Logo Rebeca sai para receber os convidados. Eu estou tentando disfar&amp;ccedil;ar minha total falta de concentra&amp;ccedil;&amp;atilde;o naconversa.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;Meus olhos s&amp;atilde;o de Isabela: seu sorriso &amp;eacute; muito incr&amp;iacute;vel. Acho quemeus amigos percebem. Ot&amp;aacute;vio e Carlos pedem para que eu lhes peguerefrigerante.N&amp;atilde;o demora muito, j&amp;aacute; estou de volta &amp;agrave; mesa. Onde est&amp;atilde;o as meninas?Sou zombado pelos meninos por causa da minha distra&amp;ccedil;&amp;atilde;o. A festa est&amp;aacute; muito boa. O pessoal est&amp;aacute; nas mesas de jogos, por&amp;eacute;mdecido sair para observar a rua de terra e sentir um pouco do ar fresco. Derepente, sinto que algu&amp;eacute;m se pr&amp;oacute;xima, viro para tr&amp;aacute;s e l&amp;aacute; est&amp;aacute; ela. Seu jeitohumano de se preocupar com o pr&amp;oacute;ximo tamb&amp;eacute;m me encanta.-Voc&amp;ecirc; est&amp;aacute; bem?-Sim, apenas com dor de cabe&amp;ccedil;a.Isabela come&amp;ccedil;a a olhar disfar&amp;ccedil;adamente para mim. Vejo a&amp;iacute; uma boaoportunidade de elogiar ela. Estamos nos olhando.&lt;/p&gt;\r\n&lt;p&gt;Seu olhar &amp;eacute; t&amp;atilde;o intenso quanto meu, fazendo meucora&amp;ccedil;&amp;atilde;o errar as batidas e me paralisar. N&amp;atilde;o percebo que andei s&amp;oacute; que estoupr&amp;oacute;ximo o suficiente para beij&amp;aacute;-la, mas ser&amp;aacute; que ela quer? De repente Ot&amp;aacute;vio surge gritando que precisa de uma pessoa para jogarpebolim. Que hora para se falar em jogo, se meu maior jogo j&amp;aacute; estaacontecendo! Sem palavras, retornamos para jogar pebolim e por l&amp;aacute; ficamosat&amp;eacute; a festa acabar. No dia seguinte, os meninos combinam de ir ao clube jogar bola.Honestamente, n&amp;atilde;o sou bom, apesar de gostar de jogar. Larissa, Rebeca eIsabela tamb&amp;eacute;m v&amp;atilde;o.Durante a tarde, quando vou beber &amp;aacute;gua, acabo escutando a conversadas meninas, perguntando a Isabela o que n&amp;oacute;s realmente somos. Ela respondeque somos amigos.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;Amigos? Amigos n&amp;atilde;o se olham do jeito que nos olhamos. Cinco da tarde. Todos v&amp;atilde;o embora, restando apenas Isabela e eu. Nomesmo instante, come&amp;ccedil;a a chover, ent&amp;atilde;o procuramos um lugar coberto paran&amp;atilde;o nos molhar. Isabela me puxa, olha nos meus olhos. Olhar de ontem, comoque a continuar a cena que n&amp;atilde;o poderia ter sido interrompida.-O que n&amp;oacute;s somos?- pergunta com sua voz doce. -Somos amigos, voc&amp;ecirc; mesma disse as meninas agora a pouco. -Mas voc&amp;ecirc; quer isso? Eu me aproximo dela, beijando- a. Ela me afastou por um instante, masse rende, continuando nosso beijo. A Top 1 pede desculpas por ter passado dos limites. Quando come&amp;ccedil;o adizer para sairmos da chuva sua m&amp;atilde;e chega. Sem sombra de d&amp;uacute;vidas, sou omenino mais sortudo.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;Na escola, durante a semana, tento agir normalmente, conversando comela, nossos olhares se encontrando durante as aulas e a chamando de &amp;ldquo;Baby&amp;rdquo;ou de &amp;ldquo;amiga&amp;rdquo;. Sempre que fa&amp;ccedil;o isso, ela sorri, querendo me matar. Da&amp;iacute; meapaixono ainda mais. Quarta-feira vou ao m&amp;eacute;dico investigar sobre minha dor de cabe&amp;ccedil;a. Odoutor, ap&amp;oacute;s diversos exames cl&amp;iacute;nicos e laboratoriais, chega ao laudo de umadoen&amp;ccedil;a rara e incur&amp;aacute;vel na cabe&amp;ccedil;a, com a indica&amp;ccedil;&amp;atilde;o de tratamentos queajudam a aliviar a dor, mas podem acabar me matando mais r&amp;aacute;pido. Eu tenho a op&amp;ccedil;&amp;atilde;o de fazer tratamento em outra cidade, ficar com menosdor, ou continuar com dor e permanecer na cidade. Eu n&amp;atilde;o quero ser um fardopara Isabela, mas tamb&amp;eacute;m n&amp;atilde;o quero deixa - l&amp;aacute;. Tenho que decidir meu futuroem menos de dois dias. Morrer com dor ou sem o amor. Duas semanas se passam, desde a vez que vou ao m&amp;eacute;dico, decido pelotratamento, come&amp;ccedil;a em um m&amp;ecirc;s.Sobre a minha doen&amp;ccedil;a, meus amigos mais pr&amp;oacute;ximos sabem, menosIsabela. N&amp;atilde;o posso demorar muito para lhe contar, enquanto isso, tento sergrosso e n&amp;atilde;o responder as suas mensagens. Ah n&amp;atilde;o! Ela est&amp;aacute; me ligando e isso nunca acontece. Acabo atendendode forma grossa e digo que n&amp;atilde;o estou com tempo.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;-Por que voc&amp;ecirc; est&amp;aacute; fazendo isso? Eu fiz alguma coisa?- ela pergunta.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;-Voc&amp;ecirc; n&amp;atilde;o fez nada- eu digo. -O que todos est&amp;atilde;o sabendo, menos eu?- &amp;Eacute; claro que ela desconfia dealguma coisa. -Eu nem sei por onde come&amp;ccedil;ar... Eu... estou com uma doen&amp;ccedil;a rara nacabe&amp;ccedil;a e terei que fazer tratamento em outra cidade. Eu queria abra&amp;ccedil;ar ela nesse momento, segurar as m&amp;atilde;os dela, dizendoqualquer coisa que a ajudasse, mas seria in&amp;uacute;til. -Voc&amp;ecirc; est&amp;aacute; desistindo de... &amp;ndash; ela n&amp;atilde;o consegue terminar.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;-Voc&amp;ecirc; &amp;eacute; um p&amp;aacute;ssaro que merece voar pelo mundo, levar seu sorriso paraas pessoas e n&amp;atilde;o serei eu que tirarei isso. Um longo sil&amp;ecirc;ncio paira na linha. A voz da Isabela quebra: -Voc&amp;ecirc; realmente gostou de mim? Quase me beijou no anivers&amp;aacute;rio daRebeca porque gostava de mim? -Eu n&amp;atilde;o gostava de voc&amp;ecirc;. Eu gosto. -Baby, est&amp;aacute; tudo errado! Onde est&amp;atilde;o os nossos planos para a Gr&amp;eacute;cia, ocasamento, a faculdade e tantas outras coisas? -Esses planos sempre estar&amp;atilde;o conosco, eu apenas n&amp;atilde;o poderei ficarcom voc&amp;ecirc;.Achei que nossa liga&amp;ccedil;&amp;atilde;o acabaria ali.&lt;/p&gt;\r\n&lt;p&gt;-Eu te amo, Bruno.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;-Eu te amo, Isabela.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;No meu &amp;uacute;ltimo final de semana na cidade, fa&amp;ccedil;o um churrasco em minhacasa para me despedir do pessoal. Eu n&amp;atilde;o tenho muitos amigos, mas os queeu tenho s&amp;atilde;o os melhores. Quando todos v&amp;atilde;o embora, a Top 1 pergunta se poder&amp;iacute;amos conversar,ent&amp;atilde;o vamos para meu quarto e ela come&amp;ccedil;a:&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;- Bruno, eu nunca conheci ningu&amp;eacute;m como voc&amp;ecirc;. Eu nunca sonhei comalgu&amp;eacute;m como voc&amp;ecirc;. Ainda que respirar se torne dif&amp;iacute;cil quando voc&amp;ecirc; me olha,seu olhar &amp;eacute; meu porto seguro, pois vejo a eternidade nele. Talvez n&amp;atilde;o seja paraficarmos juntos, mas desde as mensagens, os olhares... Saiba que voc&amp;ecirc; &amp;eacute;muito especial para mim. Isso j&amp;aacute; &amp;eacute; demais para mim. N&amp;atilde;o ag&amp;uuml;ento, acabo desmoronando, dizendoque n&amp;atilde;o queria essa doen&amp;ccedil;a, que trouxe nossa despedida for&amp;ccedil;ada.&lt;/p&gt;\r\n&lt;p&gt;-Baby, eu estou com medo do que est&amp;aacute; por vir, mas saiba que a minhafor&amp;ccedil;a para lutar vem de voc&amp;ecirc;- respiro fundo- entenda que voc&amp;ecirc; &amp;eacute; muito especialpara mim.Selamos essas palavras com um beijo. H&amp;aacute; muitos meses em tratamento, me sinto cada vez mais fraco, apesarde uma mudan&amp;ccedil;a consideravelmente boa em rela&amp;ccedil;&amp;atilde;o a minha dor. Hoje, dia 05/07, acordo com o Sol nascendo. Ele estava t&amp;atilde;o radiante,que me fez pensar em Isabela, assim como todos os dias. Ao olhar para o rel&amp;oacute;gio, me levanto rapidamente e tento procurar poralgu&amp;eacute;m no corredor. Encontro meus pais indo em dire&amp;ccedil;&amp;atilde;o ao meu quarto.Aproximo-me deles, explico que precisava de um orelh&amp;atilde;o para fazer umaliga&amp;ccedil;&amp;atilde;o. Ent&amp;atilde;o eu troco de roupa e vou at&amp;eacute; um museu.Quando entro, o senhor que estava no balc&amp;atilde;o pergunta como poderiame ajudar, eu comento do orelh&amp;atilde;o e consigo uma liga&amp;ccedil;&amp;atilde;o por dez reais.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;-Al&amp;ocirc;? Quem &amp;eacute;?- Isabela pergunta. Escutar sua voz &amp;eacute; t&amp;atilde;o bom. -Eu estou em um orelh&amp;atilde;o- precisava desse aparelho porque ela oconsidera um cl&amp;aacute;ssico- Talvez tenha sido a simplicidade de sua piada, o jeitoque se preocupa com o pr&amp;oacute;ximo ou o simples fato de me sentir bem quandovejo seu sorriso, voc&amp;ecirc; &amp;eacute; &amp;uacute;nica para mim! -J&amp;aacute; percebi que felizes para sempre n&amp;atilde;o existe, porque sen&amp;atilde;o voc&amp;ecirc;estaria aqui comigo, mas eu acredito que o amor verdadeiro s&amp;oacute; acontece umavez e voc&amp;ecirc; &amp;eacute; o meu amor. Nesse momento, me imagino em um campo,desejando a todos que voc&amp;ecirc; seja meu. -Eu sinto muito por ter sido passageiro na sua vida. -Voc&amp;ecirc; faz parte da minha alma e isso ningu&amp;eacute;m me tira. -Estou ligando no dia em que combinamos de nos casar, para confirmarmeu amor por voc&amp;ecirc;- ela n&amp;atilde;o diz nada, ent&amp;atilde;o continuo- Bom, Top 1, s&amp;oacute; tenhoque te dizer que com o seu sorriso, eu trilho meu caminho!Assim, confirmo todos os dias que Isabela &amp;eacute; minha Top 1 porque foi meuprimeiro e &amp;uacute;nico amor.&lt;/p&gt;', 1),
(5, 'Devaneio', '&lt;p&gt;Te vejo, em sil&amp;ecirc;ncio.&lt;/p&gt;\r\n&lt;p&gt;Me atento &amp;agrave; todos os detalhes,&lt;/p&gt;\r\n&lt;p&gt;At&amp;eacute; os n&amp;atilde;o os memor&amp;aacute;veis.&lt;/p&gt;\r\n&lt;p&gt;Isso me contenta, na realidade&lt;/p&gt;\r\n&lt;p&gt;Alimenta minha ilus&amp;atilde;o de como seria,&lt;/p&gt;\r\n&lt;p&gt;Se voc&amp;ecirc; estivesse ao meu lado.&lt;/p&gt;\r\n&lt;p&gt;Se querer n&amp;atilde;o &amp;eacute; poder,&lt;/p&gt;\r\n&lt;p&gt;Ent&amp;atilde;o que eu quero, n&amp;atilde;o posso ter?&lt;/p&gt;\r\n&lt;p&gt;Talvez seja esse o meu destino...&lt;/p&gt;\r\n&lt;p&gt;Viver um sonho e nada al&amp;eacute;m disso.&lt;/p&gt;\r\n&lt;p&gt;&amp;Eacute; sufocante como nos olhamos,&lt;/p&gt;\r\n&lt;p&gt;Porque s&amp;oacute; meus olhos que amam&lt;/p&gt;\r\n&lt;p&gt;Ou S&amp;oacute; eu acho isso.&lt;/p&gt;\r\n&lt;p&gt;Eu n&amp;atilde;o sei mais o que pensar,&lt;/p&gt;\r\n&lt;p&gt;Nem sei mais se penso...&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o, eu penso.&lt;/p&gt;\r\n&lt;p&gt;Penso em tu.&lt;/p&gt;\r\n&lt;p&gt;Em sil&amp;ecirc;ncio me deito,&lt;/p&gt;\r\n&lt;p&gt;Sem sua presen&amp;ccedil;a ao meu lado.&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o &amp;eacute; como se tivesse morrido,&lt;/p&gt;\r\n&lt;p&gt;Mas &amp;eacute; como se s&amp;oacute; sua exist&amp;ecirc;ncia existisse e&lt;/p&gt;\r\n&lt;p&gt;Eu fosse um vazio imagin&amp;aacute;rio.&lt;/p&gt;\r\n&lt;p&gt;Em sil&amp;ecirc;ncio aceito meu triste fim,&lt;/p&gt;\r\n&lt;p&gt;Em sil&amp;ecirc;ncio viro o meu rosto e Imagino, de olhos fechados,&lt;/p&gt;\r\n&lt;p&gt;N&amp;oacute;s em um vasto jardim dourado,&lt;/p&gt;\r\n&lt;p&gt;Como um Dejav&amp;uacute; indesejado.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 10),
(6, 'Para Sempre', '&lt;p&gt;Por um instante...&lt;/p&gt;\r\n&lt;p&gt;Eu comi a ma&amp;ccedil;&amp;atilde; daquela senhora,&lt;/p&gt;\r\n&lt;p&gt;Eu socumbi ao sono sem medo,&lt;/p&gt;\r\n&lt;p&gt;Eu aceitei ser a refei&amp;ccedil;&amp;atilde;o de tal fera;&lt;/p&gt;\r\n&lt;p&gt;Eu deixei meu capuz cair.&lt;/p&gt;\r\n&lt;p&gt;Por um instante...&lt;/p&gt;\r\n&lt;p&gt;Eu cortei meus pr&amp;oacute;prios cabelos,&lt;/p&gt;\r\n&lt;p&gt;Eu desacreditei de um pa&amp;iacute;s maravilhoso,&lt;/p&gt;\r\n&lt;p&gt;Eu n&amp;atilde;o esperei at&amp;eacute; meia noite,&lt;/p&gt;\r\n&lt;p&gt;Eu n&amp;atilde;o liguei pro sapo encantado...&lt;/p&gt;\r\n&lt;p&gt;Eu, apenas eu...&lt;/p&gt;\r\n&lt;p&gt;S&amp;oacute; tive come&amp;ccedil;o,N&amp;atilde;o tive fim.&lt;/p&gt;\r\n&lt;p&gt;Para sempre.&lt;/p&gt;\r\n&lt;p&gt;Por um instante...&lt;/p&gt;\r\n&lt;p&gt;Eu comi a ma&amp;ccedil;&amp;atilde; daquela senhora,&lt;/p&gt;\r\n&lt;p&gt;Eu socumbi ao sono sem medo,&lt;/p&gt;\r\n&lt;p&gt;Eu aceitei ser a refei&amp;ccedil;&amp;atilde;o de tal fera;&lt;/p&gt;\r\n&lt;p&gt;Eu deixei meu capuz cair.&lt;/p&gt;\r\n&lt;p&gt;Por um instante...&lt;/p&gt;\r\n&lt;p&gt;Eu cortei meus pr&amp;oacute;prios cabelos,&lt;/p&gt;\r\n&lt;p&gt;Eu desacreditei de um pa&amp;iacute;s maravilhoso,&lt;/p&gt;\r\n&lt;p&gt;Eu n&amp;atilde;o esperei at&amp;eacute; meia noite,&lt;/p&gt;\r\n&lt;p&gt;Eu n&amp;atilde;o liguei pro sapo encantado...&lt;/p&gt;\r\n&lt;p&gt;Eu, apenas eu...&lt;/p&gt;\r\n&lt;p&gt;S&amp;oacute; tive come&amp;ccedil;o,N&amp;atilde;o tive fim.&lt;/p&gt;', 8),
(7, 'Mesa', '&lt;p&gt;Redonda ou quadrada.&lt;/p&gt;\r\n&lt;p&gt;Nesse caso quadrada.&lt;/p&gt;\r\n&lt;p&gt;De madeira, vidro ou pl&amp;aacute;stico&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o importa, pois serve.&lt;/p&gt;\r\n&lt;p&gt;Cabe tr&amp;ecirc;s, quatro e at&amp;eacute; cinco.&lt;/p&gt;\r\n&lt;p&gt;Satisfaz o can&amp;ccedil;asso e atribui alegria,&lt;/p&gt;\r\n&lt;p&gt;Faz sorrisos e faz parte da harmonia.&lt;/p&gt;\r\n&lt;p&gt;Harmonia, dif&amp;iacute;cil de ver,&lt;/p&gt;\r\n&lt;p&gt;Na mesa quadrada se sentam sete,&lt;/p&gt;\r\n&lt;p&gt;Sete mentes, sete sorrisos, sete pecados.&lt;/p&gt;\r\n&lt;p&gt;Mas uma coisa &amp;eacute; certa,&lt;/p&gt;\r\n&lt;p&gt;Que nada &amp;eacute; correto e concreto,&lt;/p&gt;\r\n&lt;p&gt;Apenas a mesa quadrada.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Alimenta uma fam&amp;iacute;lia, talvez uma tribo,&lt;/p&gt;\r\n&lt;p&gt;Quem sabe um dia, me realizo.&lt;/p&gt;\r\n&lt;p&gt;Confuso, eu diria, menos ela.&lt;/p&gt;\r\n&lt;p&gt;Ela est&amp;aacute; abaixo de voc&amp;ecirc;,&lt;/p&gt;\r\n&lt;p&gt;Te servindo, ela est&amp;aacute; ali.&lt;/p&gt;\r\n&lt;p&gt;Coloque um copo, um prato, uma garrafa,&lt;/p&gt;\r\n&lt;p&gt;Seu bra&amp;ccedil;o talvez ou seu queixo,&lt;/p&gt;\r\n&lt;p&gt;Ela &amp;eacute; &amp;uacute;til, ela faz parte do seu eixo.&lt;/p&gt;\r\n&lt;p&gt;Bate palma, faz barulho,&lt;/p&gt;\r\n&lt;p&gt;Respons&amp;aacute;vel por todo sorriso e sussurro.&lt;/p&gt;\r\n&lt;p&gt;Coloque uma, duas ou tr&amp;ecirc;s;&lt;/p&gt;\r\n&lt;p&gt;Voc&amp;ecirc; escolhe!&lt;/p&gt;\r\n&lt;p&gt;Mas dessa vez, lembre-se...&lt;/p&gt;\r\n&lt;p&gt;A quest&amp;atilde;o n&amp;atilde;o &amp;eacute; o formato,&lt;/p&gt;\r\n&lt;p&gt;S&amp;oacute; o formato de sua alegria.&lt;/p&gt;\r\n&lt;p&gt;Pois, mesmo que caibam apenas sete,&lt;/p&gt;\r\n&lt;p&gt;Ser&amp;atilde;o sete la&amp;ccedil;os, seus la&amp;ccedil;os...&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;Na velha e marcante.&lt;/p&gt;', 11),
(8, 'Mulheres', '&lt;p&gt;Amanda, que sorriso lindo,&lt;/p&gt;\r\n&lt;p&gt;Como a Marcela e aquele brilho;&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o esquece da Nat&amp;aacute;lia, ela &amp;eacute; animada,&lt;/p&gt;\r\n&lt;p&gt;E nem da Juliana, que &amp;eacute; muito engra&amp;ccedil;ada.&lt;/p&gt;\r\n&lt;p&gt;Engra&amp;ccedil;ada eu diria, &amp;eacute; a Sofia e sua cantoria&lt;/p&gt;\r\n&lt;p&gt;E a Sandra com sua melancolia.&lt;/p&gt;\r\n&lt;p&gt;Melancolia? Cad&amp;ecirc; a Sabrina?&lt;/p&gt;\r\n&lt;p&gt;Ou melhor, sua irm&amp;atilde; Maria.&lt;/p&gt;\r\n&lt;p&gt;S&amp;atilde;o tantas incr&amp;iacute;veis que nem sei dizer,&lt;/p&gt;\r\n&lt;p&gt;Mulheres fortes e magn&amp;iacute;ficas a todo instante,&lt;/p&gt;\r\n&lt;p&gt;Com presen&amp;ccedil;as belas e gratificantes,&lt;/p&gt;\r\n&lt;p&gt;Para amar e condizer.&lt;/p&gt;\r\n&lt;p&gt;A Joyce e seu talento, nem se fala,&lt;/p&gt;\r\n&lt;p&gt;Igual a Giovana e sua risada&lt;/p&gt;\r\n&lt;p&gt;Ou talvez a Alice com sua cara emburrada.&lt;/p&gt;\r\n&lt;p&gt;&amp;Eacute; claro, a Stephanie &amp;eacute; independente,&lt;/p&gt;\r\n&lt;p&gt;Como a &amp;Eacute;velin e sua presen&amp;ccedil;a convincente.&lt;/p&gt;\r\n&lt;p&gt;Eu digo ual para todas elas,&lt;/p&gt;\r\n&lt;p&gt;E tamb&amp;eacute;m para Lana e Alexia,&lt;/p&gt;\r\n&lt;p&gt;Mas &amp;eacute; claro que pra Rose eu ofere&amp;ccedil;o algo especial,&lt;/p&gt;\r\n&lt;p&gt;Um gole da minha cerveja, mas dois &amp;eacute; essencial.&lt;/p&gt;', 12),
(9, 'Bolha', '&lt;p&gt;Bolha, querida bolha,&lt;/p&gt;\r\n&lt;p&gt;Que me conforta, Me abra&amp;ccedil;a e&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;Me protege de todas as minhas escolhas.&lt;/p&gt;\r\n&lt;p&gt;Bolha, querida bolha...&lt;/p&gt;\r\n&lt;p&gt;Voc&amp;ecirc; me agarra,Mas me prende&lt;/p&gt;\r\n&lt;p&gt;.Me ama,Mas n&amp;atilde;o consente.&lt;/p&gt;\r\n&lt;p&gt;Voc&amp;ecirc; &amp;eacute; tudo,&lt;/p&gt;\r\n&lt;p&gt;Mas tamb&amp;eacute;m n&amp;atilde;o &amp;eacute; nada;&lt;/p&gt;\r\n&lt;p&gt;Voc&amp;ecirc; &amp;eacute; meu mundo&lt;/p&gt;\r\n&lt;p&gt;E me desaba.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Bolha, querida bolha,&lt;/p&gt;\r\n&lt;p&gt;J&amp;aacute; te amei,Me apaixonei,Me decepcionei.&lt;/p&gt;\r\n&lt;p&gt;Mas uma coisa &amp;eacute; certa,Eu te estourei.&lt;/p&gt;\r\n&lt;p&gt;Mesmo que n&amp;atilde;o fosse preciso,&lt;/p&gt;\r\n&lt;p&gt;Foi necess&amp;aacute;rio;Pois a bolha que eu tanto amei,&lt;/p&gt;\r\n&lt;p&gt;Me fez mais feliz quando me libertei.&lt;/p&gt;', 3),
(10, 'A rosa', '&lt;p&gt;Voc&amp;ecirc; fez de mim uma rosa, eu fui dentre todas as outras rosas a que mais te chamou a aten&amp;ccedil;&amp;atilde;o, voc&amp;ecirc; queria te-l&amp;aacute; s&amp;oacute; pra voc&amp;ecirc;, voc&amp;ecirc; queria arranca-la para levar com voc&amp;ecirc; e com isso voc&amp;ecirc; viu que eu tinha espinhos (armas de defesa contra outros q n&amp;atilde;o souberam cuida-la) voc&amp;ecirc; os arrancou de mim, me deixou indefesa, talvez assim era mais f&amp;aacute;cil de me tirar dali, tirar me do meu caule, tentou demais, persistiu, a rosa estava feliz por saber que estava conseguindo se manter firme mesmo sem suas armas, ela s&amp;oacute; n&amp;atilde;o sabia que vc tbm sabia jogar, ent voc&amp;ecirc; tirou uma tesoura de seu bolso e finalmente a teve, ela mesmo triste ficou feliz em saber que finalmente algu&amp;eacute;m persistiu por ela, pensando que seria cuidada... ela via como vc ficava feliz and a via e ela se entregou ao m&amp;aacute;ximo a vida, mais isso a machucou, ela foi embora daquele jardim mais seu brilho ficou l&amp;aacute; e antes que ela conseguisse recupera-lo ela se foi em busca do mesmo.&lt;/p&gt;', 2);
INSERT INTO `capitulos` (`cod_capitulo`, `titulo`, `texto`, `cod_livro`) VALUES
(11, 'Cap&iacute;tulo 2- Resposta', '&lt;p class=&quot;MsoNormal&quot; style=&quot;line-height: 150%;&quot;&gt;O amor chega t&amp;atilde;o sutil e natural em nossa vida, que muitas vezes n&amp;atilde;o bate nem na porta antes de entrar, digo isso por experi&amp;ecirc;ncia pr&amp;oacute;pria. Bruno n&amp;atilde;o pediu licen&amp;ccedil;a antes de entrar no meu cora&amp;ccedil;&amp;atilde;o, apenas fez dele seu lugar e sinceramente, foi a melhor coisa que poderia ter feito, porque hoje eu vejo que meu cora&amp;ccedil;&amp;atilde;o foi feito apenas para um &amp;uacute;nico objetivo, amar Bruno.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;line-height: 150%;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;line-height: 150%;&quot;&gt;&amp;nbsp;&amp;Eacute; ter&amp;ccedil;a-feira e estamos na aula de f&amp;iacute;sica, a professora perde a paci&amp;ecirc;ncia com J&amp;uacute;nior e acaba pedindo para que Bruno se sente atr&amp;aacute;s de mim. Por mais que eu seja da sala dele, nunca conversamos muito, por isso para evitar um clima estranho acabo soltando uma piada ruim. N&amp;atilde;o sei bem o porqu&amp;ecirc;, mas assim que ele abre um sorriso discreto, meu cora&amp;ccedil;&amp;atilde;o aquece e sinto que gostaria de faz&amp;ecirc;-lo sorrir mais vezes. &lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Nessa mesma semana nos aproximamos bastante, porque na escola conversamos muito e passamos a trocar mensagens todas as noites.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;At&amp;eacute; que numa sexta-feira, estava de noite, e eu aguardava ansiosamente por uma mensagem do Bruno, como conversamos todos os dias pensei que n&amp;atilde;o seria diferente. No entanto, senti que ele n&amp;atilde;o mandaria nada t&amp;atilde;o cedo, por isso entrei numa d&amp;uacute;vida cruel se eu deveria ou n&amp;atilde;o mandar, porque tinha a possibilidade dele n&amp;atilde;o estar dispon&amp;iacute;vel ou nem querer conversar. Depois de pensar muito, acabei puxando assunto perguntando se ele aceitava viajar comigo um dia para Gr&amp;eacute;cia e mais do que depressa disse que sim, e em seguida mandou &amp;ldquo;Com voc&amp;ecirc; eu viajaria para qualquer lugar do mundo&amp;rdquo; ent&amp;atilde;o eu acabo sorrindo para a tela. Nem preciso dizer que estava me apaixonando aos poucos por esse menino, n&amp;eacute;?&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Al&amp;eacute;m disso, eu amo como nunca ficamos sem assunto para conversar, pois depois de falarmos sobre os diferentes destinos que poder&amp;iacute;amos explorar, acabamos criando fanfics em rela&amp;ccedil;&amp;atilde;o ao pessoal da nossa sala. E confesso que fiquei impressionada com a conex&amp;atilde;o, se posso chamar assim, que tivemos durante esse momento, parecia que um lia o pensamento do outro e foi simplesmente incr&amp;iacute;vel! Eu nunca tive isso com ningu&amp;eacute;m.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Mais uma semana come&amp;ccedil;a e algo inesperado acontece. Logo na segunda, o pessoal da minha sala come&amp;ccedil;a a criar uma fanfic de casamento envolvendo Bruno e eu. Na quarta, depois de me responder sobre as tarefas do dia, acabamos chegando nesse assunto de casamento, e juntos decidimos que nos casar&amp;iacute;amos no dia cinco de julho e criamos algumas cenas. Claro que gostei de fanficar sobre n&amp;oacute;s dois e nosso suposto casamento, por&amp;eacute;m me pergunto se para Bruno &amp;eacute; apenas fanfic ou se tem sentimento envolvido da parte dele. Qual a chance de ter algo real no meio dessa fanfic toda?&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Infelizmente n&amp;atilde;o conversamos na quinta e na sexta. Mas, de qualquer maneira, s&amp;oacute; queria que chegasse s&amp;aacute;bado, porque seria anivers&amp;aacute;rio de quinze anos da Rebeca.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Ent&amp;atilde;o o t&amp;atilde;o esperado dia chega! Larissa e eu fomos as primeiras a aparecer na ch&amp;aacute;cara, local onde seria a festa, eu estou meio afastada da entrada, mas consigo ver as pessoas que est&amp;atilde;o chegando aos poucos.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Nesse exato momento, meu cora&amp;ccedil;&amp;atilde;o acaba de errar as batidas, pois vejo Bruno passar pelo port&amp;atilde;o e ir em dire&amp;ccedil;&amp;atilde;o aos meninos, ele est&amp;aacute; muito bonito! Veste um t&amp;ecirc;nis de cano alto preto, vermelho e branco, uma cal&amp;ccedil;a jeans preta, uma blusa polo vermelha e o cabelo sempre muito bem penteado. Meus olhar &amp;eacute; apenas de Bruno, ou era at&amp;eacute; Larissa e Rebeca chegarem e falarem que est&amp;atilde;o indo conversar com os meninos.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Minutos depois estamos sentados na mesa com eles. Acabo me sentando do lado oposto de Bruno, por&amp;eacute;m quando o cumprimentei senti o cheiro do seu perfume que &amp;eacute; muito bom! Enfim, estamos jogando conversa fora, at&amp;eacute; Rebeca sai para receber os convidados e Ot&amp;aacute;vio e Carlos pedem para que Bruno pegue refrigerante para eles e em seguida, soltam uma leve risada, n&amp;atilde;o entendi bem o motivo, mas tudo bem. Outras meninas da nossa sala est&amp;atilde;o chegando, por isso Larissa e eu tivemos que sair da mesa dos meninos.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;A festa est&amp;aacute; ocorrendo conforme a aniversariante planejou, n&amp;atilde;o est&amp;aacute; faltando nada e os convidados est&amp;atilde;o se divertindo muito. No momento, a minha partida de pebolim acaba de acabar e percebo que Bruno n&amp;atilde;o est&amp;aacute; aqui por perto, por isso decido ir procur&amp;aacute;-lo. Eu o encontro perto do port&amp;atilde;o, sozinho, apenas observando a rua.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Eu tento dar um susto nele, por&amp;eacute;m ele acaba virando para tr&amp;aacute;s e percebendo a minha presen&amp;ccedil;a, sendo assim, eu me aproximo dele e pergunto se est&amp;aacute; tudo bem e o mesmo responde que est&amp;aacute;.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Muitas pessoas costumam dizer que um olhar vale mais que mil palavras. E aqui eu, demonstrando os meus reais sentimentos por Bruno, atrav&amp;eacute;s do meu olhar, espero que ele n&amp;atilde;o seja lerdo. E ele n&amp;atilde;o foi. Primeiro ficamos lado a lado, em seguida, com seu jeito meigo de ser, acaba falando pr&amp;oacute;ximo ao meu ouvido:&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;-Voc&amp;ecirc; est&amp;aacute; maravilhosa, est&amp;aacute; muito bonita!- confesso que n&amp;atilde;o achei que ele sussurraria um elogio.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;-Voc&amp;ecirc; tamb&amp;eacute;m est&amp;aacute; incr&amp;iacute;vel!- sussurro no ouvido dele.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Depois disso, nossos olhares acabam se encontrando e um sustenta o outro de forma t&amp;atilde;o intensa, que eu estou indo &amp;agrave; loucura apenas com Bruno me olhando dessa forma, t&amp;atilde;o intensa, t&amp;atilde;o encantadora e principalmente, t&amp;atilde;o apaixonada! Nossas respira&amp;ccedil;&amp;otilde;es se tornaram uma s&amp;oacute;, estamos pr&amp;oacute;ximos o bastante para que nossos l&amp;aacute;bios se toquem e no momento, &amp;eacute; tudo que eu mais quero! Analiso cada detalhe de Bruno, enquanto ele estuda se deve ou n&amp;atilde;o me beijar, mas admito que se demorar muito eu puxo o beijo sem problema algum.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Quando eu senti que iria acontecer, aparece Ot&amp;aacute;vio gritando que precisava de algu&amp;eacute;m para jogar, sendo assim, n&amp;atilde;o nos restou muito mais que voltarmos para as mesas de jogos e ficarmos por l&amp;aacute; at&amp;eacute; a festa acabar.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;No domingo, o pessoal combina de ir no clube jogar bola. E como os meninos ficam, literalmente, a tarde toda jogando, fico conversando com Rebeca e Larissa.&amp;nbsp; &lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Teve um momento durante a tarde, que as meninas e eu est&amp;aacute;vamos pr&amp;oacute;ximas do bebedouro conversando sobre coisas aleat&amp;oacute;rias da vida. Ent&amp;atilde;o, elas chegaram no assunto Bruno, as duas comentaram que perceberam a hora que eu sumi da festa, depois voltei junto com ele para os jogos de mesa. Em seguida, Larissa pergunta:&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;-Isa, o que voc&amp;ecirc;s realmente s&amp;atilde;o?&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Eu fiquei em choque com essa pergunta, porque eu n&amp;atilde;o sabia a resposta certa para ela. Acabei respondendo que somos apenas amigos, mas eu sei que isso n&amp;atilde;o &amp;eacute; verdade, o que eu sinto quando estou perto dele, o que senti ontem na festa, s&amp;atilde;o sentimentos que v&amp;atilde;o al&amp;eacute;m da amizade, por&amp;eacute;m, como eu n&amp;atilde;o sabia qual a melhor classifica&amp;ccedil;&amp;atilde;o para n&amp;oacute;s dois, acabei respondendo isso. E claro, elas reviram os olhos e n&amp;atilde;o acreditam em mim.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Deu cinco da tarde e todos acabam indo embora, restando apenas Bruno e eu na companhia de uma chuva que come&amp;ccedil;a a cair. Procuramos por um lugar onde n&amp;atilde;o fossemos nos molhar, mas acabo me lembrando da cena de ontem, do nosso quase beijo e meus sentimentos s&amp;atilde;o mais fortes que eu.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%;&quot;&gt;Percebi que Bruno come&amp;ccedil;aria a andar, por&amp;eacute;m eu o puxo e come&amp;ccedil;o a olhar para ele, demonstrando que adoraria dar continuidade na cena que foi interrompida ontem na festa. Mas, antes de continu&amp;aacute;-la, eu queria a opini&amp;atilde;o dele sobre o que n&amp;oacute;s somos, por isso eu pergunto &amp;agrave; ele e o mesmo responde:&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;-Somos amigos, voc&amp;ecirc; mesma disse as meninas agora a pouco- n&amp;atilde;o fazia ideia que ele tinha escutado minha conversa com as meninas.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Entretanto, eu pergunto se ele realmente queria que fossemos apenas amigos e como resposta, Bruno se aproxima de mim e me beija. Tem resposta melhor que essa? Acredito que n&amp;atilde;o.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Estamos nos beijando debaixo da chuva, uma cena surreal para mim, por isso eu tive que interromper o beijo e analisar para ver se tudo aquilo n&amp;atilde;o passava de um sonho. Assim que percebi que n&amp;atilde;o era, damos continuidade ao beijo, porque no momento, eu sou a menina mais sortuda do mundo por ter um menino como Bruno na minha vida.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Logo que nos afastamos pe&amp;ccedil;o desculpas, se caso eu tenha passado dos limites, ent&amp;atilde;o Bruno abre um sorriso bobo e diz que era melhor sairmos da chuva, por&amp;eacute;m minha m&amp;atilde;o chega e eu vou embora.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Mais uma semana se inicia e tentamos esconder o que sentimos um pelo outro, mas n&amp;atilde;o deu certo, porque nossos olhares, nossas conversas e nossas provoca&amp;ccedil;&amp;otilde;es acabam nos entregando. Bruno sempre que pode d&amp;aacute; &amp;ecirc;nfase na palavra &amp;ldquo;amiga&amp;rdquo; e me chama de &amp;ldquo;Baby&amp;rdquo;, claro que eu reviro os olhos e demonstro irrita&amp;ccedil;&amp;atilde;o, por&amp;eacute;m no fundo, eu amo quando ele faz isso e ele me conhece bem o bastante para saber disso.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Na quarta, Bruno vai ao m&amp;eacute;dico, perguntei se estava tudo bem e ele disse que era apenas uma consulta de rotina. Tanto na quinta quanto na sexta, por mais normal que ele tentasse agir, notei que estava pensativo demais, como se alguma coisa o estivesse preocupando, perguntei se tinha acontecido alguma coisa e o mesmo respondeu que estava tudo certo.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Duas semanas se passaram e elas foram p&amp;eacute;ssimas! Bruno come&amp;ccedil;a a ser grosso comigo, n&amp;atilde;o responde minhas mensagens e n&amp;atilde;o consegue manter uma conversa amig&amp;aacute;vel comigo e tudo isso come&amp;ccedil;ou de repente. A culpa &amp;eacute; minha? Eu fiz alguma coisa? Fiquei emocionada demais com a situa&amp;ccedil;&amp;atilde;o? Ele n&amp;atilde;o gosta mais de mim e s&amp;oacute; n&amp;atilde;o sabe como me dispensar? S&amp;atilde;o tantas coisas que se passam na minha mente.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Agora estou deitada na cama, tentando colocar meus pensamentos em ordem. Eu n&amp;atilde;o falei nem fiz nada que pudesse ter magoado ele e por algum motivo, sinto que no nosso grupo de amigos, todos sabem de algo menos eu, pois o jeito que eles est&amp;atilde;o olhando para Bruno na aula ultimamente est&amp;aacute; um pouco diferente. Decido que vou ligar para ele e acabar com isso de uma vez por todas.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Antes mesmo que eu falasse um oi, Bruno disse que estava sem tempo. Ent&amp;atilde;o, depois de perguntar o porqu&amp;ecirc; ele est&amp;aacute; fazendo isso, o mesmo s&amp;oacute; comentou que eu n&amp;atilde;o fiz nada. Sinto que nossa liga&amp;ccedil;&amp;atilde;o chegaria ao fim, por isso questiono, torcendo para estar errada:&amp;nbsp;  &lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;-O que todos est&amp;atilde;o sabendo, menos eu?- e quando ele come&amp;ccedil;a a responder, eu comprovo que realmente tinha algo sendo escondido de mim.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;E assim que ele diz &amp;ldquo;estou com uma doen&amp;ccedil;a rara na cabe&amp;ccedil;a e terei que fazer tratamento em outra cidade&amp;rdquo; meu mundo desmorona, l&amp;aacute;grimas escorrem pelo meu rosto. Como assim Bruno est&amp;aacute; doente? Ele &amp;eacute; jovem, saud&amp;aacute;vel, tem muito para viver. E porque tratamento em outra cidade? Ser&amp;aacute; que &amp;eacute; longe demais? Porque quando a gente acha que est&amp;aacute; tudo indo bem, chega a vida e tira nosso alicerce?&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Eu precisava processar o que tinha acabado de escutar, mas a &amp;uacute;nica coisa que consigo dizer &amp;eacute; que ele estava desistindo de n&amp;oacute;s dois e claro, Bruno como &amp;eacute; um menino incr&amp;iacute;vel tem a capacidade de dizer:&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;-Voc&amp;ecirc; &amp;eacute; um p&amp;aacute;ssaro que merece voar pelo mundo, levar seu sorriso para as pessoas e n&amp;atilde;o serei eu que tirarei isso.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Ficou um longo sil&amp;ecirc;ncio na linha at&amp;eacute; que eu o quebro. Eu queria que ele falasse que n&amp;atilde;o gostou realmente de mim, que tudo n&amp;atilde;o passou de um passatempo para ele, porque dessa forma seria mais f&amp;aacute;cil aceitar que eu o perdi por ser um babaca e n&amp;atilde;o porque uma doen&amp;ccedil;a rara e um tratamento em outra cidade tirou as nossas chances.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Mas Bruno n&amp;atilde;o &amp;eacute; babaca, &amp;eacute; o menino que coloriu meu mundo desde que entrou no meu cora&amp;ccedil;&amp;atilde;o, ele &amp;eacute; o motivo dos meus sorrisos e aquele que tanto agregou na minha vida desde ent&amp;atilde;o.&amp;nbsp; Por mais que eu tivesse muito que conversar com ele, deixei que meu cora&amp;ccedil;&amp;atilde;o falasse o que queria falar:&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;-Eu te amo, Bruno.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;E escutar um &amp;ldquo;Eu te amo, Isabela&amp;rdquo; sabendo que foi o que o cora&amp;ccedil;&amp;atilde;o dele que disse, fez com que eu chorasse ainda mais.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Os dias foram passando, at&amp;eacute; que chegou o &amp;uacute;ltimo final de semana de Bruno na cidade. Um churrasco com os amigos mais pr&amp;oacute;ximos dele, foi a despedida, algo simples, mas muito especial.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Assim que todos foram embora, digo para Bruno que queria conversar com ele, eu sabia que essa seria uma das nossas &amp;uacute;ltimas conversas cara a cara e por isso, acabamos indo para o quarto dele.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Bom, espero ele sentar na cama para dizer tudo que sentia e assim que acabei, Bruno acaba desmoronando, dizendo que sou especial para ele. Selamos nossas palavras com um beijo, eu diria que foi o melhor que j&amp;aacute; demos.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;O tempo &amp;eacute; cruel, porque achei que quanto mais meses se passasem, menor seria a dor, mas n&amp;atilde;o foi bem assim. Os m&amp;iacute;nimos detalhes me faziam lembrar de Bruno, desde propagandas de viagens at&amp;eacute; as lembran&amp;ccedil;as que invadiam minha mente durante o dia.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;At&amp;eacute; que hoje, quando acordei e olhei para o celular, vi que era 05/07, o dia que combinamos de nos casar. O dia amanheceu chovendo, deve ser porque se lembrou que Bruno n&amp;atilde;o est&amp;aacute; do meu lado para comemorarmos juntos esse momento.&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;Eacute; final de semana, ent&amp;atilde;o n&amp;atilde;o tinha nada de muito importante para fazer. Penso em ligar para ele, mas se estiver dormindo n&amp;atilde;o quero acord&amp;aacute;-lo, melhor apenas viver meu dia. Quando de repente, um n&amp;uacute;mero desconhecido come&amp;ccedil;a a me ligar e assim que escuto a voz de Bruno, um sorriso se abre de orelha a orelha.&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent: 36.0pt; line-height: 150%; margin: 12.0pt 0cm 12.0pt 0cm;&quot;&gt;Rom&amp;acirc;ntico como sempre, ele comenta que est&amp;aacute; me ligando de um orelh&amp;atilde;o, para confirmar o amor que sente por mim e ainda me chama de Top 1! Eu tamb&amp;eacute;m tento ser rom&amp;acirc;ntica, mas ele sempre ganha nesse quesito.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Bruno diz que com meu sorriso, trilha o caminho dele. E eu digo que com o amor que tenho por ele, sigo os caminhos que a&amp;nbsp; vida me levar&amp;aacute;!&lt;/p&gt;', 1),
(12, 'Contrato', '&lt;p&gt;Eu te entreguei...&lt;/p&gt;\r\n&lt;p&gt;Tudo que tinha,&lt;/p&gt;\r\n&lt;p&gt;Absolutamente tudo.&lt;/p&gt;\r\n&lt;p&gt;Minha alma, meu beijo&lt;/p&gt;\r\n&lt;p&gt;Meu corpo, meu desejo&lt;/p&gt;\r\n&lt;p&gt;Minha companhia.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Me pergunto o que fiz de err&amp;ocirc;neo.&lt;/p&gt;\r\n&lt;p&gt;Se eu assinei errado esse contrato ou&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o fiz direito minha fun&amp;ccedil;&amp;atilde;o.&lt;/p&gt;\r\n&lt;p&gt;Me pergunto todos os dias...&lt;/p&gt;\r\n&lt;p&gt;Porque te amei?&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Porque eu te aceitei?&lt;/p&gt;\r\n&lt;p&gt;Porque?&lt;/p&gt;\r\n&lt;p&gt;Me diz, porque?&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Eu me encantei, esse foi meu erro.&lt;/p&gt;\r\n&lt;p&gt;Me encantei com cada detalhe,&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Cada risada, cada sorriso sincero.&lt;/p&gt;\r\n&lt;p&gt;Eu odeio esse sorriso...&lt;/p&gt;\r\n&lt;p&gt;Esse maldito sorriso,&lt;/p&gt;\r\n&lt;p&gt;Que me fez te amar.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Mas como qualquer contrato,&lt;/p&gt;\r\n&lt;p&gt;As duas partes se beneficiam,&lt;/p&gt;\r\n&lt;p&gt;Mas eu n&amp;atilde;o tive lucro nenhum com ele.&lt;/p&gt;\r\n&lt;p&gt;Minha alma era sua,&lt;/p&gt;\r\n&lt;p&gt;Meu beijo tinha o gosto de seus l&amp;aacute;bios,&lt;/p&gt;\r\n&lt;p&gt;Meu corpo se tornou comum.&lt;/p&gt;\r\n&lt;p&gt;E meu desejo? Meu desejo era voc&amp;ecirc;.&lt;/p&gt;\r\n&lt;p&gt;Voc&amp;ecirc; destruiu tudo.&lt;/p&gt;\r\n&lt;p&gt;Por um instante, n&amp;atilde;o tive mais companhia,&lt;/p&gt;\r\n&lt;p&gt;Al&amp;eacute;m de mim mesmo.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Me pergunto, o que eu fiz de errado.&lt;/p&gt;\r\n&lt;p&gt;Ser&amp;aacute; que n&amp;atilde;o li esse maldito contrato?&lt;/p&gt;\r\n&lt;p&gt;Sim eu li.&lt;/p&gt;\r\n&lt;p&gt;Eu li as enormes cantigas de amor,&lt;/p&gt;\r\n&lt;p&gt;Eu li os aconchegantes abra&amp;ccedil;os,&lt;/p&gt;\r\n&lt;p&gt;Eu li as poesias de seus sonhos,&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Eu li cada peda&amp;ccedil;o glorioso de voc&amp;ecirc;.&lt;/p&gt;\r\n&lt;p&gt;Mas &amp;eacute; claro, eu n&amp;atilde;o li as letras mi&amp;uacute;das,&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o li as palavrinhas pequenas&lt;/p&gt;\r\n&lt;p&gt;Desse papel.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o li as entrelinhas...&lt;/p&gt;\r\n&lt;p&gt;Que nelas diziam,&lt;/p&gt;\r\n&lt;p&gt;Que seu amor,&lt;/p&gt;\r\n&lt;p&gt;Tinha prazo e data de validade.&lt;/p&gt;\r\n&lt;p&gt;Que seu amor, n&amp;atilde;o era de verdade.&lt;/p&gt;\r\n&lt;p&gt;Que seu amor, era escrito de vermelho;&lt;/p&gt;\r\n&lt;p&gt;A mesma cor da paix&amp;atilde;o.&lt;/p&gt;\r\n&lt;p&gt;Pena que para mim,&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Minha paix&amp;atilde;o escorria pelo meu corpo&lt;/p&gt;\r\n&lt;p&gt;E para voc&amp;ecirc;, minha paix&amp;atilde;o&lt;/p&gt;\r\n&lt;p&gt;era a tinta que tu assinaste&lt;/p&gt;\r\n&lt;p&gt;N&amp;atilde;o d&amp;aacute; nossa,&lt;/p&gt;\r\n&lt;p&gt;Mas de minha validade.&lt;/p&gt;', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comenta`
--

CREATE TABLE `comenta` (
  `cod_comentario` int(11) NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_livro` int(11) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `fanart` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `denuncia`
--

CREATE TABLE `denuncia` (
  `cod_denuncia` int(11) NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_comentario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `cod_genero` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`cod_genero`, `nome`) VALUES
(1, 'romance'),
(2, 'fantasia'),
(3, 'terror'),
(4, 'poema'),
(5, 'outros');

-- --------------------------------------------------------

--
-- Estrutura da tabela `le`
--

CREATE TABLE `le` (
  `cod_le` int(11) NOT NULL,
  `cod_livro` int(11) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `continuar_lendo` int(11) DEFAULT NULL,
  `lista_de_interesses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `cod_livro` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `data_publicacao` datetime DEFAULT NULL,
  `qtd_capitulo` int(11) DEFAULT NULL,
  `sinopse` text DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_genero` int(11) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`cod_livro`, `nome`, `autor`, `data_publicacao`, `qtd_capitulo`, `sinopse`, `cod_usuario`, `cod_genero`, `foto`) VALUES
(1, 'Top 1', 'Ana Laura Ara&uacute;jo dos Santos', '2022-11-18 00:00:00', NULL, '&quot;Nunca foi a inten&ccedil;&atilde;o me apaixonar, mas desde a primeira vez quando sentei atr&aacute;s dela na sala, ela me faz uma simples piada e logo me apaixono...&quot;                                                   ', 1, 1, '2022.11.18-13.03.42jpeg'),
(2, 'A rosa', 'Gabriela Frances', '2022-11-18 00:00:00', NULL, '&quot;Voc&ecirc; fez de mim uma rosa, eu fui dentre todas as outras rosas a que mais te chamou a aten&ccedil;&atilde;o...&quot;                                                   ', 1, 4, '2022.11.18-13.05.08jpeg'),
(3, 'Bolha', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Pois a bolha que eu tanto amei, me fez mais feliz quando me libertei...&quot;                                                    ', 1, 4, '2022.11.18-13.06.18jpeg'),
(4, 'Trai&ccedil;&atilde;o e morte', 'm&uacute;ltiplos autores', '2022-11-18 00:00:00', NULL, 'Contos de mist&eacute;rio                                                   ', 1, 3, '2022.11.18-13.08.22.jpg'),
(5, 'Concep&ccedil;&otilde;es humanas', 'A.k-06', '2022-11-18 00:00:00', NULL, '&quot;Humano, uma mistura de confus&otilde;es&quot;                                                    ', 1, 5, '2022.11.18-13.10.40.jpg'),
(6, 'Matem&aacute;tico', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;N&atilde;o existe matem&aacute;tica nenhuma, na qual explique essa quest&atilde;o ou gr&aacute;fico t&ecirc;nue...&quot;                                                    ', 1, 4, '2022.11.18-13.12.47.jpg'),
(7, 'Desejo', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Eu apenas te queria, voc&ecirc; me compreende, me entende e isso me mata...&quot;                                                    ', 1, 4, '2022.11.18-13.14.03.jpg'),
(8, 'Para sempre', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Eu, apenas eu... S&oacute; tive come&ccedil;o, n&atilde;o tive fim...&quot;                                                    ', 1, 1, '2022.11.18-13.15.54.jpg'),
(9, 'Contrato', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Eu te entreguei tudo que tinha, absolutamente tudo, minha alma, meu beijo, meu corpo, meu desejo, minha companhia...&quot;                                                    ', 1, 4, '2022.11.18-13.18.02.jpg'),
(10, 'Devaneio', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Te vejo, em sil&ecirc;ncio, me atento &agrave; todos os detalhes, at&eacute; os n&atilde;o memor&aacute;veis...&quot;                                                    ', 1, 4, '2022.11.18-13.19.11.jpg'),
(11, 'Mesa', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Cabe tr&ecirc;s, quatro e at&eacute; cinco. Satisfaz o cansa&ccedil;o e atribui alegria...&quot;                                                    ', 1, 4, '2022.11.18-13.20.40.jpg'),
(12, 'Mulheres', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Com presen&ccedil;as belas e gratificantes, para amar e condizer...&quot;                                                    ', 1, 4, '2022.11.18-13.22.54.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cod_usuario` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `biografia` varchar(255) DEFAULT NULL,
  `foto` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cod_usuario`, `email`, `senha`, `username`, `biografia`, `foto`) VALUES
(1, 'rai.email', 'if13Dpsyoylmc', 'raissa', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `avalia`
--
ALTER TABLE `avalia`
  ADD PRIMARY KEY (`cod_avalia`),
  ADD KEY `FK_Avalia_Usuario` (`cod_usuario`),
  ADD KEY `FK_Avalia_Livro` (`cod_livro`);

--
-- Índices para tabela `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`cod_capitulo`),
  ADD KEY `FK_Capitulos_Livro` (`cod_livro`);

--
-- Índices para tabela `comenta`
--
ALTER TABLE `comenta`
  ADD PRIMARY KEY (`cod_comentario`),
  ADD KEY `FK_comenta_Usuario` (`cod_usuario`),
  ADD KEY `FK_Comenta_Livro` (`cod_livro`);

--
-- Índices para tabela `denuncia`
--
ALTER TABLE `denuncia`
  ADD PRIMARY KEY (`cod_denuncia`),
  ADD KEY `FK_Denuncia_Usuario` (`cod_usuario`),
  ADD KEY `FK_Denuncia_Comenta` (`cod_comentario`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`cod_genero`);

--
-- Índices para tabela `le`
--
ALTER TABLE `le`
  ADD PRIMARY KEY (`cod_le`),
  ADD KEY `FK_Le_Livro` (`cod_livro`),
  ADD KEY `FK_Le_Usuario` (`cod_usuario`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`cod_livro`),
  ADD KEY `FK_Livro_Usuario` (`cod_usuario`),
  ADD KEY `FK_Livro_Genero` (`cod_genero`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avalia`
--
ALTER TABLE `avalia`
  MODIFY `cod_avalia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `cod_capitulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `comenta`
--
ALTER TABLE `comenta`
  MODIFY `cod_comentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `denuncia`
--
ALTER TABLE `denuncia`
  MODIFY `cod_denuncia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `cod_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `le`
--
ALTER TABLE `le`
  MODIFY `cod_le` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `cod_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `avalia`
--
ALTER TABLE `avalia`
  ADD CONSTRAINT `FK_Avalia_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Avalia_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `capitulos`
--
ALTER TABLE `capitulos`
  ADD CONSTRAINT `FK_Capitulos_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `comenta`
--
ALTER TABLE `comenta`
  ADD CONSTRAINT `FK_Comenta_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`),
  ADD CONSTRAINT `FK_comenta_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`);

--
-- Limitadores para a tabela `denuncia`
--
ALTER TABLE `denuncia`
  ADD CONSTRAINT `FK_Denuncia_Comenta` FOREIGN KEY (`cod_comentario`) REFERENCES `comenta` (`cod_comentario`),
  ADD CONSTRAINT `FK_Denuncia_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`);

--
-- Limitadores para a tabela `le`
--
ALTER TABLE `le`
  ADD CONSTRAINT `FK_Le_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Le_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `FK_Livro_Genero` FOREIGN KEY (`cod_genero`) REFERENCES `genero` (`cod_genero`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Livro_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
