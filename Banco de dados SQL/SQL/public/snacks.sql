create table snacks
(
    id          integer default nextval('lanches_id_seq'::regclass) not null
        constraint lanches_pkey
            primary key,
    name        varchar(255)                                        not null,
    description text                                                not null,
    price       numeric(10, 2)                                      not null
);

alter table snacks
    owner to postgres;

