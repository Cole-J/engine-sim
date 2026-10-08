# Change this to the file or path to add, e.g. FILE=src/app.py
FILE ?= makefile coyote/2019_f150_coyote.mr coyote/Ford_Modular_Coyote.mr

.PHONY: init push pull caught

caught:
	@echo caught
	@echo options are,
	@echo make init
	@ echo make push \| push code to server
	@echo make pull \| pull code from server

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
