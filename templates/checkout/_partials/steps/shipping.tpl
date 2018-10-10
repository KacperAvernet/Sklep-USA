{**
 * 2007-2018 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2018 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file='checkout/_partials/steps/checkout-step.tpl'}

{block name='step_content'}
  <div id="hook-display-before-carrier">
    {$hookDisplayBeforeCarrier nofilter}
  </div>

  <div class="delivery-options-list">
    {if $delivery_options|count}
      <form
        class="clearfix"
        id="js-delivery"
        data-url-update="{url entity='order' params=['ajax' => 1, 'action' => 'selectDeliveryOption']}"
        method="post"
      >
        <div class="form-fields">
          {block name='delivery_options'}
            <div class="delivery-options">
              {foreach from=$delivery_options item=carrier key=carrier_id}
                  <div class="row delivery-option">
                    <div class="col-sm-1">
                      <span class="custom-radio float-xs-left">
                        <input type="radio" name="delivery_option[{$id_address}]"  id="delivery_option_{$carrier.id}" onclick="javascript:yesnoCheck();" value="{$carrier_id}" {if $delivery_option == $carrier_id} checked{/if} >
                        <span></span>
                      </span>
                    </div>
                    <label for="delivery_option_{$carrier.id}" class="col-sm-11 delivery-option-2">
                      <div class="row">
                        <div class="col-sm-5 col-xs-12">
                          <div class="row">
                            {if $carrier.logo}
                            <div class="col-xs-3">
                                <img src="{$carrier.logo}" alt="{$carrier.name}" />
                            </div>
                            {/if}
                            <div class="{if $carrier.logo}col-xs-9{else}col-xs-12{/if}">
                              <span class="h6 carrier-name">{$carrier.name}</span>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                          <span class="carrier-delay">{$carrier.delay}</span>
                        </div>
                        <div class="col-sm-3 col-xs-12">
                          <span class="carrier-price">{$carrier.price}</span>
                        </div>
                      </div>
                    </label>
                  </div>
                  <div class="row carrier-extra-content"{if $delivery_option != $carrier_id} style="display:none;"{/if}>
                    {$carrier.extraContent nofilter}
                  </div>
                  <div class="clearfix"></div>
              {/foreach}
            </div>
          {/block}
<!--           <script type="text/javascript">

function yesnoCheck() {
    if (document.getElementById('delivery_option_39').checked) {
        document.getElementById('ifYes').style.display = 'block';
    }
    else document.getElementById('ifYes').style.display = 'none';

}

</script>

    <div id="ifYes" style="display:none">
        <div class="tip">
          <form action="http://food.vm6.pl/en/cart" method="post" class="add-to-cart-or-refresh" data-refresh-url="//food.vm6.pl/en/cart?ajax=1&action=refresh">
             <input type="hidden" name="token" value="3ca90faa2b8a829177110d055d848464">
            <input type="hidden" name="id_product" value="37" class="product_page_product_id">
            <input type="hidden" name="id_customization" value="0" id="product_customization_id">


            <div class="input-group bootstrap-touchspin addtocartdesc"><span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span><input type="text" name="qty" id="quantity_wantedkikjoi" value="" class="input-group inputsize" min="1" aria-label="Quantity">
              <span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span><span class="input-group-btn-vertical" type="number">
                                  </span></div>

            <button class="btn btn-primary add-to-cart btncart" data-button-action="add-to-cart" type="submit">
              <i class="material-icons shopping-cart iconcart"></i>
              Add Tip
            </button>
          </div> -->


              
       

          <div class="order-options">
            <div id="delivery">
              <label for="delivery_message">{l s='If you would like to add a comment about your order, please write it in the field below.' d='Shop.Theme.Checkout'}</label>
              <textarea rows="2" cols="120" id="delivery_message" name="delivery_message">{$delivery_message}</textarea>
            </div>

            {if $recyclablePackAllowed}
              <span class="custom-checkbox">
                <input type="checkbox" id="input_recyclable" name="recyclable" value="1" {if $recyclable} checked {/if}>
                <span><i class="material-icons rtl-no-flip checkbox-checked">&#xE5CA;</i></span>
                <label for="input_recyclable">{l s='I would like to receive my order in recycled packaging.' d='Shop.Theme.Checkout'}</label>
              </span>
            {/if}

            {if $gift.allowed}
              <span class="custom-checkbox">
                <input class="js-gift-checkbox" id="input_gift" name="gift" type="checkbox" value="1" {if $gift.isGift}checked="checked"{/if}>
                <span><i class="material-icons rtl-no-flip checkbox-checked">&#xE5CA;</i></span>
                <label for="input_gift">{$gift.label}</label >
              </span>

              <div id="gift" class="collapse{if $gift.isGift} in{/if}">
                <label for="gift_message">{l s='If you\'d like, you can add a note:' d='Shop.Theme.Checkout'}</label>
                <textarea rows="2" cols="120" id="gift_message" name="gift_message">{$gift.message}</textarea>
              </div>
            {/if}

          </div>
        </div>
        <button type="submit" class="continue btn btn-primary float-xs-right" name="confirmDeliveryOption" value="1">
          {l s='Continue' d='Shop.Theme.Actions'}
        </button>
      </form>
                <!-- <script type="text/javascript">
function yesnoCheck() {
    if (document.getElementById('delivery_option_39').checked) {
        document.getElementById('ifYes').style.display = 'block';
    }
    else document.getElementById('ifYes').style.display = 'none';

}

</script>
 -->
    <!-- <div id="ifYes" style="display:none">
        <div class="tip">
          <form action="http://food.vm6.pl/en/cart" method="post" class="add-to-cart-or-refresh" data-refresh-url="//food.vm6.pl/en/cart?ajax=1&action=refresh">
             <input type="hidden" name="token" value="{$static_token}">
            <input type="hidden" name="id_product" value="37" class="product_page_product_id">
            <input type="hidden" name="id_customization" value="0" id="product_customization_id">


            <div class="input-group bootstrap-touchspin addtocartdesc"><span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span><input type="text" name="qty" id="quantity_wantedkikjoi" value="" class="input-group inputsize" min="1" aria-label="Quantity">
              <span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span><span class="input-group-btn-vertical" type="number">
                                  </span></div>

            <button class="btn btn-primary add-to-cart btncart" data-button-action="add-to-cart" type="submit">
              <i class="material-icons shopping-cart iconcart"></i>
              Add Tip
            </button>
          </form>
        </div>
      </div> -->   
    {else}
      <p class="alert alert-danger">{l s='Unfortunately, there are no carriers available for your delivery address.' d='Shop.Theme.Checkout'}</p>
    {/if}
  </div>

  <div id="hook-display-after-carrier">
    {$hookDisplayAfterCarrier nofilter}
  </div>

  <div id="extra_carrier"></div>


{/block}
