create sequence ingredientes_em_estoque_id_seq
    as integer;

alter sequence ingredientes_em_estoque_id_seq owner to postgres;

alter sequence ingredientes_em_estoque_id_seq owned by stock_ingredients.id;

