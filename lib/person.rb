class Person

  attr_reader :name
  attr_accessor :happiness, :hygiene, :bank_account

  @@names ||=[]

  def initialize(name)
    @name = name
    @@names << name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
 
  def happiness=(total)
    if total > 10
      @happiness = 10
    elsif total < 0
      @happiness = 0
    else
      @happiness = total
    end
  end

  def hygiene=(total)
    if total > 10
      @hygiene = 10
    elsif total < 0
      @hygiene = 0
    else
      @hygiene = total
    end
  end 

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @bank_account = @bank_account + salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene+=4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene-=3)
    self.happiness=(@happiness+=2)
    self.happy?
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness+=3
    person.happiness+=3
    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics" 
      self.happiness-=2
      person.happiness-=2
      return 'blah blah partisan blah lobbyist' 

    elsif topic == "weather"
      self.happiness+= 1 
      person.happiness+= 1 
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end

  end

end
