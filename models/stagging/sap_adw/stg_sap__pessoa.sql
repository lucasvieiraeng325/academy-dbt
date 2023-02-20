with
    source_person as (
        select 
             cast ( businessentityid as int ) as id_entidadenegocio				
            , cast ( persontype	as string ) as tipo_pessoa				
            , cast ( namestyle	as string ) as estilo_nome				
            , cast ( title	as string ) as titulo			
            , cast ( firstname	as string ) as primeironome				
            , cast ( middlename	as string ) as meionome				
            , cast ( lastname	as string ) as ultimonome			
            , cast ( suffix	as string ) as sufixo				
            , cast ( emailpromotion	as int ) as email_promocional 				
            , cast ( additionalcontactinfo	as string ) as info_contatoadicional			
            , cast ( demographics as string ) as demografia				
            , cast ( rowguid as string ) as	rowguid			
            , cast ( modifieddate	as string ) as data_modificacao	
        from {{ source('sap','person') }}
    )
    
select *
from source_person