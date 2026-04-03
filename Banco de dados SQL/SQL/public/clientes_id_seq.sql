create sequence clientes_id_seq
    as integer;

alter sequence clientes_id_seq owner to postgres;

alter sequence clientes_id_seq owned by clients.id;

