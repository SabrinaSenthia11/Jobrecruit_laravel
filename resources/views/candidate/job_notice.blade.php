@extends('front.layout.app')

@section('main_content')

<div class="page-top">
    <div class="bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Job Notifications</h2>
            </div>
        </div>
    </div>
</div>

<div class="page-content user-panel">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-12">
                <div class="card">
                    @include('candidate.sidebar')
                </div>
            </div>
            <div class="col-lg-9 col-md-12">
                <div class="card">
                    <div class="card-header">
                        Featured
                    </div>

                    <div class="card-body" id="data">
                        <h5 class="card-title">Congratulations!</h5><hr class="mb-2">
                        <p class="card-text">Dear {{Auth::user()->name}},</p>
                        <p>{{$interview->message}} For the post of <strong>{{$job->title}}</strong> at <strong>{{$interview->datetime}}</strong>.</p>
                        <p> Your Candidate id is {{$interview->candidate_id}}.</p>
                        <p>Please bring your cv and necessary documents with you. </p>
                        <p><strong>Thank You</strong></p>
                    </div>
                    <button  class="print-button bg-success" onclick="printData();" style="font-size: 16px; width: 100px;" >Print</button>
                </div>
                <script>
                    function printData() {
                        var originalContent = document.body.innerHTML;
                        var data = document.getElementById('data').innerHTML;

                        document.body.innerHTML = data;
                        window.print();
                        document.body.innerHTML = originalContent;
                    }
                </script>
            </div>
        </div>
    </div>
</div>

@endsection
