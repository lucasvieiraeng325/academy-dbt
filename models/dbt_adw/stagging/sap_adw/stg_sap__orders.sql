with
    source_salesorderheader as (
        select *
        from {{ source('sap_adw','salesorderheader') }}
    )
    
select *
from source_salesorderheader