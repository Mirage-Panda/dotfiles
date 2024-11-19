# #!/bin/bash
# sketchybar --set $NAME icon="$(date '+%a %d. %b')" label="$(date '+%H:%M')"
#!/bin/bash

sketchybar --set $NAME label="$(date '+%a %b %-d %-H:%M')"
