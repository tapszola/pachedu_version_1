<?php
/**
 * Defines the PeoplePage page type
 */
 
class PeoplePage extends Page {
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
 
class PeoplePage_Controller extends Page_Controller {
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
		Requirements::set_write_js_to_body(false);
	}
		function LatestNews($num=3) {
    $news = DataObject::get_one("BlogHolder");
     return ($news) ? DataObject::get("BlogEntry", "ParentID = $news->ID", "Date DESC", "", $num) : false;
    } 	
}

