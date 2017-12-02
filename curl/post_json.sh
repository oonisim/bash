#!/bin/bash
#--------------------------------------------------------------------------------
# curl -u user:pass -X POST 'https://kibana.local/core*/_search?pretty'
#--------------------------------------------------------------------------------
curl -u ${user}:${pass} -X POST "${proto}://${host}:${port}/${index}/_search?pretty" \
-H 'Content-Type: application/json' \
-d' \
{
    "query": {
        "bool": {
            "must": [
                {
                    "match" : {
                        "kubernetes_pod_name" : "mule-dev-185-rlxz3"
                    }
                },
                {
                    "range" : {
                        "time" : {
                            "gte": "now-15s"
                        }
                    }
                }
            ]
        }
    }
}
'
