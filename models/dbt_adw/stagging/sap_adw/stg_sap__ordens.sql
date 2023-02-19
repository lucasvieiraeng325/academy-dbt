with
    source_salesorderheader as (
        select 
          cast ( salesorderid as int ) as id_pedido			
        , cast ( date(orderdate) as date ) as data_pedido			
        , cast ( status as string ) as status			
        , cast ( customerid	as int ) as id_cliente			
        , cast ( territoryid as int ) as id_territorio			
        , cast ( totaldue as numeric ) as total			
        , cast ( freight as numeric ) as frete		
        , cast ( subtotal as numeric ) as subtotal			
--        , cast ( revisionnumber as string ) as numerorevisao			
--        , cast ( shipdate as string ) as data_envio			
--        , cast ( purchaseordernumber as string ) as	numero_ordempedido		
--        , cast ( onlineorderflag as string ) as	flag_pedidoonline		
--        , cast ( accountnumber as string ) as numero_conta			
--        , cast ( salespersonid as string ) as id_vendedor			
--        , cast ( billtoaddressid as string ) as id_conta_endereco	
--        , cast ( shiptoaddressid as string ) as id_envio_endereco			
--        , cast ( shipmethodid as string ) as id_forma_envio			
--        , cast ( creditcardid as string ) as id_cartaocredito			
--        , cast ( creditcardapprovalcode as string ) as codigo_aprovacao_cartaocredito			
--        , cast ( comment as string ) as	comentarios		
--        , cast ( currencyrateid as string ) as id_cambio_moeda			
--        , cast ( taxamt as string ) as	taxamt		
--        , cast ( duedate as string ) as data_vencimento		
--        , cast ( rowguid	 as string ) as	 id_linha		
--        , cast ( modifieddate	 as string ) as	data_modificacao		

        from {{ source('sap','salesorderheader') }}
    )
    
select *
from source_salesorderheader