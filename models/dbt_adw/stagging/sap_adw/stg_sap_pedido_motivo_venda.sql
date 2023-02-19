with
    source_salesorderheadersalesreason as (
        select 
              cast ( salesorderid	 as int ) as id_pedido 			
            , cast ( salesreasonid	 as int ) as id_motivo_venda 			
--           , cast ( modifieddate as datetime ) as data_modificacao			

        from {{ source('sap','salesorderheadersalesreason') }}
    )
    
select *
from source_salesorderheadersalesreason