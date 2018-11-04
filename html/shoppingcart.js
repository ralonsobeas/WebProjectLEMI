simpleCart.ready( function(){
  console.log( "simpleCart total: " + simpleCart.toCurrency( simpleCart.total() ) );
});
simpleCart.bind( 'update' , function(){
  console.log( "Whoa, the cart total is now at " + simpleCart.toCurrency( simpleCart.grandTotal() ) + "! Nice!" );
});
simpleCart.bind( 'afterSave' , function(){
  console.log( 'simpleCart just saved everything!' );
});
 
