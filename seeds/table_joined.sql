with table_joined as (
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-01') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-02') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-03') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-04') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-05') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-06') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-07') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-08') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-09') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-10') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-11') }}
    UNION ALL 
    SELECT * 
    FROM {{ source('nytaxi', 'yellow_tripdata_2019-12') }}
    UNION ALL 
)

SELECT * FROM table_joined