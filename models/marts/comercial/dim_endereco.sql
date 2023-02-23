{{ config(materialized='table') }}
with
    endereco as (
        select *
        from {{ ref('stg_sap__endereco') }}
    )
    , estadoprovincia as (
        select *
        from {{ ref('stg_sap__estadoprovincia') }}
    )
    , territorio as (
        select *
        from {{ ref('stg_sap__territorios_vendas') }}
    )
    , uniao_tabelas as (
        select
             endereco.id_endereco 			
            ,endereco.endereco_linha1			
            ,endereco.endereco_linha2			
            ,endereco.cidade			
            ,estadoprovincia.nome_estadoprovincia			
            ,endereco.codigopostal			
            ,endereco.localizacao
            ,territorio.nome_territorio
            ,territorio.pais			    
        from endereco
        left join estadoprovincia on endereco.id_estadoprovincia = estadoprovincia.id_estadoprovincia
        left join territorio on estadoprovincia.id_territorio = territorio.id_territorio
    )        
select *
from uniao_tabelas