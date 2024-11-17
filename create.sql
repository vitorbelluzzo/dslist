create table tb_belonging (position integer, game_id bigint not null, list_id bigint not null, primary key (game_id, list_id));
create table tb_game (game_year integer, score float(53), id bigint generated by default as identity, genre varchar(255), img_url TEXT, long_description TEXT, platform varchar(255), short_description TEXT, title varchar(255), primary key (id));
create table tb_game_list (id bigint generated by default as identity, name varchar(255), primary key (id));
alter table if exists tb_belonging add constraint FKrchwdikeu66uky1hf75ym1kh foreign key (list_id) references tb_game_list;
alter table if exists tb_belonging add constraint FK2slybclee7wdfxhfltbvqkgpg foreign key (game_id) references tb_game;
INSERT INTO tb_game_list (name) VALUES ('Adventure and RPG');
INSERT INTO tb_game_list (name) VALUES ('Platform and Battle Royale');
INSERT INTO tb_game_list (name) VALUES ('Action and Simulation');
INSERT INTO tb_game (title, score, game_year, genre, platform, img_url, short_description, long_description) VALUES ('The Legend of Zelda: Breath of the Wild', 9.4, 2017, 'Adventure', 'Nintendo Switch', 'https://imgs.search.brave.com/lVoRNOqbUW7bTnX8kF4uIAn75LoXshg6DFczeEid5Mo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk5qSTBOVEV3/WkRZdFpEaGxPQzAw/TUdNMkxXRmxOR0l0/WTJVMlpXUmtNemsy/T0RJMFhrRXlYa0Zx/Y0djQC5qcGc', 'Open-world action-adventure game.', 'Explore a vast and visually stunning world in this critically acclaimed Zelda game.');
INSERT INTO tb_game (title, score, game_year, genre, platform, img_url, short_description, long_description) VALUES ('Red Dead Redemption 2', 9.6, 2018, 'Action', 'PlayStation 4, Xbox One, PC', 'https://imgs.search.brave.com/RJ8T3sAbunJt2Lja750UcpL3v3jtLQyPI19LLdszEIE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk56UmhaalJo/TlRBdE1HTTVNUzAw/WVdSa0xXRTBabVF0/WTJNMk1qTTJObU00/TlRJNVhrRXlYa0Zx/Y0djQC5qcGc', 'Epic tale of life in America’s unforgiving heartland.', 'Experience the life of an outlaw in the American West, with a deep story and open-world exploration.');
INSERT INTO tb_game (title, score, game_year, genre, platform, img_url, short_description, long_description) VALUES ('Cyberpunk 2077', 8.6, 2020, 'RPG', 'PC, PlayStation 4, Xbox One', 'https://imgs.search.brave.com/WYSG9xq7-MDa41sPh7A8x7danZKeeX3KdmjAMbf-6AU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1QlpXWXlORFJr/TnpBdE9USTBOeTAw/TkRRd0xXRTVNMll0/TVdGaVpEZG1NRGM0/TW1RMFhrRXlYa0Zx/Y0djQC5qcGchttps://imgs.search.brave.com/WYSG9xq7-MDa41sPh7A8x7danZKeeX3KdmjAMbf-6AU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1QlpXWXlORFJr/TnpBdE9USTBOeTAw/TkRRd0xXRTVNMll0/TVdGaVpEZG1NRGM0/TW1RMFhrRXlYa0Zx/Y0djQC5qcGc', 'Futuristic open-world RPG.', 'Explore a dystopian future as a mercenary in Night City, with branching storylines and a vast cityscape.');
INSERT INTO tb_game (title, score, game_year, genre, platform, img_url, short_description, long_description) VALUES ('The Witcher 3: Wild Hunt', 1.0, 2015, 'Adventure', 'PlayStation 4, Xbox One, Microsoft Windows, Nintendo Switch', 'https://imgs.search.brave.com/Dzb7omBBVGPFwSiykbk8iRhkgKfQVbVRJJ7xI4iN-dk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk5UUTJOak5r/TVRJdE5qVmlZeTAw/TWpobExUZ3hNVEV0/T1RNMU9ESmlObUZp/TW1KaFhrRXlYa0Zx/Y0djQC5qcGc', 'The Witcher 3: Wild Hunt is a 2015 action role-playing game developed and published by CD Projekt. Based on the Witcher series of fantasy novels by Polish author Andrzej Sapkowski, it is the sequel to the 2011 game The Witcher 2: Assassins of Kings.', 'The game story follows Geralt of Rivia, a monster hunter searching for his missing adopted daughter, Ciri, who is on the run from the Wild Hunt: an otherworldly force determined to capture and use her powers.');
INSERT INTO tb_game (title, score, game_year, genre, platform, img_url, short_description, long_description) VALUES ('Fortnite', 8.5, 2017, 'Battle Royale', 'PC, Console, Mobile', 'https://imgs.search.brave.com/x2WGlUx_HvqpFmSPi47Cfw-JA77YvDFcxmf2Aa0u68E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk1UWmxNbUl4/TTJFdE4yWTRaaTAw/TTJaaExUazNOemd0/TmpKbVpUVTBNVFEz/WWpjd1hrRXlYa0Zx/Y0djQC5qcGc', 'Popular battle royale game.', 'Fight to be the last one standing in this colorful and constantly updated battle royale phenomenon.');
INSERT INTO tb_game (title, score, game_year, genre, platform, img_url, short_description, long_description) VALUES ('God of War', 9.4, 2018, 'Action', 'PlayStation 4', 'https://m.media-amazon.com/images/M/MV5BNjRiNDAxMDEtZGRmNS00NjQwLTg3ZmEtODk2ZDdkNjJhMzg1XkEyXkFqcGc@._V1_.jpg', 'Mythology-based action game.', 'Join Kratos on a new journey through Norse mythology, redefining the series with a strong narrative and emotional depth.');
INSERT INTO tb_game (title, score, game_year, genre, platform, img_url, short_description, long_description) VALUES ('Animal Crossing: New Horizons', 9.0, 2020, 'Simulation', 'Nintendo Switch', 'https://imgs.search.brave.com/1gUmVO5Ow4kbO-sVLDdWaTWWzbKWQuNpaLeJY4JJpZY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzgxVWZFZHZmMmtM/LmpwZw', 'Relaxing life simulation game.', 'Build, decorate, and manage your island paradise while interacting with charming animal villagers.');
INSERT INTO tb_game (title, score, game_year, genre, platform, img_url, short_description, long_description) VALUES ('Dark Souls III', 8.9, 2016, 'RPG', 'PC, PlayStation 4, Xbox One', 'https://imgs.search.brave.com/mIjEcvuWPM5B8A4vlp_0zRGPs8IxXepMQv-zmIbEa-c/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5ncmFwaGFzc2V0/cy5jb20va3NWVHRj/ZlBRbU9mTUYydlRG/Q0s', 'Gritty action RPG.', 'Face challenging enemies and unforgiving worlds in this third entry in the Dark Souls series.');
INSERT INTO tb_game (title, score, game_year, genre, platform, img_url, short_description, long_description) VALUES ('Hades', 9.3, 2020, 'RPG', 'PC, Nintendo Switch', 'https://imgs.search.brave.com/gZh0-4uoxkDJn-K6rIP9o1ckc_Z82bN6M1hM0DFElmo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC81b3d1M3kz/NWd6MWcvMjIxZ1Uz/SjBINXVyUm9Ic05i/WURwZi85MTBlMDE1/MThiNTkzMjNmODYy/NGMxYTVhMjAwMWZm/NS9IYWRlc19SYXRp/bmdfQ292ZXJfXzFf/LnBuZz93PTIyNSZx/PTEwMA', 'Greek mythology-inspired rogue-like.', 'Battle your way through the Underworld in this acclaimed rogue-like with a captivating story and dynamic gameplay.');
INSERT INTO tb_game (title, score, game_year, genre, platform, img_url, short_description, long_description) VALUES ('Super Mario Odyssey', 9.7, 2017, 'Platformer', 'Nintendo Switch', 'https://imgs.search.brave.com/7yv3MJBzP73JchN4pgfxAl61WeAZRG6p9QmPc8prASc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2QzLzc2/LzQ0L2QzNzY0NDkw/MGJjYTM1MmJmZjdm/NzBkNzkxMDRjMDc2/LmpwZw', 'Mario’s globe-trotting adventure.', 'Travel with Mario across worlds to save Princess Peach in this colorful, expansive adventure.');
INSERT INTO tb_belonging (list_id, game_id, position) VALUES (1, 1, 0);
INSERT INTO tb_belonging (list_id, game_id, position) VALUES (1, 3, 1);
INSERT INTO tb_belonging (list_id, game_id, position) VALUES (1, 4, 2);
INSERT INTO tb_belonging (list_id, game_id, position) VALUES (1, 8, 3);
INSERT INTO tb_belonging (list_id, game_id, position) VALUES (1, 9, 4);
INSERT INTO tb_belonging (list_id, game_id, position) VALUES (2, 5, 0);
INSERT INTO tb_belonging (list_id, game_id, position) VALUES (2, 10, 1);
INSERT INTO tb_belonging (list_id, game_id, position) VALUES (3, 2, 0);
INSERT INTO tb_belonging (list_id, game_id, position) VALUES (3, 6, 1);
INSERT INTO tb_belonging (list_id, game_id, position) VALUES (3, 7, 2);