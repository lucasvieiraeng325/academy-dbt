with
    pessoas as (
        select *
        from {{ ref('stg_sap__pessoa') }}
    )
    , clientes as (
        select *
        from {{ ref('stg_sap__clientes') }}
    )
    , territorio as (
        select *
        from {{ ref('stg_sap__territorios_vendas') }}
    )
    , entidadenegocio_contato as (
        select *
        from {{ ref('stg_sap__entidadenegocio_contato') }}
    )
    , uniao_tabelas as (
        select
             clientes.id_cliente			
            , pessoas.primeironome			
            , pessoas.ultimonome
            , clientes.id_pessoa
            , territorio.nome_territorio
            , territorio.pais			    
        from clientes
        left join pessoas on clientes.id_pessoa = pessoas.id_entidadenegocio
        left join territorio on clientes.id_territorio = territorio.id_territorio
    )        
select *
from uniao_tabelas