@extends('admin.layout.app')

@section('heading', 'Dashboard')

@section('main_content')

<div class="row">
    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
            <!-- <div class="card-icon bg-success">
                <i class="far fa-user"></i>
            </div> -->
            <div class="card-wrap">
                <div class="card-header" style="color: green;">
                    <h3>Total Companies</h3>
                </div>
                <div class="card-body">
                    {{ $total_companies }}
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
            <!-- <div class="card-icon bg-success">
                <i class="fas fa-book-open"></i>
            </div> -->
            <div class="card-wrap">
                <div class="card-header" style="color: green;">
                    <h3>Total Candidates</h3>
                </div>
                <div class="card-body">
                    {{ $total_candidates }}
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
            <!-- <div class="card-icon bg-success">
                <i class="fas fa-bullhorn"></i>
            </div> -->
            <div class="card-wrap">
                <div class="card-header" style="color: green;">
                    <h3>Total Jobs</h3>
                </div>
                <div class="card-body">
                    {{ $total_jobs }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection