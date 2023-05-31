start-dev:
	docker-compose -f docker-compose.dev.yml down
	docker-compose -f docker-compose.dev.yml up --build

start-db-only:
	docker-compose -f docker-compose.dev.yml up -d db

# GIT
git-create-branch:
	git checkout -b $(branch) | true
	cd backend && git checkout -b $(branch) | true
	cd frontend && git checkout -b $(branch) | true

git-pull:
	git checkout -b $(branch)
	cd backend && git pull
	cd frontend && git pull

git-checkout:
	git checkout $(branch)
	cd backend && git checkout $(branch)
	cd frontend && git checkout $(branch)

git-merge:
	git checkout $(into) && git merge $(from)
	cd backend && git checkout $(into) && git merge $(from)
	cd frontend && git checkout $(into) && git merge $(from)