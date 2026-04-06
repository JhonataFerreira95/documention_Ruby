create table serie_tv
(
    id        serial
        primary key,
    titulo    varchar(100)     not null,
    criador   varchar(100)     not null,
    ano       date             not null,
    genero    varchar(50)      not null,
    temporada smallint         not null,
    episodios integer          not null,
    avaliacao double precision not null,
    canal     varchar(50)      not null,
    situacao  varchar(20)
);

alter table serie_tv
    owner to postgres;

