@echo off
exe\Debug\Logic.Server.exe --port=20000 --teamCount=1 --playerCount=1 --gameTimeInSecond=600 --fileName=video || pause
