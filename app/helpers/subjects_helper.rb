module SubjectsHelper
  
  def which_page(subject, subjectId)
    lesson_pages = subject.pages.find(:all, :order => 'sequence_id')    
    lesson_pages.each { |lesson_page| 
      if lesson_page.pageable_type == "Question" 
        path = subject_question_path(subjectId, lesson_page.pageable.id)
        id =  lesson_page.pageable.id 
      elsif lesson_page.pageable_type == "Instruction"
        path = subject_question_path(subjectId, lesson_page.pageable.id)
        # id = lesson_.pageable.id
      end
      }
  end
end
