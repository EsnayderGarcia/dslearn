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
  
INSERT INTO tb_enrollment (enroll_moment, refund_moment, available, only_update, offer_id, user_id) VALUES (TIMESTAMP WITH TIME ZONE '2022-12-15T13:30:00Z', null, true, false, 1, 1);
INSERT INTO tb_enrollment (enroll_moment, refund_moment, available, only_update, offer_id, user_id) VALUES (TIMESTAMP WITH TIME ZONE '2022-12-18T16:00:00Z', null, true, false, 1, 2);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do Capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Material de Apoio da Aula 1', 'https://i.ytimg.com/an_webp/D4frmIHAxEY/mqdefault_6s.webp?du=3000&sqp=CPLi0J0G&rs=AOn4CLDoPzbd0CWRLV0zLBQDTwsd6sdvsw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do Capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, 'Material de Apoio do Aula 2', 'https://i.ytimg.com/an_webp/D4frmIHAxEY/mqdefault_6s.webp?du=3000&sqp=CPLi0J0G&rs=AOn4CLDoPzbd0CWRLV0zLBQDTwsd6sdvsw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do Capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, 'Material de Apoio do Aula 3', 'https://i.ytimg.com/an_webp/D4frmIHAxEY/mqdefault_6s.webp?du=3000&sqp=CPLi0J0G&rs=AOn4CLDoPzbd0CWRLV0zLBQDTwsd6sdvsw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa 1 do Capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, approval_count, question_count, weight, due_date) VALUES (4, 'Fazer a tarefa 1', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2023-01-06T21:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);
















