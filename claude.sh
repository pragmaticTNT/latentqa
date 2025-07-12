#!/bash/bin

curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
apt-get install -y nodejs

npm install -g @anthropic-ai/claude-code

# Determine which port Claude Code is listening on
ps aux | grep claude-code
apt-get install lsof
lsof -i -P -n | grep LISTEN | grep claude # last time it was 54545, but it might be different every time


