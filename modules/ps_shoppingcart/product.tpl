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

{block name='product_miniature_item'}
    <article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}"
             data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
        <div class="thumbnail-container containerproduct">
            {block name='product_thumbnail'}
                {if $product.cover}
                    <a href="{$product.url}" class="thumbnail product-thumbnail">
                        <img
                                src="{$product.cover.bySize.home_default.url}"
                                alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                                data-full-size-image-url="{$product.cover.large.url}"
                        >
                    </a>
                {else}
                    <a href="{$product.url}" class="thumbnail product-thumbnail">
                        <img
                                src="{$urls.no_picture_image.bySize.home_default.url}"
                        >
                    </a>
                {/if}
            {/block}

            <div class="product-description productdescription1">
                {block name='product_name'}
                    {if $page.page_name == 'index'}
                        <h3 class="h3 product-title" itemprop="name"><a
                                    href="{$product.url}">{$product.name|truncate:30:'...'}</a></h3>
                    {else}
                        <h2 class="h3 product-title" itemprop="name"><a
                                    href="{$product.url}">{$product.name|truncate:30:'...'}</a></h2>
                    {/if}
                {/block}

                {block name='product_price_and_shipping'}
                    {if $product.show_price}
                        <div class="product-price-and-shipping">

                            {if $product.has_discount}
                                {hook h='displayProductPriceBlock' product=$product type="old_price"}
                                <span class="sr-only">{l s='Regular price' d='Shop.Theme.Catalog'}</span>
                                <span class="regular-price">{$product.regular_price}</span>
                                {if $product.discount_type === 'percentage'}
                                    <span class="discount-percentage discount-product">{$product.discount_percentage}</span>
                                {elseif $product.discount_type === 'amount'}
                                    <span class="discount-amount discount-product">{$product.discount_amount_to_display}</span>
                                {/if}
                            {/if}

                            {hook h='displayProductPriceBlock' product=$product type="before_price"}

                            <span class="sr-only">{l s='Price' d='Shop.Theme.Catalog'}</span>
                            <span itemprop="price" class="price">{$product.price}</span>


                            {hook h='displayProductPriceBlock' product=$product type='unit_price'}

                            {hook h='displayProductPriceBlock' product=$product type='weight'}
                            <form action="{$urls.pages.cart}" method="post" class="add-to-cart-or-refresh">
                                <input type="hidden" name="token" value="{$static_token}">
                                <input type="hidden" name="id_product" value="{$product.id}" class="product_page_product_id">
                                {*<input type="hidden" name="id_value" value="0">*}


                                <input
                                        type="text"
                                        name="qty"
                                        id="quantity_wanted"
                                        value="{$product.quantity_wanted}"
                                        class="input-group"
                                        min="{$product.minimal_quantity}"
                                        aria-label="{l s='Quantity' d='Shop.Theme.Actions'}"
                                >




                                <button class="btn btn-primary add-to-cart" data-button-action="add-to-cart" type="submit"
                                        {if $product.quantity < 1 }disabled{/if}>
                                    <i class="material-icons shopping-cart"></i>
                                    {l s='Add to cart' d='Shop.Theme.Actions'}
                                </button>
                                <a  class="remove-from-cart"
                                    rel="nofollow"
                                    href="{$product.remove_from_cart_url}"
                                    data-link-action="remove-from-cart"
                                    title="{l s='remove from cart' d='Shop.Theme.Actions'}"
                                >
                                    {l s='Remove' d='Shop.Theme.Actions'}
                                </a>
                            </form>
                        </div>
                    {/if}
                {/block}

                {*<div class="order__quantityWrap addtocartdesc">*}
                {*Quantity: <span class="menus__minus"><img class="imgplusminus"*}
                {*src="https://png.icons8.com/ios-glyphs/60/d55858/minus.png"></span>*}
                {*<input class="inputorder" type="number" min="0">*}
                {*<span class="menu__plus"> <form action="http://food.vm6.pl/koszyk" method="post" id="add-to-cart-or-refresh">*}
                {*<input type="hidden" name="token" value="23b64f021592df913e9e25efe4ff1ce2">*}
                {*<input type="hidden" name="id_product" value="22" id="product_page_product_id">*}
                {*<input type="hidden" name="id_customization" value="0" id="product_customization_id">*}
                {*<img class=" add-to-cart imgplusminus"*}
                {*data-button-action="add-to-cart"*}
                {*src="https://png.icons8.com/ios-glyphs/60/d55858/filled-plus-2-math.png"*}
                {*type="submit">*}
                {*</form></span>*}

                {*<div class="product-actions">*}


                {*</div>*}



                {*<input*}
                {*class="js-cart-line-product-quantity form-control addtocartdesc"*}
                {*data-down-url="http://food.vm6.pl/koszyk?update=1&amp;id_product=20&amp;id_product_attribute=0&amp;token=23b64f021592df913e9e25efe4ff1ce2&amp;op=down"*}
                {*data-up-url="http://food.vm6.pl/koszyk?update=1&amp;id_product=20&amp;id_product_attribute=0&amp;token=23b64f021592df913e9e25efe4ff1ce2&amp;op=up"*}
                {*data-update-url="http://food.vm6.pl/koszyk?update=1&amp;id_product=20&amp;id_product_attribute=0&amp;token=23b64f021592df913e9e25efe4ff1ce2"*}
                {*data-product-id="20" type="text" value="0" name="product-quantity-spin" min="0"*}
                {*style="display: inherit;">*}
                {*</span>*}

                {*</div>*}

                {block name='product_reviews'}
                    {hook h='displayProductListReviews' product=$product}
                {/block}

            </div>
            {*{block name='product_flags'}*}
            {*<ul class="product-flags">*}
            {*{foreach from=$product.flags item=flag}*}
            {*<li class="product-flag {$flag.type}">{$flag.label}</li>*}
            {*{/foreach}*}
            {*</ul>*}
            {*{/block}*}

            {*<div class="highlighted-informations{if !$product.main_variants} no-variants{/if} hidden-sm-down">*}
            {*{block name='quick_view'}*}
            {*<a class="quick-view" href="#" data-link-action="quickview">*}
            {*<i class="material-icons search">&#xE8B6;</i> {l s='Quick view' d='Shop.Theme.Actions'}*}
            {*</a>*}
            {*{/block}*}

            {*{block name='product_variants'}*}
            {*{if $product.main_variants}*}
            {*{include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}*}
            {*{/if}*}
            {*{/block}*}


        </div>
    </article>
{/block}
