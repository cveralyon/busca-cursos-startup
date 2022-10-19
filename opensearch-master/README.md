THIS REPO HAS SECURITY INTENTIONALLY DISABLED.
IT IS NOT SUITABLE FOR PRODUCTION ENVIRONMENT

curl -XGET 'http://localhost:9200'

curl -XPUT 'http://localhost:9200/iaps-index'

curl -XPUT 'http://localhost:9200/iaps-index/1' -H 'Content-Type: application/json' -d '{"Description": "To be or not to be, that is the question."}'

curl -XPOST 'http://localhost:9200/iaps-index/_doc' -H 'Content-Type: application/json' -d '{"Description": "This is another document"}

curl -XGET 'http://localhost:9200/iaps-index/_search'

curl -XGET 'http://localhost:9200/iaps-index/_search?q=document'

https://opensearch.org/docs/2.3/

https://docs.aws.amazon.com/opensearch-service/latest/developerguide/what-is.html
https://docs.aws.amazon.com/opensearch-service/latest/developerguide/sizing-domains.html
