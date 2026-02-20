INSERT INTO Mailboxes (stop_id, mailbox_status, addresses)
VALUES
    /*  1  */
    /*
     (1, 'nej tack', 'fridlevstad 320'),
     (1, 'nej tack', 'fridlevstad 322'),
     -- 2
     (2, 'ja tack', 'lindskogsvägen 1'),
     (2, 'nej tack', 'lindskogsvägen 4'),
     (2, 'nej tack', 'lindskogsvägen 3'),
     (2, 'nej tack', 'lindskogsvägen 2'),
     -- 3
     (3, 'ja tack', 'friedlevstad 334'),
     (3, 'ja tack', 'friedlevstad 336'),
     (3, 'ja tack', 'fridhemsvägen 11'),
     (3, 'ja tack', 'fridlevstad 338'),
     (3, 'ja tack', 'fridhemsvägen 9'),
     (3, 'ja tack', 'smedjetorpsvägen 9'),
     (3, 'ja tack', 'fridlevstad 340'),
     -- 4
     (4, 'nej tack', 'Västra Kyrkvägen 16'),
     (4, 'ja tack', 'Fälevägen 10'),
     (4, 'ja tack', 'Fälevägen 6'),
     (4, 'ja tack', 'Fälevägen 8'),
     (4, 'ja tack', 'Fälevägen 12'),
     (4, 'ja tack', 'Västra Kyrkvägen 18'),
     (4, 'ja tack', 'Västra Kyrkvägen 11'),
     (4, 'ja tack', 'Västra Kyrkvägen 10'),
     (4, 'ja tack', 'Västra Kyrkvägen 9'),
     (4, 'ja tack', 'Västra Kyrkvägen 12'),
     (4, 'ja tack', 'Västra Kyrkvägen 8'),
     (4, 'ja tack', 'Västra Kyrkvägen 7'),
     (4, 'ja tack', 'Västra Kyrkvägen 20'),
     -- 5
     (5, 'ja tack', 'Västra Kyrkvägen 1'),
     (5, 'ja tack', 'Västra Kyrkvägen 5'),
     (5, 'ja tack', 'Västra Kyrkvägen 3'),
     (5, 'ja tack', 'Västra Kyrkvägen 2'),
     (5, 'ja tack', 'Västra Kyrkvägen 4'),
     (5, 'ja tack', 'Västra Kyrkvägen 6'),
     (5, 'ja tack', 'Smedjetorpsvägen 7'),
     -- 6 
     (6, 'ja tack', 'Lilla Åklivägen 8'),
     (6, 'ja tack', 'Fridhemsvägen 11 A'),
     (6, 'ja tack', 'Fridhemsvägen 16'),
     (6, 'ja tack', 'Smedjetorpsvägen 5'),
     (6, 'ja tack', 'Fridhemsvägen 13'),
     (6, 'ja tack', 'Idrottsvägen 1'),
     (6, 'ja tack', 'Idrottsvägen 3'),
     (6, 'ja tack', 'Fridhemsvägen 18'),
     (6, 'nej tack', 'Smedjetorpsvägen 3'),
     (6, 'ja tack', 'Fridhemsvägen 15'),
     -- 7
     (7, 'nej tack', 'Lilla Åklivägen 5'),
     (7, 'nej tack', 'Lilla Åklivägen 7'),
     (7, 'nej tack', 'Idrottsvägen 2'),
     (7, 'nej tack', 'Idrottsvägen 8'),
     (7, 'nej tack', 'Lilla Åklivägen 3'),
     (7, 'nej tack', 'Idrottsvägen 4'),
     -- 8
     (8, 'nej tack', 'Fridhemsvägen 7'),
     (8, 'nej tack', 'Fridhemsvägen 3'),
     (8, 'nej tack', 'Fridhemsvägen 10'),
     (8, 'nej tack', 'Fridhemsvägen 8'),
     (8, 'nej tack', 'Fridhemsvägen 12'),
     (8, 'nej tack', 'Fridhemsvägen 4'),
     (8, 'nej tack', 'Fridhemsvägen 5'),
     (8, 'nej tack', 'Fridhemsvägen 6'),
     (8, 'nej tack', 'Fridhemsvägen 14'),
     (8, 'nej tack', 'Fridhemsvägen 2'),
     (8, 'nej tack', 'Fridhemsvägen 1'),
     -- 9
     (9, 'nej tack', 'Murbecks väg 12'),
     (9, 'nej tack', 'Murbecks väg 9'),
     (9, 'nej tack', 'Murbecks väg 11'),
     (9, 'nej tack', 'Murbecks väg 13'),
     (9, 'nej tack', 'Murbecks väg 15'),
     (9, 'nej tack', 'Murbecks väg 17'),
     (9, 'nej tack', 'Murbecks väg 19'),
     (9, 'nej tack', 'Murbecks väg 14'),
     (9, 'nej tack', 'Murbecks väg 18'),
     (9, 'nej tack', 'Murbecks väg 21'),
     (9, 'nej tack', 'Murbecks väg 23'),
     -- 10
     (10, 'nej tack', 'Frodells väg 2'),
     (10, 'nej tack', 'Frodells väg 1'),
     (10, 'nej tack', 'Frodells väg 6'),
     (10, 'nej tack', 'Frodells väg 8'),
     (10, 'nej tack', 'Frodells väg 4'),
     -- 11
     (11, 'nej tack', 'Frodells väg 3'),
     (11, 'nej tack', 'Frodells väg 12'),
     (11, 'nej tack', 'Frodells väg 14'),
     (11, 'nej tack', 'Frodells väg 10'),
     (11, 'nej tack', 'Frodells väg 5'),
     (11, 'nej tack', 'Frodells väg 7'),
     -- 12
     (12, 'nej tack', 'Murbecks väg 5'),
     (12, 'nej tack', 'Murbecks väg 3'),
     (12, 'nej tack', 'Murbecks väg 4'),
     (12, 'nej tack', 'Murbecks väg 6'),
     (12, 'nej tack', 'Murbecks väg 8'),
     -- 13
     (13, 'nej tack', 'Murbecks väg 22'),
     (13, 'nej tack', 'Murbecks väg 20'),
     (13, 'nej tack', 'Murbecks väg 31'),
     (13, 'nej tack', 'Murbecks väg 33'),
     (13, 'nej tack', 'Murbecks väg 24'),
     (13, 'nej tack', 'Murbecks väg 29'),
     -- 14
     (14, 'nej tack', 'Fridlevstad 326'),
     (14, 'nej tack', 'Fridlevstad 328'),
     -- 15
     (15, 'ja tack', 'Kyrkallén 2'),
     -- 16*/
    (16, 'nej tack', 'Skolvägen 4'),
    -- 17
    (17, 'ja tack', 'Skolvägen 6'),
    -- 18
    (18, 'ja tack', 'Skolvägen 8'),
    -- 19
    (19, 'ja tack', 'Klockarevägen 7'),
    (19, 'ja tack', 'Klockarevägen 6'),
    (19, 'ja tack', 'Björkerydsvägen 10'),
    (19, 'ja tack', 'Klockarevägen 4'),
    (19, 'ja tack', 'Klockarevägen 3'),
    (19, 'ja tack', 'Klockarevägen 5'),
    -- 20
    (20, 'ja tack', 'Pålyckevägen 37'),
    (20, 'ja tack', 'Pålyckevägen 50'),
    (20, 'ja tack', 'Klockarevägen 9'),
    (20, 'ja tack', 'Pålyckevägen 48'),
    (20, 'ja tack', 'Pålyckevägen 46'),
    -- 21
    (21, 'ja tack', 'Pålyckevägen 35 F'),
    (21, 'ja tack', 'Pålyckevägen 35 B'),
    (21, 'ja tack', 'Pålyckevägen 35 H'),
    (21, 'ja tack', 'Pålyckevägen 35 I'),
    (21, 'ja tack', 'Pålyckevägen 35 G'),
    (21, 'ja tack', 'Pålyckevägen 35 A'),
    (21, 'ja tack', 'Pålyckevägen 35 C'),
    (21, 'ja tack', 'Pålyckevägen 35 D'),
    (21, 'ja tack', 'Pålyckevägen 35 E'),
    (21, 'ja tack', 'Pålyckevägen 36'),
    (21, 'ja tack', 'Pålyckevägen 38'),
    (21, 'ja tack', 'Pålyckevägen 42'),
    (21, 'ja tack', 'Pålyckevägen 33'),
    (21, 'ja tack', 'Pålyckevägen 40'),
    (21, 'ja tack', 'Pålyckevägen 44'),
    -- 22
    (22, 'ja tack', 'Pålyckevägen 31 F'),
    (22, 'ja tack', 'Pålyckevägen 31 B'),
    (22, 'ja tack', 'Pålyckevägen 31 I'),
    (22, 'ja tack', 'Pålyckevägen 31 H'),
    (22, 'ja tack', 'Pålyckevägen 31 G'),
    (22, 'ja tack', 'Pålyckevägen 31 E'),
    (22, 'ja tack', 'Pålyckevägen 31 C'),
    (22, 'ja tack', 'Pålyckevägen 31 D'),
    (22, 'ja tack', 'Pålyckevägen 31 A'),
    (22, 'ja tack', 'Pålyckevägen 34'),
    (22, 'ja tack', 'Pålyckevägen 32'),
    (22, 'ja tack', 'Pålyckevägen 30'),
    (22, 'ja tack', 'Pålyckevägen 29'),
    (22, 'ja tack', 'Pålyckevägen 28'),
    (22, 'ja tack', 'Pålyckevägen 27'),
    -- 23
    (23, 'ja tack', 'Pålyckevägen 16'),
    (23, 'ja tack', 'Pålyckevägen 12'),
    (23, 'ja tack', 'Pålyckevägen 21'),
    (23, 'ja tack', 'Pålyckevägen 23'),
    (23, 'ja tack', 'Pålyckevägen 26'),
    (23, 'ja tack', 'Pålyckevägen 10'),
    (23, 'ja tack', 'Pålyckevägen 20'),
    (23, 'ja tack', 'Pålyckevägen 22'),
    (23, 'ja tack', 'Pålyckevägen 14'),
    (23, 'ja tack', 'Pålyckevägen 24'),
    (23, 'ja tack', 'Pålyckevägen 18'),
    (23, 'ja tack', 'Pålyckevägen 19'),
    (23, 'ja tack', 'Pålyckevägen 8'),
    (23, 'ja tack', 'Pålyckevägen 25'),
    -- 24
    (24, 'ja tack', 'Pålyckevägen 17'),
    (24, 'ja tack', 'Pålyckevägen 15'),
    (24, 'ja tack', 'Pålyckevägen 13'),
    (24, 'ja tack', 'Pålyckevägen 11'),
    (24, 'ja tack', 'Pålyckevägen 9'),
    (24, 'ja tack', 'Pålyckevägen 6'),
    (24, 'ja tack', 'Pålyckevägen 4'),
    (24, 'ja tack', 'Pålyckevägen 3'),
    -- 25
    (25, 'ja tack', 'Pålyckevägen 5 E'),
    (25, 'ja tack', 'Pålyckevägen 5 D'),
    (25, 'ja tack', 'Pålyckevägen 5 C'),
    (25, 'ja tack', 'Pålyckevägen 5 B'),
    (25, 'ja tack', 'Pålyckevägen 5 A'),
    -- 26
    (26, 'ja tack', 'Pålycke 312'),
    -- 27
    (27, 'ja tack', 'Pålycke 306'),
    -- 28
    (28, 'ja tack', 'Pålycke 304'),
    -- 29
    (29, 'ja tack', 'Pålycke 249'),
    (29, 'ja tack', 'Pålycke 261'),
    (29, 'ja tack', 'Pålycke 272'),
    (29, 'ja tack', 'Fridlevstad 259'),
    (29, 'ja tack', 'Emmeryd 247'),
    (29, 'ja tack', 'Pålycke 276'),
    (29, 'ja tack', 'Pålycke 278'),
    -- 30
    (30, 'ja tack', 'Pålycke Bergliden 1'),
    (30, 'ja tack', 'Pålycke Lindskogen 1'),
    (30, 'ja tack', 'Pålycke 284'),
    (30, 'ja tack', 'Pålycke 286'),
    -- 31
    (31, 'ja tack', 'Emmeryd 262'),
    (31, 'ja tack', 'Emmeryd 256'),
    (31, 'ja tack', 'Emmeryd 254'),
    -- 32
    (32, 'ja tack', 'Emmeryd 250'),
    (32, 'ja tack', 'Emmeryd 248'),
    -- 33
    (33, 'ja tack', 'Emmeryd 240'),
    (33, 'ja tack', 'Emmeryd 238'),
    (33, 'ja tack', 'Emmeryd 234'),
    (33, 'ja tack', 'Emmeryd 236'),
    -- 34
    (34, 'ja tack', 'Uddabygd 225'),
    (34, 'ja tack', 'Uddabygd 232'),
    (34, 'ja tack', 'Uddabygd 229'),
    (34, 'ja tack', 'Uddabygd 219'),
    (34, 'ja tack', 'Uddabygd 221'),
    (34, 'ja tack', 'Uddabygd 223'),
    -- 35
    (35, 'ja tack', 'Emmeryd Hallabäck 215'),
    -- 36
    (36, 'ja tack', 'Uddabygd 228'),
    (36, 'ja tack', 'Uddabygd 226'),
    -- 37
    (37, 'ja tack', 'Uddabygds gård 1'),
    -- 38
    (38, 'ja tack', 'Uddabygd 305'),
    (38, 'ja tack', 'Uddabygd 306'),
    (38, 'ja tack', 'Uddabygd 304'),
    (38, 'ja tack', 'Uddabygd 218'),
    (38, 'ja tack', 'Uddabygd 214'),
    (38, 'ja tack', 'Uddabygd 302'),
    -- 39
    (39, 'ja tack', 'Högklint 3'),
    -- 40
    (40, 'ja tack', 'Högklint 5'),
    -- 41
    (41, 'ja tack', 'Högklint 7'),
    -- 42
    (42, 'ja tack', 'Högklint 9'),
    -- 43
    (43, 'ja tack', 'Uddabygd 209'),
    (43, 'ja tack', 'Uddabygd 207'),
    (43, 'ja tack', 'Bjälkatorp 201'),
    (43, 'ja tack', 'Bjälkatorp 202'),
    -- 44
    (44, 'ja tack', 'Häjetorp 203'),
    (44, 'ja tack', 'Hejetorp 1'),
    (44, 'ja tack', 'Hejetorp 2'),
    -- 45
    (45, 'ja tack', 'Emmas väg 3'),
    (45, 'ja tack', 'Emmas väg 5');
/*  -- 46
 (46, 'ja tack', 'Emmas väg 7'),
 -- 44
 (44, 'ja tack', 'Emmas väg 9'),
 -- 45
 (45, 'ja tack', 'Emmas väg 13'),
 (45, 'ja tack', 'Emmas väg 17'),
 -- 46
 (46, 'ja tack', 'Johannesbergs gård 1'),
 (46, 'ja tack', 'Karlskronavägen 69'),
 (46, 'ja tack', 'Karlskronavägen 71'),
 -- 47
 (47, 'ja tack', 'Allatorpsvägen 1'),
 (47, 'ja tack', 'Allatorpsvägen 3'),
 -- 48
 (48, 'ja tack', 'Allatorpsvägen 5'),
 (48, 'ja tack', 'Allatorpsvägen 7'),
 -- 49
 (49, 'ja tack', 'Källebergsvägen 2'),
 -- 50
 (50, 'ja tack', 'Allatorpsvägen 9'),
 -- 51
 (51, 'ja tack', 'Bergagården 1'),
 (51, 'ja tack', 'Allatorpsvägen 12'),
 -- 52
 (52, 'ja tack', 'Allatorpsvägen 23'),
 -- 53
 (53, 'ja tack', 'Allatorpsvägen 29'),
 -- 54
 (54, 'ja tack', 'Ålabäck 334'),
 (54, 'ja tack', 'Ålabäck 329'),
 -- 55
 (55, 'ja tack', 'Emmeryd 325'),
 (55, 'ja tack', 'Emmeryd 326'),
 (55, 'ja tack', 'Emmeryd 324'),
 (55, 'ja tack', 'Emmeryd 323'),
 (55, 'ja tack', 'Emmeryd 322'),
 -- 56
 (56, 'ja tack', 'Emmeryd 320'),
 (56, 'ja tack', 'Emmeryd Ekholmen 328'),
 -- 57
 (57, 'ja tack', 'Emmeryd 319'),
 -- 58
 (58, 'ja tack', 'Emmeryd 317'),
 -- 59
 (59, 'ja tack', 'Möllegården 313'),
 -- 60
 (60, 'ja tack', 'Emmeryd 121'),
 -- 61
 (61, 'ja tack', 'Emmeryd 119'),
 (61, 'ja tack', 'Emmeryd 148'),
 (61, 'ja tack', 'Emmeryd 134'),
 (61, 'ja tack', 'Emmeryd Lövholma 142'),
 (61, 'ja tack', 'Emmeryd 128'),
 -- 62
 (62, 'ja tack', 'Emmeryd 120'),
 (62, 'ja tack', 'Emmeryd 118'),
 -- 63
 (63, 'ja tack', 'Emmeryd 115'),
 -- 64
 (64, 'ja tack', 'Emmeryd 114'),
 -- 65
 (65, 'ja tack', 'Emmeryd 110'),
 (65, 'ja tack', 'Emmeryd 108'),
 -- 66
 (66, 'ja tack', 'Emmeryd 103'),
 -- 67
 (67, 'ja tack', 'Pålyckehemsvägen 2 A'),
 (67, 'ja tack', 'Pålycke gård 1'),
 -- 68
 (68, 'ja tack', 'Pålyckehemsvägen 7 G'),
 (68, 'ja tack', 'Pålyckehemsvägen 7 F'),
 (68, 'ja tack', 'Pålyckehemsvägen 7 E'),
 (68, 'ja tack', 'Pålyckehemsvägen 7 D'),
 (68, 'ja tack', 'Pålyckehemsvägen 7 C'),
 (68, 'ja tack', 'Pålyckehemsvägen 7 B'),
 (68, 'ja tack', 'Pålyckehemsvägen 7 A'),
 -- 69
 (69, 'ja tack', 'Pålyckehemsvägen 5 D'),
 (69, 'ja tack', 'Pålyckehemsvägen 5 C'),
 (69, 'ja tack', 'Pålyckehemsvägen 5 B'),
 (69, 'ja tack', 'Pålyckehemsvägen 5 A'),
 -- 70
 (70, 'ja tack', 'Pålyckehemsvägen 4 B'),
 (70, 'ja tack', 'Pålyckehemsvägen 4 C'),
 (70, 'ja tack', 'Pålyckehemsvägen 4 A'),
 -- 71
 (71, 'nej tack', 'Pålyckehemsvägen 6 B'),
 (71, 'nej tack', 'Pålyckehemsvägen 6 C'),
 (71, 'nej tack', 'Pålyckehemsvägen 6 D'),
 (71, 'nej tack', 'Pålyckehemsvägen 6 E'),
 -- 72
 (72, 'ja tack', 'Pålyckevägen 41'),
 (72, 'ja tack', 'Pålyckevägen 39'),
 -- 73
 (73, 'ja tack', 'Björkerydsvägen 3'),
 (73, 'ja tack', 'Björkerydsvägen 8'),
 (73, 'ja tack', 'Björkerydsvägen 6'),
 (73, 'ja tack', 'Björkerydsvägen 4'),
 (73, 'ja tack', 'Björkerydsvägen 1'),
 -- 74
 (74, 'ja tack', 'Hallbäcks väg 8'),
 (74, 'ja tack', 'Hallbäcks väg 7'),
 (74, 'ja tack', 'Hallbäcks väg 6'),
 (74, 'ja tack', 'Hallbäcks väg 5'),
 (74, 'ja tack', 'Hallbäcks väg 4'),
 (74, 'ja tack', 'Hallbäcks väg 3'),
 -- 75
 (75, 'ja tack', 'Joungs väg 8'),
 (75, 'ja tack', 'Joungs väg 7'),
 (75, 'ja tack', 'Joungs väg 6'),
 (75, 'ja tack', 'Joungs väg 5'),
 (75, 'ja tack', 'Joungs väg 4'),
 (75, 'ja tack', 'Joungs väg 3'),
 (75, 'ja tack', 'Joungs väg 2'),
 (75, 'ja tack', 'Joungs väg 1'),
 -- 76
 (76, 'ja tack', 'Coldings väg 9'),
 (76, 'ja tack', 'Coldings väg 14'),
 (76, 'ja tack', 'Coldings väg 16'),
 (76, 'ja tack', 'Coldings väg 18'),
 (76, 'ja tack', 'Coldings väg 11'),
 -- 77
 (77, 'ja tack', 'Coldings väg 12'),
 (77, 'ja tack', 'Coldings väg 10'),
 -- 78
 (78, 'ja tack', 'Coldings väg 1'),
 (78, 'ja tack', 'Coldings väg 3'),
 (78, 'ja tack', 'Coldings väg 2'),
 (78, 'ja tack', 'Coldings väg 4'),
 (78, 'ja tack', 'Coldings väg 6'),
 (78, 'ja tack', 'Coldings väg 8'),
 -- 79
 (79, 'ja tack', 'Hovlunds väg 1'),
 (79, 'ja tack', 'Hovlunds väg 3'),
 -- 80
 (80, 'ja tack', 'Flyborgs väg 5'),
 (80, 'ja tack', 'Flyborgs väg 7'),
 (80, 'ja tack', 'Flyborgs väg 6'),
 (80, 'ja tack', 'Flyborgs väg 8'),
 (80, 'ja tack', 'Flyborgs väg 4'),
 -- 81
 (81, 'ja tack', 'Flyborgs väg 10'),
 (81, 'ja tack', 'Flyborgs väg 12'),
 -- 82
 (82, 'ja tack', 'Hovlunds väg 5'),
 (82, 'ja tack', 'Hovlunds väg 7'),
 (82, 'ja tack', 'Hovlunds väg 8'),
 (82, 'ja tack', 'Hovlunds väg 10'),
 (82, 'ja tack', 'Hovlunds väg 9'),
 (82, 'ja tack', 'Hovlunds väg 6'),
 -- 83
 (83, 'ja tack', 'Gyllenskepps väg 21'),
 (83, 'ja tack', 'Gyllenskepps väg 19'),
 (83, 'ja tack', 'Gyllenskepps väg 18'),
 (83, 'ja tack', 'Gyllenskepps väg 17'),
 (83, 'ja tack', 'Gyllenskepps väg 16'),
 (83, 'ja tack', 'Gyllenskepps väg 14'),
 (83, 'ja tack', 'Gyllenskepps väg 12'),
 -- 84
 (84, 'ja tack', 'Gyllenskepps väg 10'),
 (84, 'ja tack', 'Gyllenskepps väg 8'),
 -- 85
 (85, 'ja tack', 'Hovlunds väg 12'),
 (85, 'ja tack', 'Hovlunds väg 11'),
 -- 86
 (86, 'ja tack', 'Gyllenskepps väg 1'),
 (86, 'ja tack', 'Gyllenskepps väg 3'),
 (86, 'ja tack', 'Gyllenskepps väg 5'),
 (86, 'ja tack', 'Gyllenskepps väg 7'),
 (86, 'ja tack', 'Gyllenskepps väg 9'),
 -- 87
 (87, 'ja tack', 'Björkerydsvägen 18 A'),
 (87, 'ja tack', 'Björkerydsvägen 18 B'),
 (87, 'ja tack', 'Björkerydsvägen 18 C'),
 (87, 'ja tack', 'Björkerydsvägen 18 D'),
 (87, 'ja tack', 'Björkerydsvägen 18 E'),
 (87, 'ja tack', 'Björkerydsvägen 18 F'),
 (87, 'ja tack', 'Björkerydsvägen 20 A'),
 (87, 'ja tack', 'Björkerydsvägen 20 B'),
 (87, 'ja tack', 'Björkerydsvägen 20 C'),
 (87, 'ja tack', 'Björkerydsvägen 22 A'),
 (87, 'ja tack', 'Björkerydsvägen 22 B'),
 (87, 'ja tack', 'Björkerydsvägen 22 C'),
 (87, 'ja tack', 'Björkerydsvägen 22 D'),
 (87, 'ja tack', 'Björkerydsvägen 22 E'),
 (87, 'ja tack', 'Björkerydsvägen 22 F'),
 -- 88
 (88, 'ja tack', 'Bagers väg 1'),
 (88, 'ja tack', 'Bagers väg 2'),
 (88, 'ja tack', 'Bagers väg 4'),
 (88, 'ja tack', 'Bagers väg 6'),
 (88, 'ja tack', 'Bagers väg 3'),
 -- 89
 (89, 'ja tack', 'Bagers väg 8'),
 (89, 'ja tack', 'Bagers väg 10'),
 (89, 'ja tack', 'Bagers väg 5'),
 (89, 'ja tack', 'Bagers väg 7'),
 -- 90
 (90, 'ja tack', 'Bagers väg 18'),
 (90, 'ja tack', 'Bagers väg 16'),
 (90, 'ja tack', 'Bagers väg 15'),
 (90, 'ja tack', 'Bagers väg 14'),
 (90, 'ja tack', 'Bagers väg 13'),
 (90, 'ja tack', 'Bagers väg 12'),
 (90, 'ja tack', 'Bagers väg 11'),
 (90, 'ja tack', 'Bagers väg 9'),
 -- 91
 (91, 'ja tack', 'Björkerydsvägen 39'),
 -- 92
 (92, 'ja tack', 'Björkerydsvägen 35'),
 -- 93
 (93, 'ja tack', 'Björkerydsvägen 30'),
 (93, 'ja tack', 'Björkerydsvägen 28'),
 -- 94
 (94, 'ja tack', 'Björkerydsvägen 27'),
 (94, 'ja tack', 'Björkerydsvägen 26'),
 -- 95
 (95, 'ja tack', 'Björkerydsvägen 25'),
 -- 96
 (96, 'ja tack', 'Harstorpsvägen 4'),
 (96, 'ja tack', 'Harstorpsvägen 1'),
 -- 97
 (97, 'ja tack', 'Harstorpsvägen 8'),
 (97, 'ja tack', 'Harstorpsvägen 7'),
 -- 98
 (98, 'ja tack', 'Harstorpsvägen 12'),
 (98, 'ja tack', 'Harstorpsvägen 13'),
 -- 99
 (99, 'ja tack', 'Harstorpsvägen 18 A'),
 (99, 'ja tack', 'Harstorpsvägen 18 B'),
 -- 100
 (100, 'ja tack', 'Harstorpsvägen 17'),
 (100, 'ja tack', 'Harstorpsvägen 21'),
 -- 101
 (101, 'ja tack', 'Harstorpsvägen 19'),
 -- 102
 (102, 'ja tack', 'Harstorpsvägen 25'),
 (102, 'ja tack', 'Harstorpsvägen 22'),
 -- 103
 (103, 'ja tack', 'Harstorpsvägen 29'),
 -- 104
 (104, 'ja tack', 'Harstorpsvägen 33'),
 -- 105
 (105, 'ja tack', 'Harstorpsvägen 35'),
 (105, 'ja tack', 'Harstorpsvägen 39'),
 -- 106
 (106, 'ja tack', 'Harstorpsvägen 26'),
 -- 107
 (107, 'ja tack', 'Harstorpsvägen 41'),
 (107, 'ja tack', 'Harstorpsvägen 28'),
 -- 108
 (108, 'ja tack', 'Harstorpsvägen 32'),
 (108, 'ja tack', 'Harstorpsvägen 34'),
 -- 109
 (109, 'ja tack', 'Harstorpsvägen 40'),
 -- 110
 (110, 'ja tack', 'Harstorpsvägen 51'),
 -- 111
 (111, 'ja tack', 'Harstorpsvägen 57'),
 (111, 'ja tack', 'Harstorpsvägen 48'),
 -- 112
 (112, 'ja tack', 'Harstorpsvägen 61'),
 (112, 'ja tack', 'Harstorpsvägen 52'),
 -- 113
 (113, 'ja tack', 'Harstorp 102'),
 -- 114
 (114, 'ja tack', 'Harstorp 107'),
 (114, 'ja tack', 'Harstorp 108'),
 -- 115
 (115, 'ja tack', 'Bränteknuva 115'),
 -- 116
 (116, 'ja tack', 'Bränteknuva 114'),
 -- 117
 (117, 'ja tack', 'Bränteknuva 123'),
 (117, 'ja tack', 'Bränteknuva 125'),
 (117, 'ja tack', 'Bränteknuva 120'),
 (117, 'ja tack', 'Bränteknuva 118'),
 -- 118
 (118, 'ja tack', 'Bränteknuva 129'),
 (118, 'ja tack', 'Bränteknuva 122'),
 -- 119
 (119, 'ja tack', 'Bränteknuva 124'),
 -- 120
 (120, 'ja tack', 'Bränteknuva 133'),
 (120, 'ja tack', 'Bränteknuva 126'),
 -- 121
 (121, 'ja tack', 'Bränteknuva 135'),
 (121, 'ja tack', 'Bränteknuva 130'),
 (121, 'ja tack', 'Bränteknuva 128'),
 -- 122
 (122, 'ja tack', 'Bränteknuva 132'),
 -- 123
 (123, 'ja tack', 'Bränteknuva 137'),
 -- 124
 (124, 'ja tack', 'Bränteknuva 139'),
 -- 125
 (125, 'ja tack', 'Bränteknuva 141'),
 -- 126
 (126, 'ja tack', 'Målatorp 208'),
 -- 127
 (127, 'ja tack', 'Målatorp 209'),
 -- 128
 (128, 'ja tack', 'Bränteknuva 213'),
 -- 129
 (129, 'ja tack', 'Bränteknuva 219'),
 (129, 'ja tack', 'Bränteknuva 223'),
 (129, 'ja tack', 'Bränteknuva 225'),
 -- 130
 (130, 'ja tack', 'Bränteknuva 227'),
 -- 131
 (131, 'ja tack', 'Bränteknuva 229'),
 -- 132
 (132, 'ja tack', 'Bränteknuva 230'),
 -- 133
 (133, 'ja tack', 'Bränteknuva 238'),
 -- 134
 (134, 'ja tack', 'Björkerydsvägen 55'),
 (134, 'ja tack', 'Björkerydsvägen 53'),
 -- 135
 (135, 'ja tack', 'Björkerydsvägen 54'),
 -- 136
 (136, 'ja tack', 'Björkerydsvägen 56'),
 (136, 'ja tack', 'Björkerydsvägen 58'),
 -- 137
 (137, 'ja tack', 'Björkerydsvägen 64'),
 (137, 'ja tack', 'Björkerydsvägen 66'),
 (137, 'ja tack', 'Björkerydsvägen 68'),
 -- 138
 (138, 'ja tack', 'Björkerydsvägen 69'),
 (138, 'ja tack', 'Björkerydsvägen 73'),
 (138, 'ja tack', 'Björkerydsvägen 74'),
 -- 139
 (139, 'ja tack', 'Björkerydsvägen 78'),
 -- 140
 (140, 'ja tack', 'Krösnavägen 3'),
 (140, 'ja tack', 'Krösnavägen 8'),
 -- 141
 (141, 'ja tack', 'Björkerydsvägen 80'),
 (141, 'ja tack', 'Björkerydsvägen 84'),
 (141, 'ja tack', 'Björkerydsvägen 83'),
 (141, 'ja tack', 'Björkerydsvägen 79'),
 (141, 'ja tack', 'Björkerydsvägen 85'),
 -- 142
 (142, 'ja tack', 'Björkeryd 113'),
 -- 143
 (143, 'ja tack', 'Björkeryd 117'),
 (143, 'ja tack', 'Björkeryd 119'),
 (143, 'ja tack', 'Björkeryd 121'),
 -- 144
 (144, 'ja tack', 'Björkeryd 210'),
 (144, 'ja tack', 'Björkeryd 212'),
 (144, 'ja tack', 'Björkeryd 208'),
 -- 145
 (145, 'ja tack', 'Björkeryd 206'),
 (145, 'ja tack', 'Björkeryd 204'),
 (145, 'ja tack', 'Björkeryd 202'),
 -- 146
 (146, 'ja tack', 'Björkeryd 123'),
 (146, 'ja tack', 'Björkeryd 106'),
 -- 147
 (147, 'ja tack', 'Björkeryd 108'),
 (147, 'ja tack', 'Björkeryd 127'),
 -- 148
 (148, 'ja tack', 'Björkeryd 114'),
 (148, 'ja tack', 'Björkeryd 129'),
 (148, 'ja tack', 'Björkeryd 131'),
 (148, 'ja tack', 'Björkeryd 116'),
 -- 149
 (149, 'ja tack', 'Björkeryd 135'),
 -- 150
 (150, 'ja tack', 'Björkeryd 141'),
 (150, 'ja tack', 'Björkeryd 143'),
 (150, 'ja tack', 'Björkeryd 145'),
 (150, 'ja tack', 'Björkeryd 147'),
 -- 151
 (151, 'ja tack', 'Kumlehallar 101'),
 (151, 'ja tack', 'Kumlehallar 113'),
 (151, 'ja tack', 'Kumlehallar 104'),
 (151, 'ja tack', 'Kumlehallar 103'),
 (151, 'ja tack', 'Kumlehallar 111'),
 -- 152
 (152, 'ja tack', 'Karsabäck 205'),
 (152, 'ja tack', 'Karsabäck 203'),
 (152, 'ja tack', 'Karsabäcks gård 1'),
 -- 153
 (153, 'ja tack', 'Björkeryd 101'),
 (153, 'ja tack', 'Björkeryd 103'),
 -- 154
 (154, 'ja tack', 'Björkeryd 105'),
 (154, 'ja tack', 'Björkeryd 109'),
 -- 155
 (155, 'ja tack', 'Karsabäck 211'),
 -- 156
 (156, 'ja tack', 'Karsabäck 215'),
 -- 157
 (157, 'ja tack', 'Karsabäck 219'),
 -- 158
 (158, 'ja tack', 'Larum 301'),
 -- 159
 (159, 'ja tack', 'Larum 304'),
 -- 160
 (160, 'ja tack', 'Larum 308'),
 -- 161
 (161, 'ja tack', 'Larum 310'),
 (161, 'ja tack', 'Larum 312'),
 -- 162
 (162, 'ja tack', 'Larum 319'),
 -- 163
 (163, 'ja tack', 'Larum 305'),
 (163, 'ja tack', 'Larum 307'),
 -- 164
 (164, 'ja tack', 'Larum 311'),
 -- 165
 (165, 'ja tack', 'Larum 315'),
 (165, 'ja tack', 'Stegerydsvägen 32'),
 (165, 'ja tack', 'Stegerydsvägen 35'),
 (165, 'ja tack', 'Stegerydsvägen 37'),
 (165, 'ja tack', 'Stegerydsvägen 41'),
 -- 166
 (166, 'ja tack', 'Larum 336'),
 -- 167
 (167, 'ja tack', 'Larum Glädjeryd 329'),
 (167, 'ja tack', 'Larum 316'),
 (167, 'ja tack', 'Larum 324'),
 (167, 'ja tack', 'Larum 326'),
 -- 168
 (168, 'ja tack', 'Larum 323'),
 -- 169
 (169, 'ja tack', 'Stuveryd 113'),
 (169, 'ja tack', 'Stuveryd 108'),
 (169, 'ja tack', 'Stuveryd 106'),
 -- 170
 (170, 'ja tack', 'Stuveryd 105'),
 (170, 'ja tack', 'Stuveryd 104'),
 -- 171
 (171, 'ja tack', 'Stuveryd 103'),
 (171, 'ja tack', 'Liatorpsvägen 50'),
 -- 172
 (172, 'ja tack', 'Björkeryd 329'),
 -- 173
 (173, 'ja tack', 'Björkeryd 327'),
 -- 174
 (174, 'ja tack', 'Björkeryd 328'),
 -- 175
 (175, 'ja tack', 'Björkeryd 326'),
 -- 176
 (176, 'ja tack', 'Björkeryd 320'),
 (176, 'ja tack', 'Björkeryd 318'),
 (176, 'ja tack', 'Björkeryd 322'),
 -- 177
 (177, 'ja tack', 'Björkeryd 312'),
 (177, 'ja tack', 'Björkeryd 310'),
 (177, 'ja tack', 'Björkeryd 306'),
 (177, 'ja tack', 'Björkeryd 304'),
 -- 178
 (178, 'ja tack', 'Björkeryd 302 C'),
 (178, 'ja tack', 'Björkeryd 302 B'),
 (178, 'ja tack', 'Björkeryd 302'),
 -- 179
 (179, 'ja tack', 'Björkeryd 149'),
 -- 180
 (180, 'ja tack', 'Spångarna 1'),
 (180, 'ja tack', 'Spångarna 2'),
 -- 181
 (181, 'ja tack', 'Björkeryd 410') (181, 'ja tack', 'Mommelycke 102'),
 (181, 'ja tack', 'Björkeryd 408'),
 (181, 'ja tack', 'Björkeryd 406'),
 (181, 'ja tack', 'Björkeryd 404'),
 -- 182
 (182, 'ja tack', 'Mommelycke 104'),
 (182, 'ja tack', 'Mommelycke 108'),
 (182, 'ja tack', 'Mommelycke 106'),
 -- 183
 (183, 'ja tack', 'Mommelycke 110'),
 (183, 'ja tack', 'Mommelycke 112'),
 -- 184
 (184, 'ja tack', 'Mommelycke 114'),
 (184, 'ja tack', 'Mommelycke 116'),
 (184, 'ja tack', 'Mommelycke 118'),
 -- 185
 (185, 'ja tack', 'Mommelycke 120'),
 (185, 'ja tack', 'Mommelycke 203'),
 (185, 'ja tack', 'Mommelycke 217'),
 -- 186
 (186, 'ja tack', 'Mommelycke 126'),
 -- 187
 (187, 'ja tack', 'Mommelycke 130'),
 (187, 'ja tack', 'Mommelycke 134'),
 (187, 'ja tack', 'Mommelycke 136'),
 (187, 'ja tack', 'Mommelycke 138'),
 (187, 'ja tack', 'Mommelycke 140'),
 -- 188
 (188, 'ja tack', 'Mommelycke 144'),
 (188, 'ja tack', 'Mommelycke Lunnagården 145'),
 -- 189
 (189, 'ja tack', 'Mommelycke Häggetorp 1'),
 (189, 'ja tack', 'Höryda 403'),
 (189, 'ja tack', 'Höryda 407'),
 (189, 'ja tack', 'Höryda 409'),
 (189, 'ja tack', 'Höryda 410'),
 -- 190
 (190, 'ja tack', 'Höryda 103'),
 -- 191
 (191, 'ja tack', 'Höryda 105'),
 -- 192
 (192, 'ja tack', 'Höryda 209'),
 (192, 'ja tack', 'Höryda 204'),
 -- 193
 (193, 'ja tack', 'Höryda 202'),
 (193, 'ja tack', 'Höryda 211'),
 (193, 'ja tack', 'Höryda 212'),
 (193, 'ja tack', 'Höryda 208'),
 -- 194
 (194, 'ja tack', 'Höryda Rävakärr 1'),
 -- 195
 (195, 'ja tack', 'Höryda 136'),
 (195, 'ja tack', 'Höryda 140'),
 -- 196
 (196, 'ja tack', 'Höryda 310'),
 -- 197
 (197, 'ja tack', 'Höryda 308'),
 (197, 'ja tack', 'Höryda 304'),
 -- 198
 (198, 'ja tack', 'Höryda 302'),
 (198, 'ja tack', 'Höryda 301'),
 -- 199
 (199, 'ja tack', 'Höryda Norrgården 132'),
 (199, 'ja tack', 'Höryda 133'),
 (199, 'ja tack', 'Höryda 131'),
 -- 200
 (200, 'ja tack', 'Höryda Åsagården 130'),
 -- 201
 (201, 'ja tack', 'Höryda 124'),
 (201, 'ja tack', 'Höryda 118'),
 (201, 'ja tack', 'Höryda 122'),
 -- 202
 (202, 'ja tack', 'Höryda Samsagården 113'),
 (202, 'ja tack', 'Höryda Backagården 111'),
 -- 203
 (203, 'ja tack', 'Höryda 115'),
 (203, 'ja tack', 'Höryda 125'),
 -- 204
 (204, 'ja tack', 'Höryda 108'),
 (204, 'ja tack', 'Höryda Rasegården 106'),
 -- 205
 (205, 'ja tack', 'Humlabackavägen 2'),
 -- 206
 (206, 'ja tack', 'Humlabackavägen 1'),
 (206, 'ja tack', 'Mommelycke 345'),
 -- 207
 (207, 'ja tack', 'Mommelycke 346'),
 -- 208
 (208, 'ja tack', 'Mommelycke 354'),
 -- 209
 (209, 'ja tack', 'Gamla Stadsvägen 6'),
 (209, 'ja tack', 'Gamla Stadsvägen 15'),
 (209, 'ja tack', 'Gamla Stadsvägen 4'),
 -- 210
 (210, 'ja tack', 'Perstorp 104'),
 (210, 'ja tack', 'Perstorp 108'),
 (210, 'ja tack', 'Perstorp 106'),
 (210, 'ja tack', 'Perstorp 110'),
 -- 211
 (211, 'ja tack', 'Perstorp 114'),
 -- 212
 (212, 'ja tack', 'Perstorp 111'),
 (212, 'ja tack', 'Perstorp 113'),
 -- 213
 (213, 'ja tack', 'Perstorp 117'),
 (213, 'ja tack', 'Perstorp 120'),
 -- 214
 (214, 'ja tack', 'Perstorp 129'),
 (214, 'ja tack', 'Perstorp 131'),
 (214, 'ja tack', 'Perstorp 124'),
 (214, 'ja tack', 'Perstorp 125'),
 (214, 'ja tack', 'Perstorp 121'),
 -- 215
 (215, 'ja tack', 'Bottnanstorp 130'),
 -- 216
 (216, 'ja tack', 'Bottnanstorp 133'),
 (216, 'ja tack', 'Bottnanstorp 137'),
 -- 217
 (217, 'ja tack', 'Bottnanstorp 138'),
 -- 218
 (218, 'ja tack', 'Bottnanstorp 141'),
 -- 219
 (219, 'ja tack', 'Askunga 424'),
 (219, 'ja tack', 'Askunga 422'),
 -- 220
 (220, 'ja tack', 'Askunga 425'),
 -- 221
 (221, 'ja tack', 'Askunga 423'),
 -- 222
 (222, 'ja tack', 'Askunga 409'),
 -- 223
 (223, 'ja tack', 'Bostorp 410'),
 (223, 'ja tack', 'Bostorp Tuvehagen 405'),
 -- 224
 (224, 'ja tack', 'Bostorp 406'),
 (224, 'ja tack', 'Bostorp 402'),
 -- 225
 (225, 'ja tack', 'Bostorp 401'),
 -- 226
 (226, 'ja tack', 'Tvingelshed 318'),
 -- 227
 (227, 'ja tack', 'Tvingelshed 329'),
 (227, 'ja tack', 'Tvingelshed 327'),
 -- 228
 (228, 'ja tack', 'Tvingelshed 324'),
 -- 229
 (229, 'ja tack', 'Tvingelshed 322'),
 (229, 'ja tack', 'Tvingelshed 323'),
 -- 230
 (230, 'ja tack', 'Tvingelshed 319'),
 -- 231
 (231, 'ja tack', 'Buskaboda 686'),
 -- 232
 (232, 'ja tack', 'Buskaboda 688'),
 (232, 'ja tack', 'Buskaboda 690'),
 -- 233
 (233, 'ja tack', 'Tvingelshed 317'),
 -- 234
 (234, 'ja tack', 'Tvingelshed 311'),
 (234, 'ja tack', 'Tvingelshed 310'),
 (234, 'ja tack', 'Tvingelshed 309'),
 -- 235
 (235, 'ja tack', 'Tvingelshed 303'),
 (235, 'ja tack', 'Tvingelshed 304'),
 -- 236
 (236, 'ja tack', 'Onansbygd 103'),
 -- 237
 (237, 'ja tack', 'Sjötorp Sjöholmen 1'),
 -- 238
 (238, 'ja tack', 'Hinsemåla 141'),
 (238, 'ja tack', 'Hinsemåla 148'),
 -- 239
 (239, 'ja tack', 'Hinsemåla 139'),
 -- 240
 (240, 'ja tack', 'Hinsemåla 144'),
 -- 241
 (241, 'ja tack', 'Ryd 131'),
 -- 242
 (242, 'ja tack', 'Ryd 140'),
 (242, 'ja tack', 'Ryd 136'),
 (242, 'ja tack', 'Ryd 132'),
 (242, 'ja tack', 'Ryd 128'),
 (242, 'ja tack', 'Ryd 127'),
 (242, 'ja tack', 'Ryd 126'),
 (242, 'ja tack', 'Ryd 124'),
 -- 243
 (243, 'ja tack', 'Skrävsmåla 208'),
 -- 244
 (244, 'ja tack', 'Skrävsmåla 203'),
 -- 245
 (245, 'ja tack', 'Skrävsmåla 204'),
 (245, 'ja tack', 'Skrävsmåla 210'),
 -- 246
 (246, 'ja tack', 'Ryd 116'),
 -- 247
 (247, 'ja tack', 'Onansbygd 106'),
 -- 248
 (248, 'ja tack', 'Onansbygd 102'),
 -- 249
 (249, 'ja tack', 'Norra Bostorp 291'),
 (249, 'ja tack', 'Norra Bostorp 290'),
 (249, 'ja tack', 'Norra Bostorp 288'),
 (249, 'ja tack', 'Norra Bostorp 286'),
 (249, 'ja tack', 'Norra Bostorp 276'),
 -- 250
 (250, 'ja tack', 'Bostorp 270'),
 (250, 'ja tack', 'Bostorp 268'),
 (250, 'ja tack', 'Bostorp 266'),
 -- 251
 (251, 'ja tack', 'Bostorp 262'),
 (251, 'ja tack', 'Bostorp 260'),
 -- 252
 (252, 'ja tack', 'Bostorp 255'),
 -- 253
 (253, 'ja tack', 'Bostorp 254'),
 (253, 'ja tack', 'Bostorp 252'),
 (253, 'ja tack', 'Bostorp 248'),
 -- 254
 (254, 'ja tack', 'Bostorp 240'),
 -- 255
 (255, 'ja tack', 'Bostorp 238'),
 -- 256
 (256, 'ja tack', 'Bostorp 234'),
 (256, 'ja tack', 'Bostorp 232'),
 (256, 'ja tack', 'Bostorp 230'),
 -- 257
 (257, 'ja tack', 'Bostorp 229'),
 (257, 'ja tack', 'Bostorp 227'),
 -- 258
 (258, 'ja tack', 'Södra Bostorp 218'),
 (258, 'ja tack', 'Södra Bostorp 224'),
 (258, 'ja tack', 'Bostorp 308'),
 (258, 'ja tack', 'Södra Bostorp 216'),
 (258, 'ja tack', 'Södra Bostorp Lindesberg 223'),
 -- 259
 (259, 'ja tack', 'Bostorp Ljungbyholm 311'),
 (259, 'ja tack', 'Bostorp 309'),
 -- 260
 (260, 'ja tack', 'Södra Bostorp 212'),
 -- 261
 (261, 'ja tack', 'Södra Bostorp 210'),
 (261, 'ja tack', 'Södra Bostorp 221'),
 (261, 'ja tack', 'Södra Bostorp 219'),
 (261, 'ja tack', 'Södra Bostorp 217'),
 (261, 'ja tack', 'Södra Bostorp 215'),
 -- 262
 (262, 'ja tack', 'Södra Bostorp 208'),
 (262, 'ja tack', 'Södra Bostorp 211'),
 (262, 'ja tack', 'Södra Bostorp 205'),
 (262, 'ja tack', 'Södra Bostorp 207'),
 -- 263
 (263, 'ja tack', 'Södra Bostorp 113'),
 -- 264
 (264, 'ja tack', 'Södra Bostorp 115'),
 (264, 'ja tack', 'Södra Bostorp 121'),
 (264, 'ja tack', 'Södra Bostorp 116'),
 -- 265
 (265, 'ja tack', 'Södra Bostorp 120'),
 (265, 'ja tack', 'Södra Bostorp 122'),
 (265, 'ja tack', 'Södra Bostorp 125'),
 (265, 'ja tack', 'Södra Bostorp Fället 129'),
 -- 266
 (266, 'ja tack', 'Södra Bostorp 104'),
 -- 267
 (267, 'ja tack', 'Södra Bostorp 105'),
 (267, 'ja tack', 'Södra Bostorp 103'),
 (267, 'ja tack', 'Södra Bostorp 102'),
 (267, 'ja tack', 'Södra Bostorp 101'),
 (267, 'ja tack', 'Södra Bostorp 202'),
 -- 268
 (268, 'ja tack', 'Emmeryd Höganäs 505'),
 (268, 'ja tack', 'Emmeryd Persborg 509'),
 (268, 'ja tack', 'Emmeryd 504'),
 -- 269
 (269, 'ja tack', 'Bjälkatorpsvägen 14'),
 -- 270
 (270, 'ja tack', 'Bjälkatorpsvägen 8'),
 -- 271
 (271, 'ja tack', 'Uddabygd Grönadal 1'),
 -- 272
 (272, 'ja tack', 'Bjälkatorpsvägen 41'),
 (272, 'ja tack', 'Bjälkatorpsvägen 39'),
 (272, 'ja tack', 'Bjälkatorpsvägen 37'),
 (272, 'ja tack', 'Bjälkatorpsvägen 35'),
 (272, 'ja tack', 'Bjälkatorpsvägen 33'),
 -- 273
 (273, 'ja tack', 'Bjälkatorpsvägen 1'),
 (273, 'ja tack', 'Bjälkatorpsvägen 5'),
 (273, 'ja tack', 'Bjälkatorpsvägen 7'),
 (273, 'ja tack', 'Bjälkatorpsvägen 9'),
 -- 274
 (274, 'ja tack', 'Bjälkatorpsvägen 15'),
 (274, 'ja tack', 'Bjälkatorpsvägen 17'),
 (274, 'ja tack', 'Bjälkatorpsvägen 19'),
 -- 275
 (275, 'ja tack', 'Bjälkatorpsvägen 21'),
 (275, 'ja tack', 'Bjälkatorpsvägen 23'),
 (275, 'ja tack', 'Bjälkatorpsvägen 25'),
 (275, 'ja tack', 'Bjälkatorpsvägen 27'),
 -- 276
 (276, 'ja tack', 'Uddabygd 112'),
 (276, 'ja tack', 'Uddabygd 107'),
 (276, 'ja tack', 'Uddabygd 110'),
 (276, 'ja tack', 'Uddabygd 115'),
 -- 277
 (277, 'ja tack', 'Bjälkatorp 104'),
 (277, 'ja tack', 'Bjälkatorp Lugnet 1'),
 (277, 'ja tack', 'Bjälkatorp Mariedal 1'),
 -- 278
 (278, 'ja tack', 'Bjälkatorp gård 1');
 */