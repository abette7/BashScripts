for var in "$@"
do
myPath="$(pwd $var)"
myName="$(basename "${var}")"
zipName="./${myName}.zip"
if [ -d "$arg" ]; then
    rPath="./${myName}/*"
else
    rPath="./${myName}"
fi
cd "$myPath";zip -qr -X "$zipName" "$rPath"
done
