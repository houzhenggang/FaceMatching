/* DO NOT MODIFY. This file was compiled Sat, 23 Jul 2011 07:04:30 GMT from
 * /home/rashmi/FaceMatching/app/coffeescripts/facematching.coffee
 */

(function() {
  jQuery(document).ready(function() {
    return jQuery('#show_result').click(function() {
      if (!jQuery('input:radio[checked=true]').val()) {
        alert('Please select any button');
      } else {
        jQuery.getJSON(jQuery(this).attr('href'), {
          person_id: jQuery(this).attr('ref'),
          game_answer: jQuery('input:radio[checked=true]').val()
        }, function(data) {
          var ans;
          ans = data.ans === true ? 'right' : 'wrong';
          return alert("Your are " + ans);
        });
      }
      return false;
    });
  });
}).call(this);
