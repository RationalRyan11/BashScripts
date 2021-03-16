#This is the third exercise

dateformat=$(date +%F)
echo "The date is $dateformat."

#Move into test_pics folder
cd test_pics/

#Use loop to rename files
#Just echoing them for now
for NAME in $(ls); do

if [ "$(file $NAME|grep jpg)" ]; then

echo "Renaming ${NAME} to ${NAME%.*}.jpg"
#mv ${NAME} ${NAME%.*}.gif

else

echo "No Change For ${NAME}"

fi
done