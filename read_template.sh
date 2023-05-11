set -e
for f in 'LaTeX Homework.tex'; do
	# more recent intellij will now show up first
	F_PATH=$(find $HOME/Library/Application\ Support/JetBrains/ -name "${f}" | sort -r)
	cp "$F_PATH" .
done; 

git add -A
git commit -m "Update templates"
git push
