with
    source_salesorderdetail as (
        select 
              cast (salesorderid as int) as id_pedido		
            , cast ( salesorderdetailid	as int) as id_ordem_detalhada			
            , cast ( orderqty as int) as	quantidade_ordem		
            , cast ( productid as int) as id_produto			
            , cast ( unitprice as numeric) as preco_unitario			
--            , cast ( carriertrackingnumber as string) as numero_rastreio_entrega			
--            , cast ( specialofferid as string) as id_oferta_especial		
--            , cast ( unitpricediscount as string) as desconto_preco_unitario			
--            , cast ( rowguid as string) as id_linha			
--            , cast ( modifieddate as string) as data_modificacao			

        from {{ source('sap','salesorderdetail') }}
    )
    
select *
from source_salesorderdetail