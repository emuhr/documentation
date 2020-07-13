## kernel update
Should the kernel be updated during a pacman -Suy the following steps are neccessary for GRUB to function properly afterwards

- Install GRUB (again)
```sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB```

- Update GRUB configuration
```sudo grub-mkconfig -o /boot/grub/grub.cfg```
