with
    source_creditcard as (
        select 
            cast ( creditcardid	 as int) as id_cartaocredito			
            ,cast ( cardtype as string) as tipo_cartao			
            ,cast ( cardnumber	 as string) as numero_cartao			
            ,cast ( expmonth	 as string) as mes_expiracao			
            ,cast ( expyear	 as string) as ano_expericao			
            ,cast ( modifieddate as string) as data_modificao	
        from {{ source('sap','creditcard') }}
    )
    
select *
from source_creditcard