require "tty/prompt/vim/version"
require "tty/prompt"

module TTY::Prompt::Vim
  def keypress(event)
    case event.value
    when "k" then keyup(event)
    when "j" then keydown(event)
    else super(event)
    end
  end
end

[TTY::Prompt::List, TTY::Prompt::MultiList].each { |c| c.prepend(TTY::Prompt::Vim) }
