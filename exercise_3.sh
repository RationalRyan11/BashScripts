#This is the third exercise

#Get the date in correct format.
dateformat=$(date +%F)
echo "The date is $dateformat."

#Move into test_pics folder
cd test_pics/

#Use loop to rename files
#Just echoing them for now
for NAME in $(ls); do




#If the file is a jpg, rename it
if [ "$(file $NAME|grep jpg)" ]; then

#Determine what the new name will be
newname=$dateformat-${NAME}

#Replace it and send message stating so 
echo "Renaming ${NAME} to $newname.jpg"
mv ${NAME} $newname.jpg

else

echo "No Change For ${NAME}"

fi
done

echo "All relevant files have been changed."