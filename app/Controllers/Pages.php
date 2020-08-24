<?php

namespace App\Controllers;

class Pages extends BaseController
{
  public function index()
  {
    $data = [
      'title' => "Rizki's Home Page"
    ];
    return view('pages/home', $data);
  }
  public function about($nama = 'Rizki Ramadhan', $umur = 18)
  {
    $data = [
      'title' => "About Me",
      'nama' => $nama,
      'umur' => $umur
    ];
    return view('pages/about', $data);
  }
  public function contact()
  {
    $data = [
      'title' => "Contact Us",
      'alamat' => [
        [
          'tipe' => 'Rumah',
          'alamat' => 'Jl. H Juhaman, Gg. H Niman, No.03',
          'kota' => 'Jakarta Timur'
        ],
        [
          'tipe' => 'Kantor',
          'alamat' => 'Jl. Pembangunan No.29',
          'kota' => 'Jakarta Utara'
        ]
      ]
    ];
    return view('pages/contact', $data);
  }
}
