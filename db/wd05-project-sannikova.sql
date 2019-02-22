-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 22 2019 г., 14:40
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wd05-project-sannikova`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Егор Казаков', 'Я веб-разработчик');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(8, 'Путешествия'),
(10, 'Фриланс как образ жизни'),
(14, 'Заметки');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(3, 33, 1, 'Самостоятельно лечиться BaliBlogger не рекомендует. У тех, кто живет на Бали и давно серфит, часто происходят разные раны и порезы от встречи с острым рифовым дном или даже собственной доской. Наложение швов в международной больнице 300-500$, в местной: около 50$.', '2019-02-20 18:42:06'),
(15, 33, 9, 'Наложение швов в международной больнице 300-500$, в местной: около 50$.', '2019-02-20 19:29:30'),
(18, 33, 8, 'Привиться от нее нельзя, но сама болезнь довольно неприятная: очень сильная температура, слабость и болят суставы. ', '2019-02-20 19:53:19'),
(19, 33, 1, 'Еще одна предосторожность, хоть это и совсем редкость тут &ndash; это ядовитые змеи. Несмотря на то, что об случаях укусов змей я почти не слышала (хотя мне кажется я знаю почти обо всем, что происходит на Бали :) и разводить панику понапрасну не стоит, лучше знать заранее о такой возможности и о том, как себя вести. На Бали есть 5 смертельно ядовитых змей &ndash; 4 наземные и 1 морская. ', '2019-02-20 20:14:11'),
(22, 33, 5, 'Что делать в этом случае &ndash; обращаться в больницу.', '2019-02-20 20:16:40'),
(23, 32, 1, 'Самое частое, с чем попадают в больницу &ndash; это раны от падения с байков. ', '2019-02-20 20:32:08'),
(24, 32, 1, 'В самой крутой балийский больнице BIMC обработка не слишком серьезной раны, плюс наложение-снятие швов обойдется где-то в 300 долларов. ', '2019-02-20 20:32:23'),
(25, 32, 1, 'Именно поэтому их обязательно надо показать врачу, обязательно обрабатывать, чтобы они скорее заживали и подсыхали. ', '2019-02-20 20:32:34');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` double DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secondname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address`, `name`, `secondname`, `skype`, `vk`, `fb`, `github`, `twitter`) VALUES
(1, 'nata_san@bk.ru', 79222425151, 'Пермский край, Чайковский', 'Наталья', '', 'sanata713', 'https://vk.com/nata_sannikova', 'https://www.facebook.com/natalya.sannikova.90', 'https://github.com/sanata713', 'https://twitter.com/SaNata713');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cat` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `cat`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `update_time`) VALUES
(22, 'Вулкан Агунг проснулся или все, что вам действительно нужно знать про извержение', '8', 'На Бали в сентябре проснулся вулкан Агунг. Самая высокая точка острова и самая почитаемая балийцами гора: для них этот вулкан священный. И вот этот вулкан  – впрочем всегда бывший активным, поэтому конечно не совсем точно говорить про него, что он проснулся. Но кажется так звучит более значительно? :-) Так или иначе, магма внутри вулкана пробирается все выше, территорию вокруг вулкана регулярно потряхивает (на днях было самое сильное землятресение чуть больше 4 по Рихтеру). И хотя дату извержений (даже с точностью до месяца) никто предсказать не может, но активность внутри вулкана настолько регулярно нарастает, что все может произойти в любой момент. Примерно неделю назад стали эвакуировать деревни, живущие на склонах вулкана. Местный мчс объявил зону в радиусе 12 км от вулкана опасной для посещения. (Upd. по декабрю: извержения начались, но некрупные, все ждут более крупных). Новостные сайты по всему миру раздули эту ситуацию до невиданных высот (почти до заголовков в духе “извержение вулкана агунг это начало конца мира”). Сейчас нельзя даже зайти в фейсбук, чтобы там не начался Агунг-фм :-)', 1, '2019-02-17 10:04:12', '817554791.jpg', '320-817554791.jpg', NULL),
(23, 'Когда же рванет Агунг?', '9', 'Переведение вулкана в красный статус AWAS (=ОПАСНОСТЬ) совершенно не означает, что извержение произойдет прямо сегодня или скажем прямо завтра. И главное, какого оно будет масштаба. Вообще, как выяснилось, в случае с вулканами вообще нельзя предсказать даже примерного месяца. Есть вулканы, которые перевели в статус AWAS, а они еще год потом готовятся-готовятся и не могут рвануть. А потом раз и рванут. Когда никто этого уже не ждет :) Ну, кстати, про рвануть. Все вулканы разные, например, есть стратовулканы, есть щитовые вулканы, есть купольные и разные другие. Все они могут рвануть по разному. Кто-то поплюет слегка пепла вверх и все, кто-то постоянно выдает лаву наверх, но не взрывается. В плане извержения самые неприятные это именно стратовуланы, так как от них жди не просто вытекания лавы, а настоящего взрыва. Вулкан Агунг к слову стратовулкан. Ой! В любом случае вернемся к предполагаемой дате извержения. Если вы читаете где-то в интернете информацию о том, что вот вулкан Агунг должен взорваться такого-то числа в такое-то время (а такие предположения циркулируют постоянно), просто закройте этот источник информации и никогда к нему не возвращайтесь. Никогда. Потому что даже вулканологи не могут делать такое предположение. В случае с тем же Агунгом, крупное извержение может случиться завтра, а может в следующем году, а может вообще не случится и вулкан снова замрет лет на 50. Все просто сидят и ждут. А специально обученные люди мониторят активность внутри вулкана и нам об этом сообщают, благо мы теперь живем в век интернета. Во время мониторинга смотрят на учащение внутренних толчков (я не вулканолог, поэтому объясняю простыми словами) и то, что происходит с магмой внутри вулкана. Например, про Агунг официальные источники рапортуют, что мол все больше толчков и все выше поднимается магма, пару дней назад писали о том, что она теперь на расстоянии 2 км от поверхности вулкана (ну или как там это называется). Как быстро изменится расстояние с 2 км на меньшее тоже пока никто не знает. Следят, смотрят, каждый день рапортуют о новых данных. (UPD. К слову сказать эта статья была написана в конце сентября, когда все ждали крупного извержения со дня на день. Сейчас, когда я пишут этот апдейт, уже середина декабря и ничего крупного до сих пор не произошло) Кстати, пока мы с вами волнуемся про судьбу Агунга, в Индонезии на этой неделе извергается два других вулкана: Sinabung и Dukono. Первый размером с Агунг, второй поменьше. (Но нельзя в данном случае судить по размеру и делать выводы про масштабы возможного бедствия). К чему я про эти другие вулканы? А про то, что они рванули, но ничего, мир не рухнул, Индонезия пополам не раскололась. Кстати, даже аэропорты не закрыли. В конце статьи есть вчерашнее фото с извержения вулкана Синабунг. (Специально фото подписано, чтобы никто ничего не перепутал и не назвал это Агунгом).', 1, '2019-02-17 10:05:16', '-226297608.jpg', '320--226297608.jpg', NULL),
(24, 'Резюме. Лететь или нет на Бали? ', '10', 'Если вы прочитали эту статью и все еще не можете решить, лететь вам на Бали или не лететь, то я бы сказала бы не лететь и не планировать отпуск на Бали в ближайшие месяцы. Почему так категорично? Потому что, мне кажется, если вас смущает идея лететь на остров с действующим вулканом, то зачем себя насиловать. Если вы каждый день будете лихорадочно проверять новости и думать о том, что именно в вашу поездку случится беда, а еще до кучи вы боитесь извержений и цунами, и будете подскакивать на месте от каждого толчка, то наверное, стоит повременить с поездкой на Бали. Если вы прочитали эту статью, у вас уже есть билет и у вас сложилось ощущения, что лететь на Бали вполне безопасно, то я вас в этом поддержу – если бы я была на вашем месте, то я бы не стала отменять никаких поездок. Прихватите себе маску, уточните в своей авиакомпании, что они не отменяли рейсы и добро пожаловать на остров! Если вы думали лететь на Бали в марте-апреле и хотите знать, будет ли тогда уже безопасно, то должна вас расстроить: неизвестно когда случится крупное извержение. Еще раз перечитайте историю 60-х годов. Там извержения происходили с разницей нескольких недель и месяцев.', 1, '2019-02-17 10:06:44', '-79827380.jpg', '320--79827380.jpg', NULL),
(25, 'Аренда скутера на Бали. Где взять, сколько стоит и как не попасть впросак', '14', 'На Бали почти все передвигаются на мотобайках (байках, скутерах, мопедах – названий масса, а суть одна), машины здесь тоже есть, но на скутере ты становишься более мобильным, не стоишь в пробках и тебе легче пробираться по узким улочкам и парковаться там, где мест на парковку для машин нет. Без личного транспорта на Бали нечего делать: остров не настолько маленький, чтобы ходить пешком. Чтобы попасть от вашего отеля/виллы в кафе или на пляж вам понадобится проехать несколько километров. Чтобы попасть из одного района в другой надо проехать больше 10 километров. И даже если что-то находится близко, в большинстве районов Бали нет тротуаров, а на дорогах плотное движение, плюс ходить довольно-то жарко. Общественного транспорта на Бали как такового нет, а пользоваться такси каждый день недешево (и иногда стрессово, так как водители постоянно теряются, не знают дороги или с ними надо долго торговаться по цене). Зато когда у тебя свой байк, ты можешь в любой момент сорваться туда, куда тебе хочется, не будучи привязанным ни к кому и ни к чему.', 1, '2019-02-17 10:08:40', '1119034402.jpg', '320-1119034402.jpg', NULL),
(26, 'Вот основные аргументы почему стоит брать скутер на Бали', '10', '<p>Скутеры на Бали недорогие права на управление байком по большому счету не нужны, скутер достаточно прост в управлении, в аренду дают автоматический скутер, легко научиться, даже если никогда не ездил до этого на скутере гораздо проще в пробках и можно сэкономить время в два раза в некоторых районах (Кута, Чангу, Семиньяк) на машине особо не припаркуешься и улицы узкие, на скутере гораздо быстрее, плюс есть улочки, куда можно только на скутере заехать на Бали водят на левой стороне дороге и на скутере к этому чуть проще привыкнуть, чем на машине.</p>\r\n\r\n<p>Я сама из семи лет жизни на Бали первые 3-4 года ездила на скутере, но потом пересела на машину и никогда об этом не пожалела, даже несмотря на пробки итп. В последние пару лет у меня были и байк и машина. Байк для того, чтобы ездить на короткие расстояния, когда пробка на главной дороге (перед закатом и сразу после) встает на несколько часов вначале в одну сторону, а потом другую. Друзьям которые приезжают в отпуск ненадолго я обычно советую скутеры &ndash; для удобства.</p>\r\n\r\n<p><strong>Аргументы против скутера (и в пользу машины): </strong></p>\r\n\r\n<ul>\r\n	<li>на длинные расстояния скутер не всегда вариант: устает спина, ты приезжаешь весь пыльный и вспотевший итп (например, ехать куда-то больше 40 минут комфортнее все-таки на машине с кондиционером, пусть и по пробкам :-)</li>\r\n	<li>на скутере ты менее защищен, если авария, то твое тело встречается с асфальтом (русские туристы часто попадают в аварии на скутере: гоняют и лихачат, не понимая, что местные неаккуратно водят, в итоге аварии в том числе с жестким исходом на Бали вещь частая)</li>\r\n	<li>в сезон дождей на скутере ты вечно мокрый, холодный и грязный, на машине в дожливое время однозначно комфортнее и теплее машина дает определенную защищенность по сравнению со скутером: никто не выхватит сумку на ходу, никто вечер не начнет приставать итп (такое иногда бывает)</li>\r\n</ul>\r\n', 1, '2019-02-17 10:09:35', '-100285772.jpg', '320--100285772.jpg', '2019-02-19 16:22:41'),
(27, 'Как возить серфборд на скутере?', '8', '<p>Ну и напоследок нельзя было обойти такую тему, как скутеры для серферов. Поскольку серфовые споты расположены в разных местах, серферы ездят по Бали с серфдосками, прикрепленными к байкам с помощью специальных серф-рэков (от английского surf racks). Байки с рэками есть во всех прокатах, специально платить за них не надо, но надо заранее спросить про это у прокатчика и убедиться, что у него такой байк есть. Главное, не ведитесь на обещания, что мол я тебе сейчас обычный дам байк, а завтра пригоню с серфрэками. Я так однажды неделю ждала :) Лучше сразу брать то, что надо или не отдавать деньги.</p>\r\n', 1, '2019-02-17 10:11:29', '-722042996.jpg', '320--722042996.jpg', '2019-02-19 12:29:05'),
(32, 'Уровень медицины на Бали', '14', '<p>Специальные прививки и вакцинации для Бали делать не надо, здесь все достаточно цивилизованно и тех болезней, для которых это требуется, в туристических, да и в остальных районах Бали, подцепить почти невозможно.</p>\r\n\r\n<p>Самое частое, с чем попадают в больницу &ndash; это раны от падения с байков. В самой крутой балийский больнице BIMC обработка не слишком серьезной раны, плюс наложение-снятие швов обойдется где-то в 300 долларов. Помимо падения с мотобайков, есть еще такая вещь как ожоги трубой на мотобайке &ndash; будьте осторожны заранее. Но если все-таки вы получили какие-то травмы, связанные с падением об асфальт, имейте в виду, из-за повышенной влажности здесь очень плохо заживают раны. Именно поэтому их обязательно надо показать врачу, обязательно обрабатывать, чтобы они скорее заживали и подсыхали. (Кстати, в этом случае вам пригодится статья про аптечку)</p>\r\n\r\n<p>Одно из самых неприятных болезней на Бали, которым могут переболеть те, кто находится на Бали долго (но я, например, не болела пока) &ndash; это лихорадка Денге. Привиться от нее нельзя, но сама болезнь довольно неприятная: очень сильная температура, слабость и болят суставы. Что делать в этом случае &ndash; обращаться в больницу. Самостоятельно лечиться BaliBlogger не рекомендует. У тех, кто живет на Бали и давно серфит, часто происходят разные раны и порезы от встречи с острым рифовым дном или даже собственной доской. Наложение швов в международной больнице 300-500$, в местной: около 50$.</p>\r\n\r\n<p>Еще одна предосторожность, хоть это и совсем редкость тут &ndash; это ядовитые змеи. Несмотря на то, что об случаях укусов змей я почти не слышала (хотя мне кажется я знаю почти обо всем, что происходит на Бали :) и разводить панику понапрасну не стоит, лучше знать заранее о такой возможности и о том, как себя вести. На Бали есть 5 смертельно ядовитых змей &ndash; 4 наземные и 1 морская. Про змей читайте отдельную статьи &ldquo;ядовитые змеи на Бали&ldquo;.</p>\r\n', 1, '2019-02-19 16:06:09', '771123136.jpg', '320-771123136.jpg', NULL),
(33, 'Заголовок поста', '14', '<p>Одно из самых неприятных болезней на Бали, которым могут переболеть те, кто находится на Бали долго (но я, например, не болела пока) &ndash; это лихорадка Денге. Привиться от нее нельзя, но сама болезнь довольно неприятная: очень сильная температура, слабость и болят суставы. Что делать в этом случае &ndash; обращаться в больницу.</p>\r\n\r\n<p>Самостоятельно лечиться BaliBlogger не рекомендует. У тех, кто живет на Бали и давно серфит, часто происходят разные раны и порезы от встречи с острым рифовым дном или даже собственной доской. Наложение швов в международной больнице 300-500$, в местной: около 50$.</p>\r\n', 1, '2019-02-20 18:40:12', '650507571.jpg', '320-650507571.jpg', '2019-02-20 19:01:09');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `secondname`, `country`, `city`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'info@mail.com', '$2y$10$D9ew/fWkyOJCR8IRu/GYlugAIiifkwkc7lXKnRCBUVgXPBiY8WgGm', 'admin', 'Наталья', 'Санникова', 'Россия', 'Чайковский', '-521372853.jpg', '48--521372853.jpg', 'hTGvmOjyEcCw71k', 3),
(5, 'user@mail.com', '$2y$10$fc8jv7QbXezCv4ST6ZvlSO0hwS.CKdWWoNggjlxlKscT3m6fdq4sy', 'user', 'Антон', 'Вол', 'Беларусь', 'Минск', '-247764095.jpg', '48--247764095.jpg', NULL, NULL),
(7, 'info10@mail.com', '$2y$10$51VYOXJztFCELzIbNIjfye1g1JdqYgHd.N2B.1Rk4sv4sSuNhyOm6', 'user', 'Анна', 'Михайлова', 'Украина', 'Львов', '1194167106.jpg', '48-1194167106.jpg', NULL, NULL),
(8, 'user2@mail.com', '$2y$10$cxaF8NA0XCfCZwIYUXgHRe6vLc9pmWctB2vQtdm.s9kAR2MZlMhw2', 'user', 'Иван', 'Васильев', '', 'Челябинск', '490279816.jpg', '48-490279816.jpg', NULL, NULL),
(9, 'user3@mail.com', '$2y$10$ykh7bhiaI/GXCeckwdlC8ORp289aOr6Du4YETPw/u.a1cW1n4p09a', 'user', 'Настя', 'Ефименко', 'Молдова', 'Кишинев', NULL, NULL, 'JOaYRWNk4oVi7xu', 0),
(10, 'user4@mail.com', '$2y$10$6q1R20jC7Ht30Fnrmbev9ubyD0qgg9dhqpNIf/KSS.YNku6RFlYxi', 'user', 'Kathy', 'Smith', 'UK', 'London', NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
