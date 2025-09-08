//go:build !windows

package service

func RegisterStartFunc(f func()) {}

func SetListenPort(port int) {}

func SetConfigureFile(f string) {}

func GetServiceState() int { return -1 }

func UninstallService() error { return nil }

func InstallService() error { return nil }

func Stop() error { return nil }

func Start() error { return nil }

func Restart() error { return nil }
