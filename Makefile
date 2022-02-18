build:
	docker build . -t neo4j

run:
	docker run -d -p 7474:7474 -p 7687:7687 -v $$HOME/neo4j/data:/data -e NEO4J_AUTH=none --name neo4j neo4j:latest
	open http://localhost:7474
		
stop:
	docker stop neo4j
	docker rm neo4j