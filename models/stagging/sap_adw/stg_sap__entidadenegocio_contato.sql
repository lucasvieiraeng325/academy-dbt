with
    source_businessentitycontact as (
        select 
              cast (businessentityid	as int ) as	id_entidadenegocio			
            , cast (personid	as int ) as id_pessoa				
            , cast (contacttypeid	as int ) as	id_tipocontato			
            , cast (rowguid	as string) as rowguid				
            , cast (modifieddate	as datetime) as data_modificacao			
        from {{ source('sap','businessentitycontact') }}
    )
    
select *
from source_businessentitycontact