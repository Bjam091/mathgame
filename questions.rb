class Questions
  attr_accessor :answer, :question

  def initialize    
    @firstnumber = rand(20)
    @secondnumber = rand(20)
    @answer = @firstnumber + @secondnumber
    @question = "What does #{@firstnumber} plus #{@secondnumber} equal?"

  end
end