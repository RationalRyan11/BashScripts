#This is the third exercise

#Get the date in correct format.
dateformat=$(date +%F)
echo "The date is $dateformat."

#Move into test_pics folder
cd test_pics/

#Use loop to rename files
#Just echoing them for now
for NAME in $(ls); do

#If the file is a jpg renames it
if [ "$(file $NAME|grep jpg)" ]; then

newname=$dateformat-${NAME}
echo "$newname"
echo "Renaming ${NAME} to ${NAME%.*}.jpg"

#mv ${NAME} ${NAME%.*}.gif

else

echo "No Change For ${NAME}"

fi
done

echo "All relevant files have been changed."