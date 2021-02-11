common:
	@sh common.sh
frontend: common
	@sh frontend.sh
mongo:    common
	@sh mongo.sh