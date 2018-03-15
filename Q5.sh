echo "Logged user and his/her logname"
x=$(logname)
y=$(who)
echo "Currently logged user and his/her logname : $y and $x"
echo ""
echo "Current shell"
echo $SHELL
echo ""
echo "Home directory"
echo $HOME
echo ""
echo "Operating system type"
x=$(arch)
echo "Operating system type : $x"
echo ""
echo "Current path setting"
echo $PATH
echo ""
echo "Current working directory"
echo $pwd
echo ""
echo "Currently logged number of users"
echo $users