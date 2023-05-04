module ProjectsHelper
  def status_emoji(status)
    case status.to_sym
    when :pending
      '📝'
    when :in_progress
      '🚧'
    when :completed
      '✅'
    when :cancelled
      '📦'
    else
      '❓'
    end
  end
end
