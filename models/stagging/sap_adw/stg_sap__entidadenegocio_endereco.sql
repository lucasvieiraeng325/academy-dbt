with
    source_businessentityaddress as (
        select 
            cast ( businessentityid as int ) as id_entidadenegocio
            , cast ( addressid as int ) as id_endereco
            , cast ( addresstypeid as int ) as tipo_endereco
            , cast ( rowguid	as string ) as rowguid
            , cast ( modifieddate as string ) as data_modificacao
        from {{ source('sap','businessentityaddress') }}
    )
    
select *
from source_businessentityaddress