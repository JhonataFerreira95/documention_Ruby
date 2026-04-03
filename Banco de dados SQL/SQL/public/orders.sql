create table orders
(
    id             serial
        primary key,
    table_number   integer                        not null,
    order_datetime timestamp default CURRENT_DATE not null,
    status         varchar(50)                    not null
);

alter table orders
    owner to postgres;

