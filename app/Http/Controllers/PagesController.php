<?php 

namespace App\Http\Controllers;

class PagesController extends Controller
{
	public function getIndex()
	{
		return view('pages.welcome');
	}

	public function getAbout()
	{
		$first = 'Alex';
		$last = 'Curtis';
		$data['fullname'] = $first . ' ' . $last;
		$data['email'] = 'alex@curtis.com';
		return view('pages.about')->withData($data);
	}

	public function getContact()
	{
		return view('pages.contact');
	}
}