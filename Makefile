
upload: iqscli.py setup.py
	rm -rf dist
	python setup.py sdist
	twine upload dist/*
