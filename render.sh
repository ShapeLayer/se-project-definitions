rm -rf rendered
find . -name "*.puml" -exec sh -c 'plantuml -DPLANTUML_LIMIT_SIZE=20000 $0 -o "$(pwd)"/rendered/"${0%/*.puml}"' {} \; 
mv rendered/src/* rendered
rm -rf rendered/src
