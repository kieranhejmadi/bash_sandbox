#! /bin/bash

# get serial number of device and path of files
echo "Please ensure the device is on the same network before beginning (i.e. ONT secure)"
#sleep 1
echo "Please enter the serial number of the device"
read serial_number
echo "You entered  $serial_number, please confirm this is correct(y/n)"
read ans
if [[ $ans == "y" || $ans == "Y" ]]; then
	echo "continuing ..."
else 
	echo "Please run the script again .. exiting"
	exit
fi

#calculate device type
type="mk1c"
case  $type in
	mk1b)
		username="unknown"
		password="unknown"
		;;
	mk1c)
		username="minit"
		password="minit"
		;;
	grid)
		username="grid"
		password="grid"
		;;
	prom)
		username="prom"
		password="prom"
		;;
esac
echo -e "This device is:\nserial number = $serial_number\ndefault username = $username\ndefault password = $password\n"
# finding the files
echo "Paste the path to the bulk fast5 file to transfer (smaller size = better)"
fast5_path="~/Documents/random_file.txt"
toml_path="/opt/ont/minknow/conf/package/sequencing/sequencing_MIN114_DNA_e8_2_400K.toml"
read fast5_path

# create a connection to the ont device
echo "connecting to device over port 22"
#sleep 1

$(scp $fast5_path "$username@$serial_number:/data/" )
$(scp "$username@$serial_number:$toml_path" ~/Documents/)
echo $?
# transfer files to device

# confirm correct permissions on device

# exit connection and check files are there
exit 0
