insert into 
	enderecos(rua, pais, cidade)
values
	('Avenida Higienópolis', 'Brasil', 'Londrina'),
	('Avenida Paulista', 'Brasil', 'São Paulo'),
	('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');

insert into
	usuarios(nome, email, senha, endereco_id)
values
	('Cauan', 'cauan@exemple.com', 1234, (select id from enderecos as e where e.rua like '%Paulista%' and e.cidade like 'São Paulo')),
	('Chrystian', 'chrystian@exemple.com', 4321, (select id from enderecos as e where e.rua like '%Marcelino%' and e.cidade like 'Curitiba')),
	('Matheus', 'matheus@exemple.com', 3214, (select id from enderecos as e where e.rua like '%Higienópolis%' and e.cidade like 'Londrina'));

insert into 
	redes_sociais(nome)
values
	('Youtube'),
	('Twitter'),
	('Instagram'),
	('Facebook'),
	('TikTok'); 

insert into
	usuario_redes_sociais(usuario_id, rede_social_id)
values
	((select id from usuarios as u where u.nome like 'Cauan'), (select id from redes_sociais as rs where rs.nome like 'Youtube')),
	((select id from usuarios as u where u.nome like 'Chrystian'), (select id from redes_sociais as rs where rs.nome like 'Youtube')),
	((select id from usuarios as u where u.nome like 'Matheus'), (select id from redes_sociais as rs where rs.nome like 'Youtube')),
	((select id from usuarios as u where u.nome like 'Chrystian'), (select id from redes_sociais as rs where rs.nome like 'Twitter')),
	((select id from usuarios as u where u.nome like 'Cauan'), (select id from redes_sociais as rs where rs.nome like 'Twitter')),
	((select id from usuarios as u where u.nome like 'Matheus'), (select id from redes_sociais as rs where rs.nome like 'Instagram')),
	((select id from usuarios as u where u.nome like 'Matheus'), (select id from redes_sociais as rs where rs.nome like 'Facebook')),
	((select id from usuarios as u where u.nome like 'Chrystian'), (select id from redes_sociais as rs where rs.nome like 'Instagram')),
	((select id from usuarios as u where u.nome like 'Cauan'), (select id from redes_sociais as rs where rs.nome like 'TikTok'));