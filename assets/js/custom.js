
 
// var windw = this;
//
// $.fn.followTo = function ( pos ) {
//     var $this = this,
//         $window = $(window);
//
//     $window.scroll(function(e){
//         if ($window.scrollTop() > pos) {
//             $this.css({
//                 position: 'absolute',
//                 top: pos + ($(window).height() / 2)
//             });
//         } else {
//             $this.css({
//                 position: 'fixed',
//                 top: '50%'
//             });
//         }
//     });
// };
//
// $('#cartadd').followTo(2000);

var elementPosition = $('#cartadd').offset();

// $(window).scroll(function(){
//     if($(window).scrollTop() > elementPosition.top){
//         $('#cartadd').css('position','fixed').css('top','50');
//     } else {
//         $('#cartadd').css('position','absolute');
//     }
// });


$('.input-number-increment').click(function() {
  var $input = $(this).parents('.input-number-group').find('.input-number');
  var val = parseInt($input.val(), 10);
  $input.val(val + 1);
});

$('.input-number-decrement').click(function() {
  var $input = $(this).parents('.input-number-group').find('.input-number');
  var val = parseInt($input.val(), 10);
  console.log(val);
  $input.val(val - 1);
})


