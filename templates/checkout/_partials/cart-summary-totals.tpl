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
<div class="card-block cart-summary-totals">

<!-- <div class="tip">
  <form action="http://food.vm6.pl/en/cart" method="post" class="add-to-cart-or-refresh">
      <input type="hidden" name="token" value="2d40f71cee43f5bab12859995b23a9bd">
      <input type="hidden" name="id_product" value="37" class="product_page_product_id">



      <div class="input-group bootstrap-touchspin addtocartdesc"><span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span><input type="text" name="qty" id="quantity_wantedkikjoi" value="" class="input-group inputsize" min="1" aria-label="Quantity">
        <span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span><span class="input-group-btn-vertical" type="number">
                            </span></div>

      <button class="btn btn-primary add-to-cart btncart" data-button-action="add-to-cart" type="submit">
        <i class="material-icons shopping-cart iconcart"></i>
        Add Tip
      </button>

      <div class="nav-item productdescriptionadd">
        <div id="product-description-short" itemprop="description"></div>
      </div>


    </form>
  </div> -->
  {block name='cart_summary_total'}
    <div class="cart-summary-line">
      <span class="label">{$cart.totals.total.label}</span>
      <span class="value">{$cart.totals.total.value}</span>
    </div>
  {/block}
  {block name='cart_summary_tax'}
    <div class="cart-summary-line">
      <span class="label sub">{$cart.subtotals.tax.label}</span>
      <span class="value sub">{$cart.subtotals.tax.value}</span>

    </div>
    <div class="cart-summary-line cart-total">
      <span class="label">{$cart.totals.total_including_tax.label}</span>
      <span class="value">{$cart.totals.total_including_tax.value}</span>
    </div>
  {/block}
 <!-- <div class="tip">
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
      </button>--> 
          <!-- {var_dump($delivery_options)} -->
           <!-- <script type="text/javascript">
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
          </div>
      <div class="nav-item productdescriptionadd">
        <div id="product-description-short" itemprop="description"></div>
      </div> -->


    </form>
  </div>

</div>
