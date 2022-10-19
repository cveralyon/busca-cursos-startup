class Clase < ApplicationRecord
    require 'opensearch'


    # If you want to use authentication credentials
    client = OpenSearch::Client.new(
    host: 'https://admin:admin@localhost:9200',    # For testing only. Don't store credentials in code.
    transport_options: { ssl: { verify: false } }  # For testing only. Use certificate for validation.
    )

    # If you don't want to use authentication credentials
    #client = OpenSearch::Client.new url: 'http://localhost:9200', log: true

    # Create an index with non-default settings.
    index_name = 'ruby-test-index'
    index_body = {
    'settings': {
        'index': {
        'number_of_shards': 4
        }
    }
    }

    response = client.indices.create(
    index: index_name,
    body: index_body
    )

    puts 'Creating index:'
    puts response


    # Add a document to the index.
    document = {
    'title': 'Moneyball',
    'director': 'Bennett Miller',
    'year': '2011'
    }
    id = '1'

    response = client.index(
    index: index_name,
    body: document,
    id: id,
    refresh: true
    )

    puts 'Adding document:'
    puts response



    # Search for the document.
    q = 'miller'
    query = {
    'size': 5,
    'query': {
        'multi_match': {
        'query': q,
        'fields': ['title^2', 'director']
        }
    }
    }

    response = client.search(
    body: query,
    index: index_name
    )
    puts 'Search results:'
    puts response


    # Delete the document.
    response = client.delete(
    index: index_name,
    id: id
    )

    puts 'Deleting document:'
    puts response

    # Delete the index.
    response = client.indices.delete(
    index: index_name
    )

    puts 'Deleting index:'
    puts response
end