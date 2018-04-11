sudo wget https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.9.3.tar.xz ## Downloading the kernel
tar -xvJf linux-3.9.3.tar.xz
cd linux-3.9.3
make menuconfig  # Configuration of the Kernel
make
make modules     # Compiling the main Kernel
make modules_install #Compiling the kernel modules
make install  #Installing Kernal Modules
reboot
uname -r