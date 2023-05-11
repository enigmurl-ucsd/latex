set -e
for f in 'LaTeX Homework.tex'; do
	# more recent intellij will now show up first by virtue of IntelliJ naming convention
	F_PATH=$(find $HOME/Library/Application\ Support/JetBrains/ -name "${f}" | sort -r | head -n 1)
	cp "$F_PATH" .
done;

git add -A
git commit -m "Update templates"
git push
