@extends('layouts.base')

<!-- The name 'content' is the name from 'yield' in file base.blade.php -->
@section('content')
    <div class="container">
        <div class="row">
            <div class="col">
                <h1 class="alert alert-primary text-center">Active Mechanics list</h1>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <table class="table table-primary table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Image</th>
                            <th scope="col">Lastname</th>
                            <th scope="col">Number Document</th>
                            <th scope="col">Phone Number</th>
                            <th scope="col">Email</th>
                            <th scope="col">Address</th>
                            <th scope="col">Type Service</th>
                            <th scope="col">Description</th>
                            <th scope="col">Service Cost</th>
                            <th scope="col">Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($my_mechanics as $mechanic)
                            <tr>
                                <th scope="row">{{ $mechanic->name }}</th>
                                <td>
                                    <img src="{{ asset('storage') . '/' . $mechanic->image }}" alt="" width="90">
                                </td>
                                <td>{{ $mechanic->lastname }}</td>
                                <td>{{ $mechanic->document }}</td>
                                <td>{{ $mechanic->phone }}</td>
                                <td>{{ $mechanic->email }}</td>
                                <td>{{ $mechanic->address }}</td>
                                <td>{{ $mechanic->service }}</td>
                                <td>{{ $mechanic->description }}</td>
                                <td>$ {{ $mechanic->cost }}</td>
                                <td>
                                    <a class="btn btn-warning btn-block"
                                        href="/mechanics/{{ $mechanic->id }}/edit">Edit</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <a href="/mechanics/create" class="btn btn-info">Create a new Mechanic</a>
            </div>
        </div>
    </div>
@endsection
