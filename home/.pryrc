Pry.config.editor = 'vim'

def t
  x = Time.now
  yield
  Time.now - x
end

if defined?(Rails) && Rails.env
  require 'logger'

  if defined?(ActiveRecord)
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Base.clear_active_connections!
  end

  if defined?(Hirb)
    Pry.config.print = proc do |output, value|
      Hirb::View.view_or_page_output(value) || Pry::DEFAULT_PRINT.call(output, value)
    end

    Hirb.enable
  end
end