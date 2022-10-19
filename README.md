# README

* **Kubernete Commands**
  * Kompose convert (si no estan los archivos .yaml)-> convertir el dockercompose a archivos .yaml para ser usados por kubernete
  * Kubectl apply -f . -> sirve para crear los contenedores del kubernete
  * Kubectl get pods --all-namespaces -> te muestra todas las "imagenes" que se crearon/utilizadas en contenedores
  * kubectl logs <name-pod> -> ver que logs se estan haciendo
  * kubectl delete pod <name-pod>
  * kubectl delete deployment <name-deploy> -> elimina completamente el contenedor de kuber
  * kubectl describe pod <name-pod>
  * test OpenSearch
  
THIS REPO HAS SECURITY INTENTIONALLY DISABLED. IT IS NOT SUITABLE FOR PRODUCTION ENVIRONMENT

curl -XGET 'http://localhost:9200'

curl -XPUT 'http://localhost:9200/iaps-index'

curl -XPUT 'http://localhost:9200/iaps-index/1' -H 'Content-Type: application/json' -d '{"Description": "To be or not to be, that is the question."}'

curl -XPOST 'http://localhost:9200/iaps-index/_doc' -H 'Content-Type: application/json' -d '{"Description": "This is another document"}

curl -XGET 'http://localhost:9200/iaps-index/_search'

curl -XGET 'http://localhost:9200/iaps-index/_search?q=document'

https://opensearch.org/docs/2.3/

https://docs.aws.amazon.com/opensearch-service/latest/developerguide/what-is.html https://docs.aws.amazon.com/opensearch-service/latest/developerguide/sizing-domains.html

https://github.com/opensearch-project/opensearch-ruby

1) aqui está la gema
2) hay que instalarla o local o por dockers, de ninguna manera pude porque tuve problemas con ruby en local, y con dockers no se como 
hacerlo correr, lo puse en RUN gem install .... pero no me lo tomó en los logs  