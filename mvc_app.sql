-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 31 2016 г., 19:56
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `mvc_app`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(1, 'Kimberly Kelly'),
(2, 'Elizabeth Brown'),
(3, 'David Pierce'),
(4, 'Steve Ryan'),
(5, 'Terry Stevens'),
(6, 'David Brown'),
(7, 'Adam Perez'),
(8, 'Christopher Harper'),
(9, 'Sandra Graham'),
(10, 'Janice Carpenter'),
(11, 'Elizabeth Crawford'),
(12, 'James Wells'),
(13, 'Frank Burton'),
(14, 'Clarence Daniels'),
(15, 'Tammy Thompson'),
(16, 'Adam Stone'),
(17, 'Dorothy Washington'),
(18, 'Kimberly Smith'),
(19, 'Nicholas Nguyen'),
(20, 'Brandon Lynch'),
(21, 'Edward Dunn'),
(22, 'Jack Lewis'),
(23, 'Rachel Davis'),
(24, 'Justin Phillips'),
(25, 'Angela White'),
(26, 'Samuel Payne'),
(27, 'Lori Burton'),
(28, 'Johnny Ross'),
(29, 'Johnny Romero'),
(30, 'David Rivera');

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text,
  `style_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `title`, `description`, `style_id`, `price`, `status`) VALUES
(1, 'Dracula', 'Very scary bookVery scary bookVery scary bookVery scary bookVery scary bookVery scary bookVery scary bookVery scary bookVery scary book', 2, '131313.13', 1),
(2, 'erat quisque erat eros viverra', NULL, 7, '510.08', 1),
(3, 'maecenas ut massa quis augue luctus', 'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus', 10, '449.45', 0),
(4, 'integer pede justo lacinia eget tincidunt eget', 'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum', 4, '227.56', 0),
(5, 'quis libero nullam sit amet turpis elementum ligula vehicula', 'consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices', 1, '901.43', 1),
(6, 'feugiat non pretium quis lectus suspendisse potenti in eleifend quam', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 3, '945.20', 1),
(7, 'aliquet ultrices erat tortor sollicitudin', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum', 1, '337.28', 0),
(8, 'diam id ornare imperdiet sapien urna', 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend', 6, '610.34', 1),
(9, 'in faucibus orci luctus et ultrices posuere cubilia', 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', 7, '802.29', 0),
(10, 'orci luctus et ultrices posuere cubilia curae', 'luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae', 3, '775.57', 0),
(11, 'justo etiam pretium iaculis justo', 'mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse', 3, '415.95', 0),
(12, 'sem fusce consequat nulla nisl nunc nisl duis', 'tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum', 6, '767.31', 1),
(13, 'iaculis congue vivamus metus arcu adipiscing', NULL, 9, '243.36', 0),
(14, 'leo odio porttitor id consequat in consequat ut nulla sed', 'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed', 7, '381.54', 0),
(15, 'et tempus semper est quam pharetra magna ac', 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla', 7, '192.97', 1),
(16, 'mauris vulputate elementum nullam varius nulla facilisi cras non velit', 'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in', 2, '267.24', 0),
(17, 'pulvinar nulla pede ullamcorper augue a suscipit nulla', 'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum', 10, '283.35', 0),
(18, 'condimentum curabitur in libero ut massa volutpat convallis morbi odio', NULL, 2, '565.90', 1),
(19, 'in felis donec semper sapien a libero nam dui', 'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna', 10, '912.77', 1),
(20, 'odio donec vitae nisi nam ultrices libero non mattis', 'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 3, '438.94', 1),
(21, 'rhoncus sed vestibulum sit amet cursus id turpis', NULL, 4, '812.51', 0),
(22, 'bibendum felis sed interdum venenatis turpis', 'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis', 8, '423.60', 0),
(23, 'ultrices mattis odio donec vitae nisi nam ultrices libero', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum', 7, '696.99', 1),
(24, 'enim blandit mi in porttitor pede justo eu massa donec', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', 10, '595.43', 0),
(25, 'nisl nunc rhoncus dui vel sem sed sagittis nam congue', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris', 8, '309.92', 1),
(26, 'et eros vestibulum ac est lacinia', 'nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce', 8, '314.95', 0),
(27, 'volutpat eleifend donec ut dolor morbi vel lectus in quam', 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', 7, '253.02', 1),
(28, 'augue quam sollicitudin vitae consectetuer', 'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit', 8, '278.18', 0),
(29, 'rutrum rutrum neque aenean auctor gravida sem praesent id massa', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a', 1, '987.27', 0),
(30, 'vulputate justo in blandit ultrices enim lorem ipsum', 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in', 8, '283.31', 0),
(31, 'enim leo rhoncus sed vestibulum sit amet cursus id', NULL, 7, '737.89', 0),
(32, 'at turpis a pede posuere nonummy integer non', 'rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', 10, '907.97', 1),
(33, 'aliquam sit amet diam in magna bibendum imperdiet nullam orci', 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam', 7, '608.80', 0),
(34, 'pede justo lacinia eget tincidunt eget tempus vel pede', 'quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer', 3, '566.78', 0),
(35, 'convallis nunc proin at turpis a', 'sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula', 2, '466.64', 1),
(36, 'quis odio consequat varius integer ac leo pellentesque ultrices', 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo', 2, '391.40', 0),
(37, 'cras in purus eu magna vulputate', 'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus', 4, '513.54', 1),
(38, 'primis in faucibus orci luctus et', NULL, 1, '891.88', 1),
(39, 'aliquam convallis nunc proin at turpis a', 'sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus', 1, '802.38', 1),
(40, 'in consequat ut nulla sed accumsan', 'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc', 4, '310.27', 1),
(41, 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', 'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas', 4, '582.94', 0),
(42, 'vivamus in felis eu sapien', 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium', 7, '657.17', 0),
(43, 'pede libero quis orci nullam molestie nibh in', NULL, 10, '397.11', 1),
(44, 'tortor quis turpis sed ante vivamus', 'integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer', 1, '805.46', 0),
(45, 'ipsum dolor sit amet consectetuer adipiscing elit proin', 'nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum', 5, '323.74', 1),
(46, 'odio in hac habitasse platea dictumst maecenas ut', 'in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis', 10, '234.47', 0),
(47, 'nisl aenean lectus pellentesque eget nunc donec quis orci eget', 'massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed', 4, '874.50', 0),
(48, 'nam congue risus semper porta volutpat quam', 'congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', 9, '293.41', 0),
(49, 'lacus at turpis donec posuere metus', 'massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', 1, '506.19', 0),
(50, 'scelerisque mauris sit amet eros', 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat', 9, '908.43', 1),
(51, 'platea dictumst maecenas ut massa quis augue luctus tincidunt', 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede', 2, '547.04', 0),
(52, 'amet lobortis sapien sapien non mi integer ac neque', 'sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus', 9, '962.88', 0),
(53, 'nulla ultrices aliquet maecenas leo odio', 'dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', 7, '423.81', 0),
(54, 'mattis egestas metus aenean fermentum', 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi', 9, '769.15', 0),
(55, 'iaculis diam erat fermentum justo nec', 'in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo', 3, '259.09', 1),
(56, 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue', 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula', 5, '907.66', 0),
(57, 'risus praesent lectus vestibulum quam sapien varius ut blandit', 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet', 7, '879.56', 0),
(58, 'morbi ut odio cras mi', 'eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum', 8, '432.89', 0),
(59, 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis', 'nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique', 8, '750.87', 1),
(60, 'volutpat convallis morbi odio odio', NULL, 4, '101.89', 1),
(61, 'ante vel ipsum praesent blandit lacinia', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', 7, '829.26', 0),
(62, 'sit amet diam in magna', 'est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer', 10, '977.35', 0),
(63, 'ipsum ac tellus semper interdum mauris', 'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla', 8, '649.16', 0),
(64, 'platea dictumst morbi vestibulum velit id', 'erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec', 8, '897.65', 1),
(65, 'massa donec dapibus duis at velit eu est', 'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo', 4, '383.55', 1),
(66, 'sapien placerat ante nulla justo', 'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque', 8, '918.58', 0),
(67, 'nunc commodo placerat praesent blandit nam nulla integer pede', 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 4, '671.14', 1),
(68, 'augue aliquam erat volutpat in', 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', 7, '218.83', 1),
(69, 'vestibulum vestibulum ante ipsum primis in faucibus', 'lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor', 1, '775.87', 1),
(70, 'mattis egestas metus aenean fermentum donec', 'leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci', 5, '721.78', 0),
(71, 'vulputate justo in blandit ultrices', 'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in', 10, '411.57', 0),
(72, 'nibh fusce lacus purus aliquet at feugiat non', 'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare', 3, '990.18', 0),
(73, 'vestibulum proin eu mi nulla ac', 'et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui', 5, '605.85', 1),
(74, 'erat id mauris vulputate elementum nullam varius nulla facilisi', 'in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', 3, '602.37', 1),
(75, 'ullamcorper purus sit amet nulla quisque arcu libero', 'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', 9, '937.96', 1),
(76, 'et magnis dis parturient montes nascetur ridiculus mus etiam vel', 'ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac', 6, '172.02', 0),
(77, 'urna pretium nisl ut volutpat sapien', NULL, 10, '877.69', 0),
(78, 'quisque arcu libero rutrum ac lobortis vel dapibus', 'consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia', 1, '733.36', 0),
(79, 'praesent id massa id nisl venenatis lacinia aenean sit', 'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id', 6, '247.50', 0),
(80, 'metus arcu adipiscing molestie hendrerit at', NULL, 7, '407.89', 1),
(81, 'luctus rutrum nulla tellus in sagittis dui vel nisl', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium', 6, '652.77', 0),
(82, 'phasellus in felis donec semper sapien', 'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 5, '415.53', 1),
(83, 'purus aliquet at feugiat non pretium quis lectus suspendisse', 'faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut', 8, '508.91', 0),
(84, 'convallis eget eleifend luctus ultricies eu nibh', 'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', 2, '516.11', 0),
(85, 'tempus semper est quam pharetra magna ac consequat', 'venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam', 7, '294.22', 0),
(86, 'proin interdum mauris non ligula pellentesque ultrices phasellus id', 'non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus', 7, '647.70', 0),
(87, 'ut mauris eget massa tempor', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta', 5, '769.11', 0),
(88, 'eu tincidunt in leo maecenas pulvinar lobortis est', 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis', 10, '810.44', 0),
(89, 'duis bibendum morbi non quam nec dui luctus rutrum', 'non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc', 7, '852.23', 0),
(90, 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur', 'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla', 3, '808.71', 1),
(91, 'et ultrices posuere cubilia curae', 'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum', 1, '778.63', 0),
(92, 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 'dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', 5, '499.02', 1),
(93, 'a suscipit nulla elit ac nulla sed vel', 'nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis', 4, '493.10', 1),
(94, 'morbi ut odio cras mi pede malesuada in imperdiet', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales', 2, '835.82', 1),
(95, 'sem duis aliquam convallis nunc proin', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', 5, '104.07', 0),
(96, 'a libero nam dui proin leo', 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et', 1, '127.23', 0),
(97, 'dapibus augue vel accumsan tellus', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', 9, '718.49', 0),
(98, 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque', 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat', 10, '348.32', 0),
(99, 'morbi vestibulum velit id pretium iaculis diam erat', 'morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', 2, '578.39', 1),
(100, 'lectus suspendisse potenti in eleifend quam a odio in hac', 'leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', 8, '918.66', 1),
(101, 'et magnis dis parturient montes nascetur ridiculus mus etiam vel', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna', 3, '995.24', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `book_author`
--

CREATE TABLE `book_author` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book_author`
--

INSERT INTO `book_author` (`id`, `book_id`, `author_id`) VALUES
(1, 6, 2),
(2, 79, 22),
(3, 27, 18),
(4, 34, 22),
(5, 84, 1),
(6, 14, 9),
(7, 54, 22),
(8, 50, 16),
(9, 41, 5),
(10, 37, 15),
(11, 19, 13),
(12, 19, 13),
(13, 42, 6),
(14, 82, 17),
(15, 71, 4),
(16, 57, 4),
(17, 59, 23),
(18, 75, 4),
(19, 63, 7),
(20, 3, 29),
(21, 54, 20),
(22, 1, 11),
(23, 98, 29),
(24, 48, 12),
(25, 3, 20),
(26, 101, 9),
(27, 35, 2),
(29, 54, 21),
(30, 82, 30),
(31, 98, 13),
(32, 57, 5),
(33, 99, 18),
(34, 43, 5),
(35, 60, 21),
(36, 23, 15),
(37, 3, 6),
(38, 64, 2),
(39, 30, 26),
(40, 98, 29),
(41, 12, 16),
(42, 9, 29),
(43, 71, 11),
(44, 30, 17),
(45, 9, 30),
(46, 22, 6),
(47, 64, 9),
(48, 30, 8),
(49, 19, 25),
(50, 100, 22),
(51, 18, 4),
(52, 26, 10),
(53, 84, 13),
(54, 99, 2),
(55, 57, 9),
(56, 76, 28),
(57, 80, 17),
(58, 52, 10),
(59, 8, 5),
(60, 65, 7),
(61, 47, 7),
(62, 37, 4),
(63, 30, 9),
(64, 85, 14),
(65, 87, 23),
(66, 74, 11),
(67, 14, 30),
(68, 12, 21),
(69, 55, 22),
(70, 58, 28),
(71, 94, 15),
(72, 11, 1),
(73, 17, 5),
(74, 44, 18),
(75, 101, 4),
(76, 70, 12),
(77, 25, 27),
(78, 83, 2),
(79, 63, 23),
(80, 91, 18),
(81, 27, 26),
(82, 12, 9),
(83, 46, 22),
(84, 36, 21),
(85, 21, 3),
(86, 80, 15),
(87, 66, 18),
(88, 16, 27),
(89, 25, 8),
(90, 19, 14),
(91, 101, 9),
(92, 88, 4),
(93, 67, 26),
(94, 63, 14),
(95, 74, 25),
(96, 78, 10),
(97, 11, 26),
(98, 96, 9),
(99, 62, 27),
(100, 91, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `message` mediumtext NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `username`, `email`, `message`, `created`) VALUES
(1, 'jessie', 'dmitriyhomnekov@gmail.com', 'sfsdfsdf sd', '2016-05-26 19:52:02'),
(2, 'jessie', 'deurefas@gmail.com', 'sdfds', '2016-05-31 19:37:42'),
(3, 'jessie', 'deurefas@gmail.com', 'sdfsdfsd', '2016-05-31 19:44:21');

-- --------------------------------------------------------

--
-- Структура таблицы `style`
--

CREATE TABLE `style` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `style`
--

INSERT INTO `style` (`id`, `name`) VALUES
(1, 'sit'),
(2, 'ac'),
(3, 'luctus'),
(4, 'amet'),
(5, 'eros'),
(6, 'metan'),
(7, 'condimentum'),
(8, 'super style'),
(9, 'matrices'),
(10, 'aaaa'),
(11, 'vivamus'),
(12, 'in'),
(13, 'meth'),
(14, 'ultrices'),
(15, 'elementum'),
(16, 'Thriller');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `status`) VALUES
(1, 'admin@mvc.com', '1d43a95f76d1da7b3c39597ecf00121e', 1),
(2, 'qwerty@mvc.com', 'cd1356fb884979945ffaa9d8437d354c', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price` (`price`),
  ADD KEY `style_id` (`style_id`);

--
-- Индексы таблицы `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT для таблицы `book_author`
--
ALTER TABLE `book_author`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `style`
--
ALTER TABLE `style`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`style_id`) REFERENCES `style` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
