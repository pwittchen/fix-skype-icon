# fix-skype-icon
Shell script to fix the Skype icon in Ubuntu

Skype doesn't have monochromatic tray icon by default, which doesn't look nice on Ubuntu (especially Gnome or Xfce WM). This script solves mentioned problem.

![Skype old icon](https://raw.githubusercontent.com/pwittchen/fix-skype-icon/master/images/skype-old-icon.png)

![Skype fixed icon](https://raw.githubusercontent.com/pwittchen/fix-skype-icon/master/images/skype-fixed-icon.png)

Project inspired by [fix-spotify-icon](https://github.com/faviouz/fix-spotify-icon), which automatically does task described at http://askubuntu.com/questions/503267/change-skype-tray-icon/549964#549964.

## Usage

To fix icon, just run:

```
curl https://raw.githubusercontent.com/pwittchen/fix-skype-icon/master/fix-skype-icon.sh | sh
```

To restore old Skype icon, run:

```
curl https://raw.githubusercontent.com/pwittchen/fix-skype-icon/master/restore-old-skype-icon.sh | sh
```
