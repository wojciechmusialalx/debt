INSERT INTO user(id, role, email, first_name, last_name, password)
 VALUES
 (1, 'ADMIN', 't1@email.com', 'Wojciech', 'Musial', '$2a$10$bUhiQH1IVW4HeGGJVxPFFeTXPPsD5p2uhmjkMR/nuSy6uRpcd4OH2'),
 (2, 'ADMIN', 't2@email.com', 'Marcin', 'Kowalski', '$2a$10$bUhiQH1IVW4HeGGJVxPFFeTXPPsD5p2uhmjkMR/nuSy6uRpcd4OH2'),
 (3, 'USER', 't3@email.com', 'Marek', 'Marecki', '$2a$10$bUhiQH1IVW4HeGGJVxPFFeTXPPsD5p2uhmjkMR/nuSy6uRpcd4OH2'),
 (4, 'USER', 't4@email.com', 'Zbigniew', 'Nowak', '$2a$10$bUhiQH1IVW4HeGGJVxPFFeTXPPsD5p2uhmjkMR/nuSy6uRpcd4OH2'),
 (5, 'USER', 't5@email.com', 'Sylwia', 'Wisniewska', '$2a$10$bUhiQH1IVW4HeGGJVxPFFeTXPPsD5p2uhmjkMR/nuSy6uRpcd4OH2'),
 (6, 'USER', 't6@email.com', 'Klaudia', 'Kowalska', '$2a$10$bUhiQH1IVW4HeGGJVxPFFeTXPPsD5p2uhmjkMR/nuSy6uRpcd4OH2');

INSERT INTO debtor(id, email, first_name, last_name)
 VALUES
 (1, 'd1@email.com', 'Zuzanna', 'Kowalska'),
 (2, 'd2@email.com', 'Marian', 'Mariacki'),
 (3, 'd3@email.com', 'Artur', 'Abacki'),
 (4, 'd4@email.com', 'Zenon', 'Kabacki'),
 (5, 'd5@email.com', 'Tomasz', 'Tomaszeski'),
 (6, 'd6@email.com', 'Ewa', 'Nowak');

INSERT INTO debt(amount, created_at, paid_off, debtor_id, lender_id) VALUES
(199.99, '2019-03-08', 0, 1, 1),
(980, '2019-03-02', 0, 1, 2),
(1000, '2019-02-08', 0, 1, 3),
(1299.99, '2018-03-08', 0, 2, 2),
(99.99, '2018-12-08', 0, 3, 3),
(79.99, '2019-01-08', 0, 4, 4),
(199.99, '2019-01-12', 0, 5, 5);