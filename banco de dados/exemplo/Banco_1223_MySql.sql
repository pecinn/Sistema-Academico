-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Maio-2017 às 03:49
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banco_3227`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `rotulo` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `publica` tinyint(1) NOT NULL DEFAULT '0',
  `menu` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_civil`
--

CREATE TABLE `estado_civil` (
  `id` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `estado_civil`
--

INSERT INTO `estado_civil` (`id`, `descricao`) VALUES
(2, 'Casado'),
(3, 'Divorciado'),
(1, 'Solteiro'),
(5, 'União Estável'),
(4, 'Viúvo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2017_04_24_201834_create_pais_table', 1),
(12, '2017_04_24_201850_create_estado_civil_table', 1),
(13, '2017_04_24_204212_create_perfil_table', 1),
(14, '2017_04_24_210013_add_foreign_keys_to_users', 1),
(15, '2017_04_25_130349_create_conteudo_table', 1),
(16, '2017_04_25_131027_create_permissao_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `gentilico` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `sigla` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `sigla_web` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`id`, `nome`, `gentilico`, `sigla`, `sigla_web`) VALUES
(1, 'Afeganistão', 'afegãne', 'AFG', 'AF'),
(2, 'África do Sul', 'sul-africana', 'ZAF', 'ZA'),
(3, 'Albânia', 'albanesa', 'ALB', 'AL'),
(4, 'Alemanha', 'alemã', 'DEU', 'DE'),
(5, 'Andorra', 'andorrana', 'AND', 'AD'),
(6, 'Angola', 'angolana', 'AGO', 'AO'),
(7, 'Anguilla', 'anguillana', 'AIA', 'AI'),
(8, 'Antártida', 'de antártida', 'ATA', 'AQ'),
(9, 'Antígua e Barbuda', 'antiguana', 'ATG', 'AG'),
(10, 'Antilhas Holandesas', '', 'ANT', 'AN'),
(11, 'Arábia Saudita', 'saudita', 'SAU', 'SA'),
(12, 'Argélia', 'argelina', 'DZA', 'DZ'),
(13, 'Argentina', 'argentina', 'ARG', 'AR'),
(14, 'Armênia', 'armênia', 'ARM', 'AM'),
(15, 'Aruba', 'arubana', 'ABW', 'AW'),
(16, 'Austrália', 'australiana', 'AUS', 'AU'),
(17, 'Áustria', 'austríaca', 'AUT', 'AT'),
(18, 'Azerbaijão', 'azerbaijano', 'AZE', 'AZ'),
(19, 'Bahamas', 'bahamense', 'BHS', 'BS'),
(20, 'Bahrein', 'barenita', 'BHR', 'BH'),
(21, 'Bangladesh', 'bengali', 'BGD', 'BD'),
(22, 'Barbados', 'barbadiana', 'BRB', 'BB'),
(23, 'Belarus', 'bielo-russa', 'BLR', 'BY'),
(24, 'Bélgica', 'belga', 'BEL', 'BE'),
(25, 'Belize', 'belizenha', 'BLZ', 'BZ'),
(26, 'Benin', 'beninense', 'BEN', 'BJ'),
(27, 'Bermudas', 'bermudiana', 'BMU', 'BM'),
(28, 'Bolívia', 'boliviana', 'BOL', 'BO'),
(29, 'Bósnia-Herzegóvina', 'bósnia', 'BIH', 'BA'),
(30, 'Botsuana', 'betchuana', 'BWA', 'BW'),
(31, 'Brasil', 'brasileira', 'BRA', 'BR'),
(32, 'Brunei', 'bruneiana', 'BRN', 'BN'),
(33, 'Bulgária', 'búlgara', 'BGR', 'BG'),
(34, 'Burkina Fasso', 'burquinês', 'BFA', 'BF'),
(35, 'Burundi', 'burundinesa', 'BDI', 'BI'),
(36, 'Butão', 'butanesa', 'BTN', 'BT'),
(37, 'Cabo Verde', 'cabo-verdiana', 'CPV', 'CV'),
(38, 'Camarões', 'camaronesa', 'CMR', 'CM'),
(39, 'Camboja', 'cambojana', 'KHM', 'KH'),
(40, 'Canadá', 'canadense', 'CAN', 'CA'),
(41, 'Cazaquistão', 'cazaque', 'KAZ', 'KA'),
(42, 'Chade', 'turquesa', 'TCD', 'TD'),
(43, 'Chile', 'chilena', 'CHL', 'CH'),
(44, 'China', 'chinesa', 'CHN', 'CH'),
(45, 'Chipre', 'cipriota', '196', 'CY'),
(46, 'Cingapura', 'cingapuriana', 'SGP', 'SG'),
(47, 'Colômbia', 'colombiana', 'COL', 'CO'),
(48, 'Congo', 'congolesa', 'COG', 'CG'),
(49, 'Coréia do Norte', 'norte coreana', 'PRK', 'KP'),
(50, 'Coréia do Sul', 'sul coreana', 'KOR', 'KR'),
(51, 'Costa do Marfim', 'marfinense', 'CIV', 'CI'),
(52, 'Costa Rica', 'costarriquenha', 'CRI', 'CR'),
(53, 'Croácia', 'croata', 'HRV', 'HR'),
(54, 'Cuba', 'cubana', 'CUB', 'CU'),
(55, 'Dinamarca', 'dinamarquesa', 'DNK', 'DN'),
(56, 'Djibuti', 'djibutiana', 'DJI', 'DJ'),
(57, 'Dominica', 'dominiquense', 'DMA', 'DM'),
(58, 'Egitp', 'egípcia', 'EGY', 'EG'),
(59, 'El Salvador', 'salvadorenha', 'SLV', 'SV'),
(60, 'Emirados Árabes Unidos', 'árabe', 'ARE', 'AE'),
(61, 'Equador', 'equatoriana', 'ECU', 'EC'),
(62, 'Eritréia', 'eritréia', 'ERI', 'ER'),
(63, 'Eslováquia', 'eslovaca', 'SVK', 'SK'),
(64, 'Eslovênia', 'eslovena', 'SVN', 'SI'),
(65, 'Espanha', 'espanhola', 'ESP', 'ES'),
(66, 'Estados Unidos da América', 'norte-americana', 'USA', 'US'),
(67, 'Estônia', 'estoniana', 'EST', 'EE'),
(68, 'Etiópia', 'etíope', 'ETH', 'ET'),
(69, 'Fiji', 'fijiana', 'FJI', 'FJ'),
(70, 'Filipinas', 'filipina', 'PHL', 'PH'),
(71, 'Finlândia', 'finlandesa', 'FIN', 'FI'),
(72, 'França', 'francesa', 'FRA', 'FR'),
(73, 'Gabão', 'gabonesa', 'GAB', 'GA'),
(74, 'Gâmbia', 'gambiana', 'GMB', 'GM'),
(75, 'Gana', 'ganense', 'GHA', 'GH'),
(76, 'Geórgia', 'georgiana', 'GEO', 'GE'),
(77, 'Gibraltar', 'gibraltariana', 'GIB', 'GI'),
(78, 'Grã-Bretanha (Reino Unido, UK)', 'inglesa', 'GBR', 'GB'),
(79, 'Granada', 'granadina', 'GRD', 'GD'),
(80, 'Grécia', 'grega', 'GRC', 'GR'),
(81, 'Groelândia', 'groenlandesa', 'GRL', 'GL'),
(82, 'Guadalupe', 'guadalupense', 'GLP', 'GP'),
(83, 'Guam (Território dos Estados Unidos)', 'guamês', 'GUM', 'GU'),
(84, 'Guatemala', 'guatemalteca', 'GTM', 'GT'),
(85, 'Guernsey', '', 'GGY', 'G'),
(86, 'Guiana', 'guianense', 'GUY', 'GY'),
(87, 'Guiana Francesa', 'franco-guianense', 'GUF', 'GF'),
(88, 'Guiné', 'guinéu-equatoriano ou equatoguineana', 'GIN', 'GN'),
(89, 'Guiné Equatorial', 'guinéu-equatoriano', 'GNQ', 'GQ'),
(90, 'Guiné-Bissau', 'guineense', 'GNB', 'GW'),
(91, 'Haiti', 'haitiana', 'HTI', 'HT'),
(92, 'Holanda', 'holandês', 'NLD', 'NL'),
(93, 'Honduras', 'hondurenha', 'HND', 'HN'),
(94, 'Hong Kong', 'hong-konguiana ou chinesa', 'HKG', 'HK'),
(95, 'Hungria', 'húngara', 'HUN', 'HU'),
(96, 'Iêmen', 'iemenita', 'YEM', 'YE'),
(97, 'Ilha Bouvet (Território da Noruega)', 'da ilha bouvet', 'BVT', 'BV'),
(98, 'Ilha do Homem', 'manês', 'IMN', 'IM'),
(99, 'Ilha Natal', 'natalense', 'CXR', 'CX'),
(100, 'Ilha Pitcairn', 'pitcairnense', 'PCN', 'PN'),
(101, 'Ilha Reunião', 'reunionense', 'REU', 'RE'),
(102, 'Ilhas Aland', 'alandês', 'ALA', 'AX'),
(103, 'Ilhas Cayman', 'caimanês', 'CYM', 'KY'),
(104, 'Ilhas Cocos', 'coquense', 'CCK', 'CC'),
(105, 'Ilhas Comores', 'comorense', 'COM', 'KM'),
(106, 'Ilhas Cook', 'cookense', 'COK', 'CK'),
(107, 'Ilhas Faroes', 'faroense', 'FRO', 'FO'),
(108, 'Ilhas Falkland (Malvinas)', 'malvinense', 'FLK', 'FK'),
(109, 'Ilhas Geórgia do Sul e Sandwich do Sul', 'das ilhas geórgia do sul e sandwich do sul', 'SGS', 'GS'),
(110, 'Ilhas Heard e McDonald (Território da Austrália)', 'das ilhas heard e mcdonald', 'HMD', 'HM'),
(111, 'Ilhas Marianas do Norte', 'norte-marianense', 'MNP', 'MP'),
(112, 'Ilhas Marshall', 'marshallino', 'MHL', 'MH'),
(113, 'Ilhas Menores dos Estados Unidos', 'das ilhas menores afastadas', 'UMI', 'UM'),
(114, 'Ilhas Norfolk', 'norfolquino', 'NFK', 'NF'),
(115, 'Ilhas Seychelles', 'seichelense', 'SYC', 'SC'),
(116, 'Ilhas Solomão', 'salomônico', 'SLB', 'SB'),
(117, 'Ilhas Svalbard e Jan Mayen', 'svalbardense', 'SJM', 'SJ'),
(118, 'Ilhas Tokelau', 'toquelauano', 'TKL', 'TK'),
(119, 'Ilhas Turks e Caicos', 'turquês', 'TCA', 'TC'),
(120, 'Ilhas Virgens (Estados Unidos)', 'virginense', 'VIR', 'VI'),
(121, 'Ilhas Virgens (Inglaterra)', 'virginense', 'VGB', 'VG'),
(122, 'Ilhas Wallis e Futuna', 'wallis-futunense', 'WLF', 'WF'),
(123, 'índia', 'indiano', 'IND', 'IN'),
(124, 'Indonésia', 'indonésia', 'IDN', 'ID'),
(125, 'Irã', 'iraniano', 'IRN', 'IR'),
(126, 'Iraque', 'iraquiana', 'IRQ', 'IQ'),
(127, 'Irlanda', 'irlandesa', 'IRL', 'IE'),
(128, 'Islândia', 'islandesa', 'ISL', 'IS'),
(129, 'Israel', 'israelense', 'ISR', 'IL'),
(130, 'Itália', 'italiana', 'ITA', 'IT'),
(131, 'Jamaica', 'jamaicana', 'JAM', 'JM'),
(132, 'Japão', 'japonesa', 'JPN', 'JP'),
(133, 'Jersey', 'canalina', 'JEY', 'JE'),
(134, 'Jordânia', 'jordaniana', 'JOR', 'JO'),
(135, 'Kênia', 'queniano', 'KEN', 'KE'),
(136, 'Kiribati', 'kiribatiana', 'KIR', 'KI'),
(137, 'Kuait', 'kuwaitiano', 'KWT', 'KW'),
(138, 'Laos', 'laosiana', 'LAO', 'LA'),
(139, 'Látvia', 'letão', 'LVA', 'LV'),
(140, 'Lesoto', 'lesota', 'LSO', 'LS'),
(141, 'Líbano', 'libanesa', 'LBN', 'LB'),
(142, 'Libéria', 'liberiana', 'LBR', 'LR'),
(143, 'Líbia', 'líbia', 'LBY', 'LY'),
(144, 'Liechtenstein', 'liechtensteiniense', 'LIE', 'LI'),
(145, 'Lituânia', 'lituana', 'LTU', 'LT'),
(146, 'Luxemburgo', 'luxemburguesa', 'LUX', 'LU'),
(147, 'Macau', 'macauense', 'MAC', 'MO'),
(148, 'Macedônia (República Yugoslava)', 'macedônio', 'MKD', 'MK'),
(149, 'Madagascar', 'malgaxe', 'MDG', 'MG'),
(150, 'Malásia', 'malaia', 'MYS', 'MY'),
(151, 'Malaui', 'malauiano', 'MWI', 'MW'),
(152, 'Maldivas', 'maldívia', 'MDV', 'MV'),
(153, 'Mali', 'malinesa', 'MLI', 'ML'),
(154, 'Malta', 'maltesa', 'MLT', 'MT'),
(155, 'Marrocos', 'marroquina', 'MAR', 'MA'),
(156, 'Martinica', 'martiniquense', 'MTQ', 'MQ'),
(157, 'Maurício', 'mauriciana', 'MUS', 'MU'),
(158, 'Mauritânia', 'mauritana', 'MRT', 'MR'),
(159, 'Mayotte', 'maiotense', 'MYT', 'YT'),
(160, 'México', 'mexicana', 'MEX', 'MX'),
(161, 'Micronésia', 'micronésia', 'FSM', 'FM'),
(162, 'Moçambique', 'moçambicana', 'MOZ', 'MZ'),
(163, 'Moldova', 'moldavo', 'MDA', 'MD'),
(164, 'Mônaco', 'monegasca', 'MCO', 'MC'),
(165, 'Mongólia', 'mongol', 'MNG', 'MN'),
(166, 'Montenegro', 'montenegra', 'MNE', 'ME'),
(167, 'Montserrat', 'montserratiano', 'MSR', 'MS'),
(168, 'Myanma', 'birmanês', 'MMR', 'MM'),
(169, 'Namíbia', 'namíbia', 'NAM', 'NA'),
(170, 'Nauru', 'nauruana', 'NRU', 'NR'),
(171, 'Nepal', 'nepalesa', 'NPL', 'NP'),
(172, 'Nicarágua', 'nicaraguense', 'NIC', 'NI'),
(173, 'Níger', 'nigerina', 'NER', 'NE'),
(174, 'Nigéria', 'nigeriana', 'NGA', 'NG'),
(175, 'Niue', 'niueana', 'NIU', 'NU'),
(176, 'Noruega', 'norueguesa', 'NOR', 'NO'),
(177, 'Nova Caledônia', 'caledônia', 'NCL', 'NC'),
(178, 'Nova Zelândia', 'neozelandesa', 'NZL', 'NZ'),
(179, 'Omã', 'omani', 'OMN', 'OM'),
(180, 'Palau', 'palauense', 'PLW', 'PW'),
(181, 'Panamá', 'zona do canal do panamá', 'PAN', 'PA'),
(182, 'Papua-Nova Guiné', 'pauásia', 'PNG', 'PG'),
(183, 'Paquistão', 'paquistanesa', 'PAK', 'PK'),
(184, 'Paraguai', 'paraguaia', 'PRY', 'PY'),
(185, 'Peru', 'peruana', 'PER', 'PE'),
(186, 'Polinésia Francesa', 'franco-polinésia', 'PYF', 'PF'),
(187, 'Polônia', 'polonesa', 'POL', 'PL'),
(188, 'Porto Rico', 'portorriquenha', 'PRI', 'PR'),
(189, 'Portugal', 'portuguesa', 'PRT', 'PT'),
(190, 'Qatar', 'catarense', 'QAT', 'QA'),
(191, 'Quirguistão', 'quirguiz', 'KGZ', 'KG'),
(192, 'República Centro-Africana', 'centro-africana', 'CAF', 'CF'),
(193, 'República Democrática do Congo', 'congolesa', 'COD', 'CD'),
(194, 'República Dominicana', 'dominicana', 'DOM', 'DO'),
(195, 'República Tcheca', 'tcheco', 'CZE', 'CZ'),
(196, 'Romênia', 'romena', 'ROM', 'RO'),
(197, 'Ruanda', 'ruandesa', 'RWA', 'RW'),
(198, 'Rússia', 'russa', 'RUS', 'RU'),
(199, 'Saara Ocidental', 'saariano', 'ESH', 'EH'),
(200, 'Saint Vincente e Granadinas', 'sao-vicentino', 'VCT', 'VC'),
(201, 'Samoa Americana', 'samoana', 'ASM', 'AS'),
(202, 'Samoa Ocidental', 'samoano', 'WSM', 'WS'),
(203, 'San Marino', 'samarinês', 'SMR', 'SM'),
(204, 'Santa Helena', 'helenense', 'SHN', 'SH'),
(205, 'Santa Lúcia', 'santa-lucense', 'LCA', 'LC'),
(206, 'São Bartolomeu', 'são-bartolomeense', 'BLM', 'BL'),
(207, 'São Cristóvão e Névis', 'são-cristovense', 'KNA', 'KN'),
(208, 'São Martim', 'são-martinhense', 'MAF', 'MF'),
(209, 'São Tomé e Príncipe', 'são-tomense', 'STP', 'ST'),
(210, 'Senegal', 'senegalesa', 'SEN', 'SN'),
(211, 'Serra Leoa', 'leonesa', 'SLE', 'SL'),
(212, 'Sérvia', 'sérvia', 'SRB', 'RS'),
(213, 'Síria', 'síria', 'SYR', 'SY'),
(214, 'Somália', 'somali', 'SOM', 'SO'),
(215, 'Sri Lanka', 'cingalesa', 'LKA', 'LK'),
(216, 'St. Pierre and Miquelon', 'pedro-miquelonense', 'SPM', 'PM'),
(217, 'Suazilândia', 'suazi', 'SWZ', 'SZ'),
(218, 'Sudão', 'sudanesa', 'SDN', 'SD'),
(219, 'Suécia', 'sueca', 'SWE', 'SE'),
(220, 'Suíça', 'suíça', 'CHE', 'CH'),
(221, 'Suriname', 'surinamesa', 'SUR', 'SR'),
(222, 'Tadjiquistão', 'tadjique', 'TJK', 'TJ'),
(223, 'Tailândia', 'tailandesa', 'THA', 'TH'),
(224, 'Taiwan', 'taiwanês', 'TWN', 'TW'),
(225, 'Tanzânia', 'tanzaniana', 'TZA', 'TZ'),
(226, 'Território Britânico do Oceano índico', 'do território britânico do oceano índico', 'IOT', 'IO'),
(227, 'Territórios do Sul da França', 'do territórios do sul da frança', 'ATF', 'TF'),
(228, 'Territórios Palestinos Ocupados', 'palestino', 'PSE', 'PS'),
(229, 'Timor Leste', '', 'TMP', 'TP'),
(230, 'Togo', 'togolesa', 'TGO', 'TG'),
(231, 'Tonga', 'tonganesa', 'TON', 'TO'),
(232, 'Trinidad and Tobago', 'trinitário-tobagense', 'TTO', 'TT'),
(233, 'Tunísia', 'tunisiana', 'TUN', 'TN'),
(234, 'Turcomenistão', 'turcomana', 'TKM', 'TM'),
(235, 'Turquia', 'turca', 'TUR', 'TR'),
(236, 'Tuvalu', 'tuvaluana', 'TUV', 'TV'),
(237, 'Ucrânia', 'ucraniana', 'UKR', 'UA'),
(238, 'Uganda', 'ugandense', 'UGA', 'UG'),
(239, 'Uruguai', 'uruguaia', 'URY', 'UY'),
(240, 'Uzbequistão', 'uzbeque', 'UZB', 'UZ'),
(241, 'Vanuatu', 'vanuatuense', 'VUT', 'VU'),
(242, 'Vaticano', 'vaticano', 'VAT', 'VA'),
(243, 'Venezuela', 'venezuelana', 'VEN', 'VE'),
(244, 'Vietnã', 'vietnamita', 'VNM', 'VN'),
(245, 'Zâmbia', 'zambiana', 'ZMB', 'ZM'),
(246, 'Zimbábue', 'zimbabuana', 'ZWE', 'ZW');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

CREATE TABLE `perfil` (
  `id` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `administrador` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`id`, `descricao`, `administrador`) VALUES
(1, 'Administrador', 1),
(2, 'Comum', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissao`
--

CREATE TABLE `permissao` (
  `perfil_id` int(10) UNSIGNED NOT NULL,
  `conteudo_id` int(10) UNSIGNED NOT NULL,
  `visualizar` tinyint(1) NOT NULL DEFAULT '1',
  `inserir` tinyint(1) NOT NULL DEFAULT '0',
  `alterar` tinyint(1) NOT NULL DEFAULT '0',
  `excluir` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `nome_completo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexo` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_de_nascimento` date DEFAULT NULL,
  `cpf` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `perfil_id` int(10) UNSIGNED NOT NULL,
  `pais_id` int(10) UNSIGNED NOT NULL,
  `estado_civil_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `nome_completo`, `sexo`, `data_de_nascimento`, `cpf`, `email`, `login`, `senha`, `habilitado`, `perfil_id`, `pais_id`, `estado_civil_id`) VALUES
(1, 'Admin', 'Administrador do Sistema', NULL, NULL, NULL, 'admin@gmail.com', 'admin', 'e8d95a51f3af4a3b134bf6bb680a213a', 1, 1, 31, 1),
(2, 'Juvenal', 'Juvenal da Silva', 'M', NULL, NULL, 'juvenal@gmail.com', 'juvenal', 'e8d95a51f3af4a3b134bf6bb680a213a', 0, 2, 31, 2),
(3, 'Maria', 'Maria José de Jesus', 'F', NULL, NULL, 'mariajose@gmail.com', 'maria', 'e8d95a51f3af4a3b134bf6bb680a213a', 1, 2, 31, 3),
(4, 'Joaquim', 'Joaquim de Souza', 'M', NULL, NULL, 'joaquim@gmail.com', 'joaquim', 'e8d95a51f3af4a3b134bf6bb680a213a', 1, 2, 31, 5),
(5, 'Marinalva', 'Marinalva Duarte', 'F', NULL, NULL, 'marinalva@gmail.com', 'marinalva', 'e8d95a51f3af4a3b134bf6bb680a213a', 1, 2, 31, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `estado_civil_descricao_unique` (`descricao`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `perfil_descricao_unique` (`descricao`);

--
-- Indexes for table `permissao`
--
ALTER TABLE `permissao`
  ADD PRIMARY KEY (`perfil_id`,`conteudo_id`),
  ADD KEY `permissao_conteudo_id_foreign` (`conteudo_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_login_unique` (`login`),
  ADD KEY `usuario_perfil_id_foreign` (`perfil_id`),
  ADD KEY `usuario_pais_id_foreign` (`pais_id`),
  ADD KEY `usuario_estado_civil_id_foreign` (`estado_civil_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `permissao`
--
ALTER TABLE `permissao`
  ADD CONSTRAINT `permissao_conteudo_id_foreign` FOREIGN KEY (`conteudo_id`) REFERENCES `conteudo` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permissao_perfil_id_foreign` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_estado_civil_id_foreign` FOREIGN KEY (`estado_civil_id`) REFERENCES `estado_civil` (`id`),
  ADD CONSTRAINT `usuario_pais_id_foreign` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`),
  ADD CONSTRAINT `usuario_perfil_id_foreign` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
