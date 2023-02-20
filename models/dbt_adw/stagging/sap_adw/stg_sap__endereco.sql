with
    source_address as (
        select
             cast ( addressid	as int ) as id_endereco 			
            ,cast ( addressline1	as string ) as endereco_linha1			
            ,cast ( addressline2	as string ) as endereco_linha2			
            ,cast ( city	as string ) as cidade			
            ,cast ( stateprovinceid	as int ) as id_estadoprovincia			
--            ,cast ( postalcode	as string ) as codigopostal			
--            ,cast ( spatiallocation	as string ) as localizacao		
--            ,cast ( rowguid	as string ) as rowguid		
--            ,cast ( modifieddate	as string ) as data_modificacao	
        from {{ source('sap','address') }}
    )
    
select *
from source_address