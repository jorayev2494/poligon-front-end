.DEFAULT_GOAL := help

init:						## Initialize project
	cd ./docker && cp .env.example .env

up:							## Up project
	cd ./docker && docker-compose up --build -d

ps:							## Show ps project
	cd ./docker && docker-compose ps

down:						## Down project
	cd ./docker && docker-compose down

npm_start:					## NPM Start
	cd ./docker && docker-compose exec node npm start

npm_i:
	cd ./docker && docker-compose exec node npm i

help:	## Show Project commands
	@#echo ${Cyan}"\t\t This project 'poligon' REST API!"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@echo ${Red}"#######################################################################################"
	@echo ${Yellow}"Please go to the like show project: http://127.0.0.1:8180"
