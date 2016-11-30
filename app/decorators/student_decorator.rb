class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    notes = subject_item.subject_item_notes
    
    if notes.empty?
      '0.00'
    else
      average = notes.inject(0.0) { |sum,n| sum + n.value} / notes.size
      sprintf('%.2f', average)
    end
  end
end
