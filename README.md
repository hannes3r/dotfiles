# My Dotfiles

## Dependencies


### bspwm
```bash
sudo dnf install bspwm sxhkd polybar nm-applet lxqt-policykit-agent flameshot alacritty rofi i3lock xfce4-clipman-plugin picom nitrogen dunst redshift-gtk plank
```

**Not in Repos**

[`light`](https://github.com/haikarainen/light)

### i3
```bash
sudo dnf install i3-gaps polybar nm-applet lxqt-policykit-agent flameshot alacritty rofi i3lock xfce4-clipman-plugin picom nitrogen dunst redshift-gtk
```
**Not in Repos**

[`light`](#Light)

---

## Utilities
*These tools are not included in the official repos*

### xcape
*Tool to remap modifier keys, i.e. to use super to open rofi*

Configuration of the tool is already build embedded into bspwmrc

Dependencies: `git gcc make pkgconfig libX11-devel libXtst-devel libXi-devel`
```bash
git clone https://github.com/alols/xcape.git
cd xcape
make
sudo make install
```

### Light
*Tool for backlight control*

Dependencies: `automake autoconf`
```bash
git clone https://github.com/haikarainen/light
./autogen.sh
./configure && make
sudo make install
```

### auto-cpufreq
*Helps with battery life by clocking down CPUs when not in need*
```bash
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
# Install auto-cpufreq to have it run as a daemon
sudo auto-cpufreq --install
```

#### Troubleshooting
If the tool doesn't seem to work, you need to edit kernel parameters
1. Edit /etc/default/grub
2. add `intel_pstate=disable` to `GRUB_CMDLINE_LINUX_DEFAULT`
3. run `update-grub` or `grub2-mkconfig -o /boot/grub2/grub.cfg`
4. Reboot

---

## Touchpad Configuration
`cat /etc/X11/xorg.conf.d/30-touchpad.conf`
```conf
Section "InputClass"
	Identifier "touchpad"
	MatchIsTouchpad "true"
	MatchDriver "libinput"
	Option "NaturalScrolling" "true"
	Option "Tapping" "on"
	Option "ClickMethod" "clickfinger"
EndSection
```
---

## Themes

### Rofi
*The files are also included in this repo, this step is optional to get the latest versions*

[Repository](https://github.com/adi1090x/rofi)
```bash
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi/
chmod +x setup.sh
./setup.sh
```

### Polybar
*The files are also included in this repo, this step is optional to get the latest versions*

[Repository](https://github.com/adi1090x/polybar-themes)
```bash
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
./setup.sh
```


