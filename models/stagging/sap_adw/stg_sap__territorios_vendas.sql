with
    source_salesterritory as (
        select 
            cast ( territoryid as int ) as id_territorio 			
            , cast ( name as string ) as nome_territorio			
            , cast ( countryregioncode as string ) as codigo_pais			
            , cast ( 'group' as string ) as grupo_pais
            , CASE
                WHEN countryregioncode= 'FR' THEN 'Franca'
                WHEN countryregioncode= 'DE' THEN 'Alemenha'
                WHEN countryregioncode= 'GB' THEN 'Reino Unido'
                WHEN countryregioncode= 'AU' THEN 'Australia'
                WHEN countryregioncode= 'US' THEN 'Estados Unidos'
                WHEN countryregioncode= 'CA' THEN 'Canada'                 
            END AS pais 			
            , cast ( salesytd as string ) as vendas_acumulado_ano			
            , cast ( saleslastyear as string ) as vendas_ano_anterior			
            , cast ( costytd as string ) as custos_acumulado_ano			
            , cast ( costlastyear as string ) as custos_ano_anterior			
            , cast ( rowguid as string ) as id_linhas			
            , cast ( modifieddate as string ) as data_modificacao 	
        from {{ source('sap','salesterritory') }}
    )
    
select *
from source_salesterritory