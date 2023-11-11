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
    FROM  {{ source('TPCH_SF1', 'CUSTOMER') }}