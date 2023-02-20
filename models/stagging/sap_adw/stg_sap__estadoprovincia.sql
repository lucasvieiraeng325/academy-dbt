with
    source_stateprovince as (
        select
              cast ( stateprovinceid	as int ) as id_estadoprovincia		
            , cast ( stateprovincecode	as string ) as codigo_estadoprovincia			
            , cast ( countryregioncode	as string ) as codigo_pais		
            , cast ( isonlystateprovinceflag	as string ) as	eh_apenas_estadoprovincia_flag		
            , cast ( name	as string ) as nome_estadoprovincia			
            , cast ( territoryid	as int ) as	id_territorio		
            , cast ( rowguid	as string ) as rowguid			
            , cast ( modifieddate	as string ) as data_modificacao
        from {{ source('sap','stateprovince') }}
    )
    
select *
from source_stateprovince