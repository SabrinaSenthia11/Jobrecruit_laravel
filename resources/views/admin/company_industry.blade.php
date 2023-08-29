@extends('admin.layout.app')

@section('heading', 'Company Industries')

@section('button')
<div>
    <a href="{{ route('admin_company_industry_create') }}" class="btn btn-dark"><i class=""></i> Add New</a>
</div>
@endsection

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="example1">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Name</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($company_industries as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td class="pt_10 pb_10">
                                        <a href="{{ route('admin_company_industry_edit',$item->id) }}" class="btn btn-success btn-sm">Edit</a>
                                        <a href="{{ route('admin_company_industry_delete',$item->id) }}" class="btn btn-danger btn-sm" onClick="return confirm('Are you sure?');">Delete</a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection