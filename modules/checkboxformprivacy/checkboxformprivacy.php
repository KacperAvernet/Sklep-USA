<?php
if (!defined('_PS_VERSION_'))
{
  exit;
}
class CheckboxFormPrivacy extends Module

{

	public function __construct(){

		$this->name = 'checkboxformprivacy';

		$this->tab = 'front_office_features';

		$this->version = '1.0';

		$this->author = 'AVERNET';

		$this->need_instance = 1;

        $this->bootstrap = true;


		parent::__construct(); 

		$this->displayName = $this->l('Checkbox Form Privacy');

		$this->description = $this->l('Add checkbox privacy to contact form'); 

		$this->confirmUninstall = $this->l('Are you sure you want to uninstall?'); 

	}

	public function install(){

		if (!parent::install() || !$this->registerHook('displayCheckboxPrivacy') || !$this->registerHook('contactFormAccess') ) {
            return false;
        }

        return true;

	}

	public function uninstall(){ 
       
		return ( $this->unregisterHook('displayCheckboxPrivacy') && $this->unregisterHook('contactFormAccess') && parent::uninstall() );

	}
    public function getContent()
{
    $output = null;
 
    if (Tools::isSubmit('submit'.$this->name))
    {
        $my_module_name = strval(Tools::getValue('LABEL_PRIVACY_DATA_PERSONAL'));
        $active_switch = strval(Tools::getValue('ACTIVE_PRIVACY_DATA_PERSONAL'));
        if (!$my_module_name
          || empty($my_module_name)
          || !Validate::isGenericName($my_module_name))
            $output .= $this->displayError($this->l('Invalid Configuration value'));
        else
        {
            Configuration::updateValue('LABEL_PRIVACY_DATA_PERSONAL', $my_module_name);
            Configuration::updateValue('ACTIVE_PRIVACY_DATA_PERSONAL', $active_switch);
            $output .= $this->displayConfirmation($this->l('Settings updated'));
        }
    }
    return $output.$this->displayForm();
}
public function displayForm()
{
    // Get default language
    $default_lang = (int)Configuration::get('PS_LANG_DEFAULT');
     
    // Init Fields form array
    $fields_form[0]['form'] = array(
        'legend' => array(
            'title' => $this->l('Settings'),
        ),
        

        'input' => array(
            array(
                'type' => 'switch',
                'label' => $this->l('Display chcecbox '),
                'name' => 'ACTIVE_PRIVACY_DATA_PERSONAL',
                'values' => array(
                     array(
                        'id' => 'active_on',
                        'value' => 1,
                        'label' => $this->l('Enabled')
                    ),
                    array(
                        'id' => 'active_off',
                        'value' => 0,
                        'label' => $this->l('Disabled')
                    )
                ),
               
            ),
            array(
                'type' => 'textarea',
                'label' => $this->l('Label Checkbox'),
                'name' => 'LABEL_PRIVACY_DATA_PERSONAL',
                'size' => 30,
                'required' => true
            )
             
        ),


        'submit' => array(
            'title' => $this->l('Save'),
            'class' => 'btn btn-default pull-right'
        )
    );
     
    $helper = new HelperForm();
     
    // Module, token and currentIndex
    $helper->module = $this;
    $helper->name_controller = $this->name;
    $helper->token = Tools::getAdminTokenLite('AdminModules');
    $helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
     
    // Language
    $helper->default_form_language = $default_lang;
    $helper->allow_employee_form_lang = $default_lang;
     
    // Title and toolbar
    $helper->title = $this->displayName;
    $helper->show_toolbar = true;        // false -> remove toolbar
    $helper->toolbar_scroll = true;      // yes - > Toolbar is always visible on the top of the screen.
    $helper->submit_action = 'submit'.$this->name;
    $helper->toolbar_btn = array(
        'save' =>
        array(
            'desc' => $this->l('Save'),
            'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.
            '&token='.Tools::getAdminTokenLite('AdminModules'),
        ),
        'back' => array(
            'href' => AdminController::$currentIndex.'&token='.Tools::getAdminTokenLite('AdminModules'),
            'desc' => $this->l('Back to list')
        )
    );
     
    // Load current value
    $helper->fields_value['LABEL_PRIVACY_DATA_PERSONAL'] = Configuration::get('LABEL_PRIVACY_DATA_PERSONAL');
    $helper->fields_value['ACTIVE_PRIVACY_DATA_PERSONAL'] = Configuration::get('ACTIVE_PRIVACY_DATA_PERSONAL');
     
    return $helper->generateForm($fields_form);
}


    public function hookDisplayCheckboxPrivacy()
    {
       
        $this->smarty->assign(array(
            'label_privacy' =>  Configuration::get('LABEL_PRIVACY_DATA_PERSONAL'),
            'active_privacy' =>  Configuration::get('ACTIVE_PRIVACY_DATA_PERSONAL')
        ));
        return $this->display(__FILE__, 'checkboxformprivacy.tpl');
       
    }

     public function hookContactFormAccess() {

        // if (! Tools::isSubmit('submitMessage')) {
          
        //     return 1;
        // }

        // if (! Configuration::get('ACTIVE_PRIVACY_DATA_PERSONAL', 0)) {
        //     return 1;
        // }

        // if (!Tools::getValue('privacy_personal_data')) {
        //     $this->errors[] = Tools::displayError('Not checked chceckbox privacy_personal_data');
        //     return 0;
        // }

        // return 1;
         //  $this->errors[] = Tools::displayError('Not checked chceckbox privacy_personal_data');
         // return 0;
    }




}    
   
?>