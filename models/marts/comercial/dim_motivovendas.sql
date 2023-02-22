with
    pedidos_motivovenda as (
        select *
        from {{ ref('stg_sap__pedido_motivo_venda') }}
    )
    , motivovendas as (
        select *
        from {{ ref('stg_sap__motivo_venda') }}
    )
    , uniao_tabelas as (
        select
              pedidos_motivovenda.id_pedido		
            , motivovendas.nome_motivo_venda			
            , motivovendas.tipo_motivo		    
        from motivovendas
        left join pedidos_motivovenda on motivovendas.id_motivo_venda = pedidos_motivovenda.id_motivo_venda
    )        
select *
from uniao_tabelas