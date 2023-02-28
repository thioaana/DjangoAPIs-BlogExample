install:
		# Install depedencies
		pip install pip --upgrade pip \
		&& pip install -r requirements.txt 

lint:
		pylint --disable=R,C *.py config/*.py

test:
		python manage.py test

format:
		# Formatting code with Black
		black *.py config/*.py

all :
		make install
		make format
		make lint