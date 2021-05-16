<div>
    <h3>Exchange calculator</h3>
    <hr>
    <h4>{{$total??0}} uah</h4>
    <form wire:submit.prevent="convert">
        <select  wire:model="currency.selected" class="form-control">
            <option value="">Select currency</option>
            @foreach ($rate as $item)
                <option value="{{$item['buy']}} ">{{$item['ccy']}}</option>
            @endforeach
        </select>
        <hr>
        <input type="number"  wire:model="currency.sum" class="form-control">
        <hr>
        <button type="submit" class="btn btn-primary btn-block">Convert</button>
    </form>
</div>
