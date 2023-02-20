with
    source_personcreditcard as (
        select
             cast ( businessentityid as string ) as id_entidadenegocio			
            ,cast ( creditcardid as string ) as id_cartaocredito			
--            ,cast ( modifieddate as string ) as data_modificacao	
        from {{ source('sap','personcreditcard') }}
    )
    
select *
from source_personcreditcard