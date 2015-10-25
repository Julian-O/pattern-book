
pdf: *.md
	mkdir -p build
	pandoc --toc \
				 -s \
				 -V title="Madison Area Jugglers' Pattern Book" \
				 -V documentclass=book \
				 -V subtitle="Version 2.0: Draft" \
				 -V date="\today" \
				 -V geometry="margin=1in"\
				 -f markdown \
				 -t latex \
				 *.md \
				 -o build/majbook.pdf
clean:
	rm -rf build
