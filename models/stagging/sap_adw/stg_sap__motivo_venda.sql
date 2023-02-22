with
    source_salesreason as (
        select 
              cast( salesreasonid as int ) as id_motivo_venda		
            , cast( name as string ) as nome_motivo_venda			
            , cast( reasontype as string ) as tipo_motivo			
            , cast( modifieddate as datetime ) as data_modificacao				

        from {{ source('sap','salesreason') }}
    )
    
select *
from source_salesreason