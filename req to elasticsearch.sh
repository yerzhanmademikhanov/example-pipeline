curl -X POST "localhost:9200/jaeger-span-2018-10-03/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "_source": ["duration", "operationName", "startTimeMillis"],

    "size" : 1000,
    "aggs" : {
        "group" : {
            "terms" : {
                "field" : "operationName"
            }
        }
    }


}
'

