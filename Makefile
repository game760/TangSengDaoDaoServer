build:
	docker build -t tangsengdaodaoserver .
push:
	docker tag tangsengdaodaoserver game760/tangsengdaodao:latest
	docker push game760/tangsengdaodao:latest
deploy:
	docker build -t tangsengdaodaoserver . --platform linux/amd64
	docker tag tangsengdaodaoserver game760/tangsengdaodao:latest
	docker push game760/tangsengdaodao:latest
deploy-v2:
	docker build -t tangsengdaodaoserver . --platform linux/amd64
	# 注：若需统一为latest标签，可将下方v2改为latest；若需保留v2版本，保持如下格式即可
	docker tag tangsengdaodaoserver game760/tangsengdaodao:latest
	docker push game760/tangsengdaodao:latest
run-dev:
	docker-compose build;docker-compose up -d
stop-dev:
	docker-compose stop
env-test:
	docker-compose -f ./testenv/docker-compose.yaml up -d 