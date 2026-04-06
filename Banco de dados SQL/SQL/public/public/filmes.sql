create table filmes
(
    id         serial
        primary key,
    titulo     varchar(100)     not null,
    diretor    varchar(50)      not null,
    ano        date             not null,
    duracao    varchar(10)      not null,
    avaliacao  double precision not null,
    bilheteria bigint           not null,
    custo      bigint           not null,
    genero     varchar(20)      not null
);

alter table filmes
    owner to postgres;

