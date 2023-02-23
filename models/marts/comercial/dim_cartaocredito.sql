{{ config(materialized='table') }}
with
    cartaocredito as (
        select *
        from {{ ref('stg_sap__cartao_credito') }}
    )
    , uniao_tabelas as (
        select
             cartaocredito.id_cartaocredito			
            ,cartaocredito.tipo_cartao			
            ,cartaocredito.numero_cartao			
            ,cartaocredito.mes_expiracao			
            ,cartaocredito.ano_expericao			    
        from cartaocredito
    )        
select *
from uniao_tabelas