dirs:
	mkdir notebooks
	mkdir notebooks/data

run:
	jupyter notebook --ip 0.0.0.0 --no-browser notebooks

requirements:
	python -m pip install --upgrade pip
	pip install --no-cache-dir -r requirements.txt 
	jupyter contrib nbextension install --user
	jupyter nbextension enable code_prettify/code_prettify 
	jupyter nbextension enable toc2/main
	jupyter nbextension enable collapsible_headings/main