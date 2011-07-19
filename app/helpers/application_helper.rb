module ApplicationHelper

 def boolean_answer(answer)
   
   if answer==true
    "Right"
   elsif answer==false
    "Wrong"
   end
 end
end
