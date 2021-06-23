@extends('layouts.base')

<!-- The name 'content' is the name from 'yield' in file base.blade.php -->
@section('content')
    <div class="container">
        <div class="row">
            <div class="col">
                <h1 class="alert alert-success text-center">New Mechanic</h1>
            </div>
        </div>
        <main>
            <form action="/mechanics" method="POST" class="form" id="form">
                @csrf {{-- Section 9.4 Laravel for more information about this middleware --}}
                {{-- Group: email --}}
                <div class="form_group" id="group_email">
                    <label for="email" class="form_label">Email</label>
                    <div class="form_group-input">
                        <input type="email" class="form_input" id="email" name="email" placeholder="Email" autofocus>
                        <i class="form_validation-status fa fa-times-circle"></i>
                    </div>
                    <p class="form_input-error">email is just a numeric value and minimum 4 digits.</p>
                </div>
                {{-- Group: Document --}}
                <div class="form_group" id="group_password">
                    <label for="password" class="form_label">Code Student</label>
                    <div class="form_group-input">
                        <input type="password" class="form_input" id="password" name="password" placeholder="password">
                        <i class="form_validation-status fa fa-times-circle"></i>
                    </div>
                    <p class="form_input-error">Code Student is just a numeric value With a minimum of 5 digits</p>
                </div>
                {{-- Group: name --}}
                {{-- Group: name2222 --}}
                <div class="form_group" id="group_name">
                    <label for="name" class="form_label">Code Student</label>
                    <div class="form_group-input">
                        <input type="text" class="form_input" id="name" name="name" placeholder="name">
                        <i class="form_validation-status fa fa-times-circle"></i>
                    </div>
                    <p class="form_input-error">name is just a numeric value With a minimum of 5 digits</p>
                </div>
                {{-- Group: Name --}}
                <div class="form_group" id="group_surname">
                    <label for="surname" class="form_label">surName Student</label>
                    <div class="form_group-input">
                        <input type="text" class="form_input" id="surname" name="surname" placeholder="Surname"
                            onkeyup="this.value = this.value.toUpperCase();">
                        <i class="form_validation-status fa fa-times-circle"></i>
                    </div>
                    <p class="form_input-error">The name can only contain letters</p>
                </div>
                {{-- Group: identity --}}
                <div class="form_group" id="group_identity">
                    <label for="identity" class="form_label">identity</label>
                    <div class="form_group-input">
                        <input type="number" class="form_input" id="identity" name="identity" placeholder="Lasprilla"
                            onkeyup="this.value = this.value.toUpperCase();">
                        <i class="form_validation-status fa fa-times-circle"></i>
                    </div>
                    <p class="form_input-error">The identity can only contain letters</p>
                </div>
                {{-- Group: Phone --}}
                <div class="form_group" id="group_phone">
                    <label for="phone" class="form_label">Phone</label>
                    <div class="form_group-input">
                        <input type="number" class="form_input" id="phone" name="phone" placeholder="314 842 15 00">
                        <i class="form_validation-status fa fa-times-circle"></i>
                    </div>
                    <p class="form_input-error">The phone can only contain digits Min: 7 and Max: 10.</p>
                </div>
                {{-- Group: Phone --}}
                <div class="form_group" id="group_ProfilePicture">
                    <label for="profilePicture" class="form_label">Phone Student</label>
                    <div class="form_group-input">
                        <input type="text" class="form_input" id="profilePicture" name="profilePicture"
                            placeholder="Profile">
                        <i class="form_validation-status fa fa-times-circle"></i>
                    </div>
                    <p class="form_input-error">The phone can only contain digits Min: 7 and Max: 10.</p>
                </div>
                {{-- Group: Gender --}}
                <div class="form_group" id="group_gender">
                    <label for="gender" class="form_label">Select Gender</label>
                    <select class="form-select" id="gender" name="gender">
                        <option selected>Select Gender</option>
                        <option value="Female">Female</option>
                        <option value="Male">Male</option>
                    </select>
                </div>
                {{-- Group: Email --}}
                <div class="form_group" id="group_latitude">
                    <label for="latitude" class="form_label">latitude</label>
                    <div class="form_group-input">
                        <input type="text" class="form_input" id="latitude" name="latitude" placeholder="latitude">
                        <i class="form_validation-status fa fa-times-circle"></i>
                    </div>
                    <p class="form_input-error">Email Only</p>
                </div>
                {{-- Group: Code University_id --}}
                <div class="form_group" id="group_longitude">
                    <label for="longitude" class="form_label">longitude</label>
                    <div class="form_group-input">
                        <input type="text" class="form_input" id="longitude" name="longitude" placeholder="1, 2 or 3">
                        <i class="form_validation-status fa fa-times-circle"></i>
                    </div>
                    <p class="form_input-error">Just a numeric value and one digit</p>
                </div>
                <div class="form_message-error mt-2" id="form_message-error">
                    <p><i class="fa fa-exclamation-triangle"></i><b> Error:</b> Please complete the form.</p>
                </div>
                <div class="row mt-4">
                    <div class="col-6 mt-4">
                        <a href="/mechanics" class="btn btn-success btn-sm">Back</a>
                        <button type="submit" class="btn btn-primary btn-sm">Save</button>
                    </div>
                </div>
            </form>
        </main>
    @endsection
