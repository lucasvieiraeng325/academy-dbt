with
    produtos as (
        select *
        from {{ ref('stg_sap__produtos') }}
    )
    , uniao_tabelas as (
        select
              produtos.id_produto		
            , produtos.nome_produto				
            , produtos.cor 						
            , produtos.custo_padrao			
            , produtos.tamanho_produto		
            , produtos.unidade_tamanho		
            , produtos.unidade_peso		
            , produtos.peso_produto			
            , produtos.classe	
            , produtos.estilo	
            , produtos.id_categoria_produto			    
        from produtos      

    )        
select *
from uniao_tabelas