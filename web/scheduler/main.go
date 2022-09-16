package main

import (
	"github.com/Sierra1011/portwarden/web"
	"github.com/Sierra1011/portwarden/web/scheduler/server"
)

func main() {
	web.InitCommonVars()
	ps := server.PortwardenServer{
		Port: 5000,
	}
	ps.Run()
}
