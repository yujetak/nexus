KUBECTL		:=	kubectl
FASTAPI_IMG	:=	yuje123/my-fastapi
SPRING_IMG	:=	yuje123/my-spring
NEXTJS_IMG	:=	yuje123/my-nextjs
POSTGRES_IMG	:=	yuje123/my-postgres

.PHONY: all
# all: build config up > 로컬에서 실행
all: build up # config를 올리지 않기 때문에 제거

.PHONY: build
build:
	docker build -t $(FASTAPI_IMG) ../backend-fastapi
	docker build -t $(SPRING_IMG) ../backend-spring
	docker build -t $(NEXTJS_IMG) ../frontend-next
	docker build -t $(POSTGRES_IMG) ../db

.PHONY: config
config:
	$(KUBECTL) apply -f ./config/

.PHONY: up
up:
	$(KUBECTL) apply -f .

.PHONY: down
down:
	$(KUBECTL) delete -f .
	$(KUBECTL) delete -f ./config/

.PHONY: clean
clean: down

.PHONY: fclean
fclean: clean
	@docker rmi $(FASTAPI_IMG) $(SPRING_IMG) $(NEXTJS_IMG) $(POSTGRES_IMG) 2>/dev/null || true

.PHONY: re
re: fclean all config up