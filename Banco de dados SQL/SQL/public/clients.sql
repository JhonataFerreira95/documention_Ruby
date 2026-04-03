create table clients
(
    id               integer default nextval('clientes_id_seq'::regclass) not null
        constraint clientes_pkey
            primary key,
    name             varchar(255)                                         not null,
    phone            varchar(20),
    address          varchar(100),
    register_of_date date    default CURRENT_DATE
);

alter table clients
    owner to postgres;

