# track_sol_price_while_loop
### requires:
1. `bash` or some other shell (for those unfamiliar with operating systems, your OS comes with a shell installed enter `echo $SHELL` in your terminal to see which shell you're using as default), change path on ln 1 if using different shell e.g. macOS would use `zsh` so you'd change ln 1 path to:
```bash
#!/bin/zsh
```
2. `jq, curl, awk, echo, bc, say, sleep` enter the following command in your terminal to see if you have all installed (all of these come with most modern, consumer OS'):
```bash
which jq curl awk echo bc say sleep
```
### run:
run the following command with numbers for low and high to run script.
```bash
./run.sh [low] [high]
```
script will use `/bin/say` to say price out loud when you go below/above respective thresholds. if you get an API failure then you'll have to find another free API to get recent `$SOL` price and then unpack its return with `jq`.