create table suppliers
(
    id           integer default nextval('fornecedores_id_seq'::regclass) not null
        constraint fornecedores_pkey
            primary key,
    name         varchar(255)                                             not null,
    phone        varchar(20)                                              not null,
    obeservation varchar(255),
    email        varchar(100),
    hiring_date  date    default CURRENT_DATE                             not null
);

alter table suppliers
    owner to postgres;

