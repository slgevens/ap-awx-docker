top:; @date
all: once roles
roles:; ansible-galaxy install -i -r requirements.yml
.PHONY: roles
once:; mkdir -p log roles .retry .cache
