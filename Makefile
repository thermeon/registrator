NAME=thermeon/registrator
VERSION=$(shell cat VERSION)

deploy:
	shasum registrator
	tar zcvf registrator.tgz registrator
	cp registrator.tgz ~/repos/terraform-mesos/playbooks/roles/registrator/files/

binary:
	GOOS=linux GOARCH=amd64 go build .
