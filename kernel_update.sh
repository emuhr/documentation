read -p "Run 'sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB'" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB 
else
    echo "Aborting"
    exit
fi

read -p "Run 'sudo grub-mkconfig -o /boot/grub/grub.cfg'" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo grub-mkconfig -o /boot/grub/grub.cfg
else
    echo "Aborting"
    exit
fi

echo "Better reboot now..."
