create sequence fornecedores_id_seq
    as integer;

alter sequence fornecedores_id_seq owner to postgres;

alter sequence fornecedores_id_seq owned by suppliers.id;

