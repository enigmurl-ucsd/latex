set -e
for f in 'LaTeX Homework.tex'; do
	F_PATH=$(find $HOME/Library/Application\ Support/JetBrains/ -name "${f}" -print -quit)
	cp "$F_PATH" .
done; 

git add -A
git commit -m "Update templates"
git push
