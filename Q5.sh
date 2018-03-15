x=$(lsb_release -a)
echo "Show all available shells"
echo ""
cat /etc/shells
echo "computer CPU information like processor type, speed"
echo ""
echo $(sudo dmidecode -t 4)
echo "memory information"
echo ""
echo $(free -m)
echo "hard disk information like size of hard-disk, cache memory, model "
echo ""
echo $(sudo dmidecode -t memory)
echo "File system (Mounted)"
echo ""
echo $(sudo fdisk -l)
