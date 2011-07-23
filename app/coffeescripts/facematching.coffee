jQuery(document).ready -> 
  jQuery('#show_result').click -> 
    if !jQuery('input:radio[checked=true]').val()
      alert('Please select any button') 
    else
      jQuery.getJSON(
        jQuery(this).attr('href')
        person_id:jQuery(this).attr('ref')
        game_answer:jQuery('input:radio[checked=true]').val()
        (data)-> 
          ans = if data.ans==true then 'right' else 'wrong'
          alert("Your are "+ans)
          window.location='/games/new'
      ) 
    return false
    
