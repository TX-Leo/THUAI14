start win\exe\Logic.Server.exe --port=20000 --teamCount=2 --playerCount=2 --gameTimeInSecond=600
TIMEOUT /T 1
start win\exe\Agent.exe -s 127.0.0.1:20000 -p 7777
TIMEOUT /T 1
start CAPIs\CAPI_happyman\x64\Release\CAPI.exe --agentIP 127.0.0.1 --agentPort 7777 --playerID 1 --teamID 1 -- warning
TIMEOUT /T 1
start CAPIs\CAPI_happyman\x64\Release\CAPI.exe --agentIP 127.0.0.1 --agentPort 7777 --playerID 0 --teamID 1 -- warning
TIMEOUT /T 1
start win\exe\Logic.Client.exe -port=7777 --playerID=0 --teamID=0 --job=4
TIMEOUT /T 1
start win\exe\Logic.Client.exe -port=7777 --playerID=1 --teamID=0 --job=4

