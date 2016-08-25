NAME=thermeon/registrator
VERSION=$(shell cat VERSION)

docker: binary
	docker build -t $(NAME):$(VERSION) .

binary:
	GOOS=linux GOARCH=amd64 go build .

