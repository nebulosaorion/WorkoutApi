PYTHON := /home/mii/.pyenv/versions/workoutapi_clean/bin/python
WORKDIR := /home/mii/Documents/Projeto\ API/workout-api

run:
	@cd $(WORKDIR) && $(PYTHON) -m uvicorn workout_api.main:app --reload

run-migrations:
	@cd $(WORKDIR) && $(PYTHON) -m alembic upgrade head

create-migrations:
	@cd $(WORKDIR) && $(PYTHON) -m alembic revision --autogenerate -m "$(d)"