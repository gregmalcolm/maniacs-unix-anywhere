IRB.conf[:HISTORY_FILE]='../tmp/irb_history'

def reload!
  load './code.rb'
end

def n
  `./scripts/next`
end

def b
  `./scripts/back`
end
