create table stock_ingredients
(
    id       integer default nextval('ingredientes_em_estoque_id_seq'::regclass) not null
        constraint ingredientes_em_estoque_pkey
            primary key,
    name     varchar(255)                                                        not null,
    category varchar(100),
    amount   integer default 0
);

alter table stock_ingredients
    owner to postgres;

