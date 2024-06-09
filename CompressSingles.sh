for var in "$@"
do
myPath="$(pwd $var)"
cd "$myPath"
zip -r -X "${var}".zip "${var}"
done
