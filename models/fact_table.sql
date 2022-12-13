with yellow_taxi as (
    SELECT
        tpep_pickup_datetime as pickup_datetime,
        tpep_dropoff_datetime as dropoff_datetime,
        PULocationID,
        DOLocationID,
        store_and_fwd_flag,
        vendor_id,
        ratecode_id,
        payment_type,
        passenger_count,
        trip_distance,
        fare_amount,
        total_amount
    FROM 
        {{ ref('nytaxi.yellow_tripdata_2019') }}
    WHERE
        ratecode_id IS NOT NULL 
),

final as (
    SELECT *
    FROM
        `nytaxi`.yellow_tripdata_2019
    WHERE 
        passenger_count > 0 AND trip_distance > 0
)

SELECT * 
FROM 
    final