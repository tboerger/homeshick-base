begin
  require "pp"

  if File.basename($0) == "shef"
    raise LoadError.new
  else
    require "rubygems"
    require "pry"

    Pry.start
    exit
  end
rescue LoadError => e
  require "irb/completion"
  require "irb/ext/save-history"

  IRB.conf[:SAVE_HISTORY] = 10000
  IRB.conf[:HISTORY_FILE] = File.expand_path("~/.irb_history")
  IRB.conf[:PROMPT_MODE] = :SIMPLE
  IRB.conf[:INSPECT_MODE] = :pp
end

def t
  x = Time.now
  yield
  Time.now - x
end
