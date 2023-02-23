{{ config(materialized='table') }}
with
    pedidos as (
        select *
        from {{ ref('stg_sap__ordens') }}
    )
    , pedidos_detalhados as (
        select *
        from {{ ref('stg_sap__ordens_detalhadas') }}
    )
    , uniao_tabelas as (
        select
              pedidos_detalhados.id_pedido		
            , pedidos_detalhados.id_ordem_detalhada			
            , pedidos_detalhados.quantidade_ordem		
            , pedidos_detalhados.id_produto			
            , pedidos_detalhados.preco_unitario			
            , pedidos_detalhados.numero_rastreio_entrega			
            , pedidos_detalhados.id_oferta_especial		
            , pedidos_detalhados.desconto_preco_unitario			
            , pedidos_detalhados.id_linha
            , pedidos.id_pedido_endereco
            , pedidos.id_cartaocredito   
            , pedidos.id_cliente
            , pedidos.total_pedido
            , pedidos.frete
            , pedidos.data_pedido 
            , CASE
                WHEN pedidos.status= 1 THEN 'Em progresso'
                WHEN pedidos.status= 2 THEN 'Aprovada'
                WHEN pedidos.status= 3 THEN 'Sem estoque'
                WHEN pedidos.status= 4 THEN 'Rejeitado'
                WHEN pedidos.status= 5 THEN 'Enviado'
                WHEN pedidos.status= 6 THEN 'Cancelado'                 
            END AS status 
        from pedidos_detalhados
        left join pedidos on pedidos_detalhados.id_pedido = pedidos.id_pedido
    )        
select *
from uniao_tabelas