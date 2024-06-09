for var in "$@"
do
myPath="$(pwd $var)"
cd "$myPath"
#kdialog --msgbox "\"$myPATH\""
#echo "$myPath"
zip -r -X "${var}".zip "${var}"
done
