<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="@yield('seo_meta_description')">
    <title>print</title>

    <!-- <link rel="icon" type="image/png" href="{{ asset('uploads/'.$global_settings_data->favicon) }}" /> -->

    <!-- All CSS -->
    <link rel="stylesheet" href="{{ asset('dist-front/css/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('dist-front/css/bootstrap-datepicker.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('dist-front/css/animate.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('dist-front/css/magnific-popup.css') }}" />
    <link rel="stylesheet" href="{{ asset('dist-front/css/owl.carousel.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('dist-front/css/select2.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('dist-front/css/select2-bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('dist-front/css/all.css') }}" />
    <link rel="stylesheet" href="{{ asset('dist-front/css/meanmenu.css') }}" />
    <link rel="stylesheet" href="{{ asset('dist-front/css/iziToast.min.css') }}">
    <link rel="stylesheet" href="{{ asset('dist-front/css/spacing.css') }}" />
    <link rel="stylesheet" href="{{ asset('dist-front/css/style.css') }}" />

    <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet" />
</head>

<body>
    <!-- <div class="page-top">
        <div class="bg"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <hr><h2>Resume of "{{ $candidate_single->name }}"</h2><hr>
                </div>
            </div>
        </div>
    </div> -->

    <div class="page-content user-panel">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">

                    <h4 class="resume">Basic Profile</h4>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tr>
                                <th class="w-200">Photo:</th>
                                <td>
                                    @if($candidate_single->photo=='')
                                    <img src="{{ asset('uploads/default_candidate_photo.png') }}" alt="" class="w-100">
                                    @else
                                    <img src="{{ asset('uploads/'.$candidate_single->photo) }}" alt="" class="w-100">
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <th>Name:</th>
                                <td>{{ $candidate_single->name }}</td>
                            </tr>

                            @if($candidate_single->designation!=null)
                            <tr>
                                <th>Designation:</th>
                                <td>{{ $candidate_single->designation }}</td>
                            </tr>
                            @endif

                            <tr>
                                <th>Email:</th>
                                <td>{{ $candidate_single->email }}</td>
                            </tr>

                            @if($candidate_single->phone!=null)
                            <tr>
                                <th>Phone:</th>
                                <td>{{ $candidate_single->phone }}</td>
                            </tr>
                            @endif

                            @if($candidate_single->country!=null)
                            <tr>
                                <th>Country:</th>
                                <td>{{ $candidate_single->country }}</td>
                            </tr>
                            @endif

                            @if($candidate_single->address!=null)
                            <tr>
                                <th>Address:</th>
                                <td>{{ $candidate_single->address }}</td>
                            </tr>
                            @endif

                            @if($candidate_single->state!=null)
                            <tr>
                                <th>State:</th>
                                <td>{{ $candidate_single->state }}</td>
                            </tr>
                            @endif

                            @if($candidate_single->city!=null)
                            <tr>
                                <th>City:</th>
                                <td>{{ $candidate_single->city }}</td>
                            </tr>
                            @endif

                            @if($candidate_single->zip_code!=null)
                            <tr>
                                <th>Zip Code:</th>
                                <td>{{ $candidate_single->zip_code }}</td>
                            </tr>
                            @endif

                            @if($candidate_single->gender!=null)
                            <tr>
                                <th>Gender:</th>
                                <td>{{ $candidate_single->gender }}</td>
                            </tr>
                            @endif

                            @if($candidate_single->marital_status!=null)
                            <tr>
                                <th>Marital Status:</th>
                                <td>{{ $candidate_single->marital_status }}</td>
                            </tr>
                            @endif

                            @if($candidate_single->date_of_birth!=null)
                            <tr>
                                <th>Date of Birth:</th>
                                <td>{{ $candidate_single->date_of_birth }}</td>
                            </tr>
                            @endif

                            @if($candidate_single->website!=null)
                            <tr>
                                <th>Website:</th>
                                <td><a href="{{ $candidate_single->website }}" target="_blank">{{ $candidate_single->website }}</a></td>
                            </tr>
                            @endif

                            @if($candidate_single->biography!=null)
                            <tr>
                                <th>Biography:</th>
                                <td>
                                    {!! $candidate_single->biography !!}
                                </td>
                            </tr>
                            @endif

                        </table>
                    </div>

                    @if($candidate_educations->count())
                    <h4 class="resume mt-2">Education</h4>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th>SL</th>
                                    <th>Education Level</th>
                                    <th>Institute</th>
                                    <th>Degree</th>
                                    <th>Passing Year</th>
                                </tr>
                                @foreach($candidate_educations as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->level }}</td>
                                    <td>{{ $item->institute }}</td>
                                    <td>{{ $item->degree }}</td>
                                    <td>{{ $item->passing_year }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    @endif
                    <div style="break-after:page"></div>
                    @if($candidate_skills->count())
                    <h4 class="resume mt-5">Skills</h4>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th>SL</th>
                                    <th>Skill Name</th>
                                    <th>Percentage</th>
                                </tr>
                                @foreach($candidate_skills as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->percentage }}%</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    @endif


                    @if($candidate_experiences->count())
                    <h4 class="resume mt-2">Experience</h4>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th>SL</th>
                                    <th>Company</th>
                                    <th>Designation</th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                </tr>
                                @foreach($candidate_experiences as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->company }}</td>
                                    <td>{{ $item->designation }}</td>
                                    <td>{{ $item->start_date }}</td>
                                    <td>{{ $item->end_date }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    @endif


                    @if($candidate_awards->count())
                    <h4 class="resume mt-2">Awards</h4>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th>SL</th>
                                    <th>Title</th>
                                    <th>Description</th>
                                    <th class="w-100">Date</th>
                                </tr>
                                @foreach($candidate_awards as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->title }}</td>
                                    <td>{{ $item->description }}</td>
                                    <td>{{ $item->date }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    @endif


                    @if($candidate_resumes->count())
                    <h4 class="resume mt-2">Resume</h4>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th>SL</th>
                                    <th>Name</th>
                                    <th>File</th>
                                </tr>
                                @foreach($candidate_resumes as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td><a href="{{ asset('uploads/'.$item->file) }}" target="_blank">{{ $item->file }}</a></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    @endif
                </div>
            </div>
        </div>
    </div>

    <script>
        window.print();
    </script>
</body>

</html>