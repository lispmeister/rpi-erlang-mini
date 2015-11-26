DOCKER_IMAGE_VERSION=2.7.3
DOCKER_IMAGE_NAME=lispmeister/rpi-erlang-mini
DOCKER_IMAGE_TAGNAME=$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)

default: build

build:
	docker build -t $(DOCKER_IMAGE_TAGNAME) .
	docker tag -f $(DOCKER_IMAGE_TAGNAME) $(DOCKER_IMAGE_NAME):latest

push:
	docker push $(DOCKER_IMAGE_NAME)

test:
	docker run --rm $(DOCKER_IMAGE_TAGNAME) /bin/echo "Success."

version:
	docker run --rm $(DOCKER_IMAGE_TAGNAME) erl -noshell -eval 'io:fwrite("~s\n", [erlang:system_info(otp_release)]).' -s erlang halt

