with
    source_product as (
        select
             cast ( productid	as int ) as	id_produto		
            ,cast ( name	as string ) as nome_produto			
            ,cast ( productnumber	as string ) as	numero_produto		
            ,cast ( makeflag	as string ) as flag_make			
            ,cast ( finishedgoodsflag	as string ) as bens_finalizados		
            ,cast ( color	as string ) as cor 			
            ,cast ( safetystocklevel	as int ) as	estoque_de_seguranca		
            ,cast ( reorderpoint	as int ) as	ponto_pedido_repetido		
            ,cast ( standardcost	as numeric ) as	custo_padrao	
            ,cast ( listprice	as numeric ) as	lista_preco		
            ,cast ( size	as string ) as	tamanho_produto		
            ,cast ( sizeunitmeasurecode	as string ) as	unidade_tamanho		
            ,cast ( weightunitmeasurecode	as string ) as	unidade_peso		
            ,cast ( weight	as numeric ) as peso_produto	
            ,cast ( daystomanufacture	as int ) as dias_fabricacao	
            ,cast ( productline	as string ) as linha_produto		
            ,cast ( class	as string ) as classe	
            ,cast ( style	as string ) as estilo	
            ,cast ( productsubcategoryid	as int ) as id_categoria_produto	
            ,cast ( productmodelid	as int ) as id_modelo_produto
            ,cast ( sellstartdate	as string ) as data_inicio_vendas		
            ,cast ( sellenddate	as string ) data_fim_vendas		
            ,cast ( discontinueddate	as int ) as	data_discontinuado		
            ,cast ( rowguid	as string ) as rowguid	
            ,cast ( modifieddate	as string ) as data_modificacao
        from {{ source('sap','product') }}
    )
    
select *
from source_product