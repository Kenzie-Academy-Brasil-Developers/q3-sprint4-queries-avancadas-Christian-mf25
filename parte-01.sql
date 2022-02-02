create table if not exists redes_sociais(
	id		BIGSERIAL		primary key,
	nome	VARCHAR(150)	not null
);

create table if not exists enderecos(
	id		BIGSERIAL		primary key,
	rua		VARCHAR			not null,
	pais	VARCHAR(100)	not null,
	cidade	VARCHAR(100)	not null
);

create table if not exists usuarios(
	id			BIGSERIAL		primary key,
	nome		VARCHAR(100)	not null,
	email		VARCHAR			not null unique,
	senha		VARCHAR			not null,
	endereco_id	INTEGER			not null,
	foreign key (endereco_id) references enderecos ("id")
);

create table if not exists usuario_rede_social(
	id				BIGSERIAL	primary key,
	usuario_id		INTEGER		not null,
	rede_social_id	INTEGER		not null,
	foreign key (usuario_id) references usuarios("id"),
	foreign key (rede_social_id) references redes_sociais ("id")
);