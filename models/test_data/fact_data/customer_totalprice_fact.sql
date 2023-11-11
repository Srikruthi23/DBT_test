{{
    config(
        materialized='table'        
    )
}}

SELECT  
    C_CUSTKEY
    , C_NAME
    , C_ADDRESS
    , C_NATIONKEY
    , C_PHONE
    , C_ACCTBAL
    , C_MKTSEGMENT
    ,C_COMMENT
    , O_ORDERKEY
    , O_ORDERSTATUS
    , O_ORDERDATE
    , SUM(O_TOTALPRICE) AS CO_TOTALPRICE

FROM {{ ref('customer_data_dim') }} AS CUS
LEFT JOIN
{{ ref('orders_data_fact') }} AS ORD
ON CUS.C_CUSTKEY =ORD.O_CUSTKEY