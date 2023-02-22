with
    source_personcreditcard as (
        select
             cast ( businessentityid as int ) as id_entidadenegocio			
            ,cast ( creditcardid as int ) as id_cartaocredito			
            ,cast ( modifieddate as string ) as data_modificacao	
        from {{ source('sap','personcreditcard') }}
    )
    
select *
from source_personcreditcard