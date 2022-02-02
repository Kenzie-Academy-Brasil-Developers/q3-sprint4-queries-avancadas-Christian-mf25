-- Primeiro Select
select * from enderecos;


-- Segundo Select
select
	*
from
	enderecos as e
join 
	usuarios as u
		on u.endereco_id = e.id
order by e.id;


-- Terceiro Select
select
	rs, u
from 
	usuario_redes_sociais as urs  
join
	usuarios as u
		on u.id = urs.usuario_id
join
	redes_sociais as rs 
		on rs.id = urs.rede_social_id;

	
-- Quarto Select
select 
	rs, u, e
from 
	usuario_redes_sociais as urs
join 
	redes_sociais as rs
		on rs.id = urs.rede_social_id
join 
	usuarios as u
		on u.id = urs.usuario_id
join
	enderecos as e
		on e.id = u.endereco_id;

	
-- Quinto Select
select 
	rs.nome, u.nome, u.email, e.cidade
from 
	usuario_redes_sociais as urs
join 
	redes_sociais as rs 
		on rs.id = urs.rede_social_id
join
	usuarios as u 
		on u.id = urs.usuario_id
join
	enderecos as e 
		on e.id = u.endereco_id ;
	
	
-- Sexto Select
select 
	rs.nome, u.nome, u.email, e.cidade
from 
	usuario_redes_sociais as urs
join 
	redes_sociais as rs 
		on rs.id = urs.rede_social_id
join
	usuarios as u 
		on u.id = urs.usuario_id
join
	enderecos as e 
		on e.id = u.endereco_id 
where 
	rs.nome like 'Youtube';


-- Sétimo Select
select 
	rs.nome, u.nome, u.email, e.cidade
from 
	usuario_redes_sociais as urs
join 
	redes_sociais as rs 
		on rs.id = urs.rede_social_id
join
	usuarios as u 
		on u.id = urs.usuario_id
join
	enderecos as e 
		on e.id = u.endereco_id 
where 
	rs.nome like 'Instagram';


-- Oitavo Select
select 
	rs.nome, u.nome, u.email, e.cidade
from 
	usuario_redes_sociais as urs
join 
	redes_sociais as rs 
		on rs.id = urs.rede_social_id
join
	usuarios as u 
		on u.id = urs.usuario_id
join
	enderecos as e 
		on e.id = u.endereco_id 
where 
	rs.nome like 'Facebook';


-- Nono Select
select 
	rs.nome, u.nome, u.email, e.cidade
from 
	usuario_redes_sociais as urs
join 
	redes_sociais as rs 
		on rs.id = urs.rede_social_id
join
	usuarios as u 
		on u.id = urs.usuario_id
join
	enderecos as e 
		on e.id = u.endereco_id 
where 
	rs.nome like 'TikTok';


-- Décimo Select
select 
	rs.nome, u.nome, u.email, e.cidade
from 
	usuario_redes_sociais as urs
join 
	redes_sociais as rs 
		on rs.id = urs.rede_social_id
join
	usuarios as u 
		on u.id = urs.usuario_id
join
	enderecos as e 
		on e.id = u.endereco_id 
where 
	rs.nome like 'Twitter';