<?php
/**
 * Defines the HomePage page type
 */
 
class ServicesPage extends Page {
	public static $db = array(
		'SideContent' => 'HTMLText'
	);

	public static $has_one = array(
	    "Sidebar" => "WidgetArea",
		 "PageBanner" => "Image",
		 "AboutBanner" => "Image",
    );
     
    function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields->addFieldToTab("Root.Content.Widgets", new WidgetAreaEditor("Sidebar"));
	$fields->addFieldToTab('Root.Content.PageBanner', new ImageField('PageBanner', 'Page Banner'));
	$fields->addFieldToTab('Root.Content.AboutBanner', new ImageField('AboutBanner', 'About Banner'));
	$fields->addFieldToTab("Root.Content.Sidebar", new HTMLEditorField('SideContent','Sidebar content'));
    return $fields;
	
    }
 
}
 
class Services_Controller extends Page_Controller {
	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates
		// instead of putting Requirements calls here.  However these are
		// included so that our older themes still work
		Requirements::themedCSS("layout"); 
		Requirements::themedCSS("typography"); 
		Requirements::themedCSS("form"); 
		Requirements::themedCSS("menu"); 
		Requirements::themedCSS("compress");
		Requirements::themedCSS("style");
        Requirements::javascript("themes/besek/js/menu.js");
		Requirements::javascript("themes/besek/js/s3SliderPacked.js");
		Requirements::javascript("themes/besek/js/s3Slider.js");
		Requirements::javascript("themes/besek/js/posnBanner.js");
		Requirements::javascript("themes/besek/js/prototype.js");
		Requirements::javascript("themes/besek/js/behaviour.js");
		Requirements::javascript("themes/besek/js/prototype_improvements.js");
		Requirements::javascript("themes/besek/js/i18n.js");
		Requirements::javascript("themes/besek/js/en_US.js");
		Requirements::javascript("themes/besek/js/Validator.js");
		Requirements::javascript("themes/besek/js/compress.js");
		Requirements::javascript("themes/besek/js/expansion_embed.js");
		Requirements::javascript("themes/besek/js/FeatureLoader.js");
	    Requirements::javascript("themes/fancypants/js/l10n.js");
		Requirements::javascript("themes/fancypants/js/jquery_002.js");
		Requirements::javascript("themes/fancypants/js/jquery_003.js");
		Requirements::javascript("themes/fancypants/js/jquery_008.js");
		Requirements::javascript("themes/fancypants/js/jquery_005.js");
		Requirements::javascript("themes/fancypants/js/galleria.js");
		Requirements::javascript("themes/fancypants/js/jquery.js");
		Requirements::set_write_js_to_body(false);
	}
		function LatestNews($num=3)  {
    $news = DataObject::get_one("BlogHolder");
     return ($news) ? DataObject::get("BlogEntry", "ParentID = $news->ID", "Date DESC", "", $num) : false;
    } 	
}

