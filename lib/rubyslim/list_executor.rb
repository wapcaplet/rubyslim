require "rubyslim/statement"
require "rubyslim/statement_executor"
require "rubyslim/slim_error"

class ListExecutor
  def initialize()
    @executor = StatementExecutor.new
  end

  def execute(instructions)
    results = []
    instructions.each do |instruction|
      result = Statement.execute(instruction, @executor)
      results << result
      if result[1] =~ /^STOP/
        return results
      end
    end
    return results
  end
end
