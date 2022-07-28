sketchybar --add item battery right \
           --set battery update_freq=3 \
                         icon.drawing=off \
                         script="~/.config/sketchybar/plugins/power.sh" \
                         background.color=0xff3C3E4F \
                         background.padding_left=0

sketchybar --add item power_logo right \
           --set power_logo icon= \
                 icon.color=0xff121219 \
                 label.drawing=off \
                 background.color=0xffB3E1A7


sketchybar --set power_logo icon="$ICON" --set battery label="${PERCENTAGE}%"

