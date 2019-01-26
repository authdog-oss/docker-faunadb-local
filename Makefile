IMAGE_NAME := 'faunadb'
# domain: localhost
# port: 8443
# scheme: http
# secret: secret
start:
	docker \
		run -d \
		--rm \
		--name $(IMAGE_NAME) \
		-p 8443:8443 fauna/faunadb

stop:
	docker kill $(IMAGE_NAME)

list:
	fauna list-databases
