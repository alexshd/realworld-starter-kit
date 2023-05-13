package utils

import (
	"time"

	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
)

// InitDevLogger simple development logger.
func InitDevLogger() *zap.Logger {
	config := zap.NewDevelopmentConfig()

	config.EncoderConfig.EncodeLevel = zapcore.CapitalColorLevelEncoder
	config.EncoderConfig.EncodeTime = syslogTimeEncoder
	config.EncoderConfig.FunctionKey = "func"

	logger, _ := config.Build()
	defer func() { _ = logger.Sync() }()

	return logger
}

func syslogTimeEncoder(t time.Time, enc zapcore.PrimitiveArrayEncoder) {
	enc.AppendString(t.Format("02/01/2006 15:04:05.999"))
}
