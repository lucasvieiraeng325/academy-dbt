with
    source_customer as (
        select 
            cast( customerid	as int) as id_cliente			
            ,cast( personid	as int) as id_pessoa			
            ,cast( storeid	as int) as id_loja			
            ,cast( territoryid	as int) as id_territorio			
            ,cast( rowguid	as string) as rowguid			
            ,cast( modifieddate	as string) as data_modificacao	
        from {{ source('sap','customer') }}
    )
    
select *
from source_customer