# Change this to the file or path to add, e.g. FILE=src/app.py
FILE ?= .

.PHONY: init push pull caught

caught:
	@echo caught
	@echo options are,
	@echo make init
	@ echo make push # push to server
	@echo make pull # pull from server

# Run once to create and switch to the dev branch
init:
	git checkout -b dev

# Add the selected file, commit the changes, and push dev
push:
	git switch dev
	git add "$(FILE)"
	git commit -m "Update"
	git push -u origin dev

# Switch to dev and get the latest changes
pull:
	git switch dev
	git pull origin dev
