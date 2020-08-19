flyway-migrate: ## run database migrations
	@docker run --rm  \
		-v $(PWD)/flyway-migrations/up:/flyway/sql \
		 boxfuse/flyway:6 \
		-url=jdbc:postgresql://host.docker.internal:5432/postgres \
		-user=postgres -password=example \
		-mixed=true \
		migrate

flyway-clean: ## clean up the database
	@docker run --rm  \
		-v $(PWD)/flyway-migrations/up:/flyway/sql \
		 boxfuse/flyway:6 \
		-url=jdbc:postgresql://host.docker.internal:5432/postgres \
		-user=postgres -password=example \
		clean
