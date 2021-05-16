<?php

namespace App\Http\Livewire;

use App\Models\Currency;
use Illuminate\Http\Client\Request;
use Illuminate\Support\Facades\Http;
use Livewire\Component;

class Exchange extends Component
{
    protected $rate;
    public Currency $currency;
    public $result;
    public $sum;
    public $selected;

    protected $rules = [
        'currency.sum' => 'required',
        'currency.value' => 'required|string',
        'currency.selected' => 'required',
    ];

    public function __construct($id = null, $name = 'Yura')
    {
        parent::__construct($id);
        $today = Http::get(getenv('API_PRIVATANK'));
        $this->rate = $today->json();
        $this->currency = Currency::make();
    }

    public function convert()
    {
        $this->result = floatval($this->currency['selected']) * $this->currency['sum'];
    }

    public function render()
    {
        return view('livewire.exchange', ['rate' => $this->rate, 'total' => $this->result]);
    }
}
