DOCKER_DIR=docker

all: base_image box_image
	@

base_image: base_image
box_image: box_image

# Generic rule
%:
	docker build -t $@ $(DOCKER_DIR)/$@


# to remove all built images
clean:
	docker image rm -f $(shell ls $(DOCKER_DIR))