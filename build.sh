[ ! -d "build" ] && mkdir -p "build"
cd build || exit
pdflatex ../main.tex
pdflatex ../main.tex
pdflatex ../main.tex
echo "compilation succeeded"
#rm -r *.aux *.log *.synctex.gz *.toc *.out
mv -v main.pdf ../output/appunti-nucleare.pdf
cd .. && rm -r build
echo "Cleaning done."
open appunti-nucleare.pdf
