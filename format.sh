#!/bin/bash
if tidy -v &> /dev/null; then
  find . -type f -name \*\.html ! -path "./MathJax/*" ! -path "./reveal.js/*" ! -path "./archives/angelscript/docs/*" ! -name "google*.html" -exec tidy -i -m -q -w 80 -ashtml -utf8 {} \;
  find . -type f -name \*\.html ! -path "./MathJax/*" ! -path "./reveal.js/*" ! -path "./archives/angelscript/docs/*" ! -name "google*.html" -exec sed -i '/<meta name="generator"/d' {} \;
else
  echo ${0##*/}: tidy-html5 not found
fi
