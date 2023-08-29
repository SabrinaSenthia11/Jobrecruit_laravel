<style>
    .nested-rows {
        display: flex;
        flex-direction: column;
        gap: 10px;
        /* Adds spacing between "rows" */
    }

    .rowstyle {
        display: flex;
        justify-content: space-between;
        background-color: #f0f0f0;
        /* Optional: Add background color for visual separation */
        padding: 5px;
        /* Optional: Add padding for spacing within "rows" */
    }
</style>

@extends('front.layout.app')

@section('main_content')

<div class="page-top">
    <div class="bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Applications and Applicants Report</h2>
            </div>
        </div>
    </div>
</div>

<div class="page-content user-panel">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-12">
                <div class="card">
                    @include('company.sidebar')
                </div>
            </div>


            <div class="col-lg-9 col-md-12">
                <div id="data">

                    <div class="col-xl-4">
                        <ul class="list-unstyled">
                            <li class="text" style="font-size: 18px;"><span class="fw-bold">Company Recruit Report</span></li>
                            <li class="text"><span class="fw-bold">From: </span>Recruit Team </li>
                            <li class="text"><span class="fw-bold"> </span> </li>
                        </ul>
                    </div>
                    <h4>All Job Posts List</h4>
                    <div class="table-responsive row my-2 mx-1 justify-content-center">
                        <table class="table  table-striped table-bordered">
                            <thead style="background-color:#935959 ;" class="text-white">
                                <tr>
                                    <th>SL</th>
                                    <th>Job Title</th>
                                    <th>Job Category</th>
                                    <th>Job Location</th>
                                    <th>Posted on</th>
                                    <th>Total Applicants</th>
                                    <th>Candidate Name</th>
                                    <th>Candidate Email</th>
                                    <th>Camdidate Phone</th>
                                    <th>Apply Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($jobs as $key=>$job)
                                @php
                                $applicants = App\Models\CandidateApplication::where('job_id', $job->id)->get();
                                @endphp
                                <tr>

                                    <!-- <td>{{ $loop->iteration }}</td> -->
                                    <th scope="row">{{$key+1}}</th>
                                    <td>{{ $job->title }}</td>
                                    <td>{{ $job->rJobCategory->name }}</td>
                                    <td>{{ $job->rJobLocation->name }}</td>
                                    <td>{{ $job->created_at->format('Y-m-d ')}}</td>
                                    <td>
                                        <a href="{{ route('company_candidate_report', $job->id) }}" class="badge  text-black " style="text-align: center;">{{$applicants->count()}}</a>
                                    </td>
                                  
                                    <td >
                                                                              
                                                @foreach($applicants as $applicant)
                                                @php
                                                $candidate = App\Models\Candidate::where('id', $applicant->candidate_id)->first();
                                                @endphp
                                                {{$candidate->name}} <br>
                                                @endforeach                                        
                                    </td>
                                    <td>
                                        @foreach($applicants as $applicant)
                                        @php
                                        $candidate = App\Models\Candidate::where('id', $applicant->candidate_id)->first();
                                        @endphp
                                        {{$candidate->email}}
                                        @endforeach
                                    </td>
                                    <td>
                                        <span>
                                        @foreach($applicants as $applicant)
                                        @php
                                        $candidate = App\Models\Candidate::where('id', $applicant->candidate_id)->first();
                                        @endphp
                                        {{$candidate->phone}}
                                        @endforeach
                                    </span>
                                    </td>

                                    <td >                                   
                                           
                                                @foreach($applicants as $applicant) 
                                                @php
                                                $candidate = App\Models\Candidate::where('id', $applicant->candidate_id)->first();
                                                @endphp
                                                {{ $applicant->created_at->format('Y-m-d ') }} <br>
                                            
                                                
                                                @endforeach
                                          
                                          
                                    </td>

                                    <!-- 
                                      @foreach($applicants as $applicant)
                                        @php
                                        $candidate = App\Models\Candidate::where('id', $applicant->candidate_id)->first();
                                        @endphp
                                        <td>
                                        <tr>  
                                        <td>{{$candidate->name}}</td>                                   
                                        <td>{{$candidate->email}}</td>
                                        <td>{{$candidate->phone}}</td> 
                                        <td>{{$candidate->created_at}}</td> 
                                                   </tr>    
                                                </td>                          
                                    @endforeach -->

                                    
                                 
                                </tr>

                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-xl-10">
                            <p><strong>Thank you</strong>.</p>
                            <p><strong>Contact for more information</strong>.</p>
                        </div>
                    </div>
                </div>
                <button class="print-button bg-success" onclick="printData();" style="font-size: 16px; width: 100px;">Print</button>
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
@endsection