package main

import (
	_ "github.com/thermeon/registrator/consul"
	_ "github.com/thermeon/registrator/consulkv"
	_ "github.com/thermeon/registrator/etcd"
	_ "github.com/thermeon/registrator/skydns2"
	_ "github.com/thermeon/registrator/zookeeper"
)
