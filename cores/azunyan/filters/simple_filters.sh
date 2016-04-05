# Simple filter example outputs a matching string whenever !<cmd> is uttered in any tracked channel
# This functionality comes from bashbot.
filter_keyword()
{
   local -A keywords=(
      [nyaa]="I am Azunyan, hear me nyaaaaaaaaaaa~"
      [bacon]='ACTION gives '"$NAME"' bacon'
   )

   [ -n "${keywords[$2]}" ] && echo "${keywords[$2]}"
}

filter '!([^ ]+)' filter_keyword
