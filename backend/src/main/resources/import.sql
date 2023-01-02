INSERT INTO tb_user (name, email, password) VALUES ('Esnayder Garcia', 'esnay@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Mario Bora Bill', 'bill@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Mario Romeu', 'romeu@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('HTML e CSS', 'https://upload.wikimedia.org/wikipedia/commons/1/10/CSS3_and_HTML5_logos_and_wordmarks.svg', 'https://upload.wikimedia.org/wikipedia/commons/5/56/Html_and_css.png');

INSERT INTO tb_offer (editon, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-12-29T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-12-29T03:00:00Z', 1);
INSERT INTO tb_offer (editon, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2023-02-10T03:00:00Z', TIMESTAMP WITH TIME ZONE '2024-02-10T03:00:00Z', 1);


INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha HTML e CSS', 'Trilha principal em HTML e CSS', 1, 'https://upload.wikimedia.org/wikipedia/commons/1/10/CSS3_and_HTML5_logos_and_wordmarks.svg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Fórum', 'Forúm para tirar suas dúvidas', 2, 'https://upload.wikimedia.org/wikipedia/commons/1/10/CSS3_and_HTML5_logos_and_wordmarks.svg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://upload.wikimedia.org/wikipedia/commons/1/10/CSS3_and_HTML5_logos_and_wordmarks.svg', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, prerequisite_id, resource_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://upload.wikimedia.org/wikipedia/commons/1/10/CSS3_and_HTML5_logos_and_wordmarks.svg', null, 1);
INSERT INTO tb_section (title, description, position, img_uri, prerequisite_id, resource_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar', 2, 'https://upload.wikimedia.org/wikipedia/commons/1/10/CSS3_and_HTML5_logos_and_wordmarks.svg', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, prerequisite_id, resource_id) VALUES ('Capítulo 3', 'Neste capítulo vamos Encerrar', 3, 'https://upload.wikimedia.org/wikipedia/commons/1/10/CSS3_and_HTML5_logos_and_wordmarks.svg', 2, 1);
  