# cleaning up root partition by removing package cache and orphan packages
sudo pacman -Sc
sudo pacman -Rns $(pacman -Qtdq)

# clean systemd journal
# sudo journalctl --vacuum-size=50M
# set journal limit in config file: SystemMaxUse=50M
# sudo micro /etc/systemd/journald.conf
