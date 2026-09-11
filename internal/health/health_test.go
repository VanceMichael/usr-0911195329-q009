package health
import "testing"
func TestCurrent(t *testing.T){ if Current()["status"]!="ok"{t.Fatal("状态错误")} }
