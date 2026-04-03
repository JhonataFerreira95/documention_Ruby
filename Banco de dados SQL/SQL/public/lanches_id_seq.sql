create sequence lanches_id_seq
    as integer;

alter sequence lanches_id_seq owner to postgres;

alter sequence lanches_id_seq owned by snacks.id;

