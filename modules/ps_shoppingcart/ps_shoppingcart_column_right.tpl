
<!-- #cart-product-list > blockcart >header {
  display: none:
}   -->

<div class="cartadd">
<div id="cart-product-list">
  <div class="blockcartright cart-preview" data-refresh-url="{$refresh_url}">
     {if $cart.products_count > 0}

      <div class="product-list plist">
          <div class="product-content-box tvscroll-container">
              {foreach from=$cart.products item=product}
                  <div class="product-wrapper items row ">
                 <div class="col-md-9">   
                    <span class="product-quantity">{$product.quantity}</span>
                    <span class="product-name">{$product.name}</span>
                  </div>
                  <div class="col-md-3">
                    <span class="product-price">{$product.price}</span>
                    <a  class="remove-from-cart"
                        rel="nofollow"
                        href="{$product.remove_from_cart_url}"
                        data-link-action="delete-from-cart"
                        data-id-product="{$product.id}"
                        title="{l s='remove from cart' d='Shop.Theme.Actions'}"
                    >
                        <!-- {l s='Remove' d='Shop.Theme.Actions'} -->
                                            <i class="material-icons float-xs-right trashcan">delete</i>
                                        
                    </a>
                    {if $product.customizations|count}
                        <div class="customizations">
                            <ul>
                                {foreach from=$product.customizations item='customization'}
                                    <li>
                                        <span class="product-quantity">{$customization.quantity}</span>
                                        <a href="{$customization.remove_from_cart_url}" title="{l s='remove from cart' d='Shop.Theme.Actions'}" class="remove-from-cart" rel="nofollow">{l s='Remove' d='Shop.Theme.Actions'}</a>
                                        <ul>
                                            {foreach from=$customization.fields item='field'}
                                                <li>
                                                    <span>{$field.label}</span>
                                                    {if $field.type == 'text'}
                                                        <span>{$field.text nofilter}</span>
                                                    {else if $field.type == 'image'}
                                                        <img src="{$field.image.small.url}">
                                                    {/if}
                                                </li>
                                            {/foreach}
                                        </ul>
                                    </li>
                                {/foreach}
                            </ul>
                        </div>
                {/if}
</div>
                  </div>
              {/foreach}
          </div>
           

          <div class="product-list-total-info cartinfo">
            <hr class="separator">
             <!--  <div class="product-list-subtotal-prod subprod">{l s='Subtotal' d='Shop.Theme.Checkout'}<span> </span><span class="product-price pprice">{$cart.subtotals.products.value}</span></div> -->

              <div class="product-list-subtotal-shipping subship">{l s='Shipping' d='Shop.Theme.Checkout'}<span> </span><span class="product-price pprice">{$cart.subtotals.shipping.value}</span></div>

              <div class="product-list-subtotal-tax subtax">{l s='Tax' d='Shop.Theme.Checkout'}<span> </span><span class="product-price pprice">{$cart.subtotals.tax.value}</span></div>

              <div class="product-list-subtotal-excluding-text subtxt">{l s='Total' d='Shop.Theme.Checkout'}<span> </span><span class="product-price pprice">   {$cart.totals.total_excluding_tax.value}</span></div>

              <div class="btn btn-primary product-list-checkout lcheck"><a href="{$cart_url}">{l s='Proceed To CheckOut' d='Shop.Theme.Checkout'}</a></div>
          </div>
     
      </div>
      {else}
      <div class="no-product">
          <h1>{l s='No Product in Cart' d='Shop.Theme.Checkout'}</h1>
      </div>
      {/if}
 </div>
</div>
</div>



            
              <!--  <DIV class="card cart-summary cartadd" id="cartadd">
                  
              <div class="cart-detailed-totals">

                <div class="card-block">
                                <div class="cart-summary-line" id="cart-subtotal-products">
                        <span class="label js-subtotal">
                                        1 item
                                    </span>
                        <span class="value">$8.00</span>
                                </div
                                                <div class="cart-summary-line" id="cart-subtotal-shipping">
                        <span class="label">
                                        Shipping
                                    </span>
                        <span class="value">Free</span>
                                      <div><small class="value"></small></div>
                                </div
                                    </div>

   

                <hr class="separator">

                <div class="card-block">
                  <div class="cart-summary-line cart-total">
                    <span class="label">Total (tax excl.)</span>
                    <span class="value">$8.00</span>
                  </div>

                  
                                          
                  <div class="cart-summary-line">
                    <small class="label">Taxes</small>
                    <small class="value">$0.72</small>
                  </div>
                </div>

                <hr class="separator">
              </div>

 
                        
  <div class="checkout cart-detailed-actions card-block">
          <div class="text-sm-center">
        <a href="http://food.vm6.pl/en/order" class="btn btn-primary">Proceed to checkout</a>
        
      </div>
      </div> -->

                    

                