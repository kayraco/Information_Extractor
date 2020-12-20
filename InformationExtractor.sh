#!/bin/bash
clear
cd $HOME
if [ -d $1 ]
then 
	cd $1
else 
	mkdir $1
	cd $1
fi
if [ ! -e extractor.log ]
then
       touch extractor.log
fi
if [ ! -e Information ]
	echo "Information file already exists" > extractor.log
then 
	touch Information
	echo "Information file is created" > extractor.log
fi
chmod u=rw Information
chmod g=r Information
chmod o= Information
#should i chmod extractor.log too? since if it exists it can be changed from the outside
echo "Access right changed for Information file" >> extractor.log
who -q | grep -oh "\w*[abcd]\w*" > Information
echo "List of user names has been added to the Information file" >> extractor.log
days=$(who | wc -l)
echo "The number of found users is: $days" >> extractor.log
echo "Execution of InformationExtractor script has ended successfully!"
