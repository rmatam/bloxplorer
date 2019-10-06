gh-pages:
	git checkout gh-pages
	rm -rf _images _sources _static
	git checkout master bloxplorer docs README.rst
	(cd docs && make html)
	mv -fv docs/_build/html/* ./
	rm -rf bloxplorer docs README.rst
	git add -A
	git commit -m "Generated gh-pages"
	git push
	git checkout master