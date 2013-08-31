class Bob
  def hey(msg)
    msg = Message.new(msg)
    if msg.silence?
      'Fine. Be that way.'
    elsif msg.shouting?
      'Woah, chill out!'
    elsif msg.question?
      'Sure.'
    else
      'Whatever.'
    end
  end
end

class Message < Struct.new(:msg)
  def question?
    msg.end_with?('?')
  end

  def shouting?
    msg == msg.upcase
  end

  def silence?
    msg.to_s.empty?
  end
end
