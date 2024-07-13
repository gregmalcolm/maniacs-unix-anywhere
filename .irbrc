IRB.conf[:HISTORY_FILE]='../tmp/irb_history'

def reload!
  load './unix_anywhere.rb'
end

def r
  reload!
end

def n
  `./scripts/next`
end

def b
  `./scripts/back`
end
