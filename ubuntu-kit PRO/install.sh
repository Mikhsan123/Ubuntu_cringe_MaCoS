#!/usr/bin/env bash

# Копируем темы, иконки, расширения
cp -r .themes/* ~/.themes/ 2>/dev/null || true
cp -r .icons/* ~/.icons/ 2>/dev/null || true
cp -r extensions/* ~/.local/share/gnome-shell/extensions/ 2>/dev/null || true

# Применяем настройки GNOME
dconf load / < gnome-settings.ini

# Перезагружаем оболочку GNOME (без логаута)
gnome-shell --replace & disown

echo "Дизайн применён! Если что-то не применилось — перелогинься."


