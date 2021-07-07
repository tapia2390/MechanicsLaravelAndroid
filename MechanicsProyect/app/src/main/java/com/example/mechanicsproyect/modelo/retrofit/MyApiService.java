package com.example.mechanicsproyect.modelo.retrofit;


import com.example.mechanicsproyect.modelo.Mechanics;
import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface MyApiService {


    @FormUrlEncoded
    @POST("mechanics")
    Call<Object> setRegistro(
            @Field("id") int id,
            @Field("email") String email,
            @Field("password") String password,
            @Field("name") String name,
            @Field("surname") int surname,
            @Field("identity") int identity,
            @Field("phone") int phone,
            @Field("profilePicture") String profilePicture,
            @Field("gender") String gender,
            @Field("latitude") String latitude,
            @Field("longitude") String longitude,
            @Field("city_id") int city_id,
            @Field("created_at") String created_at,
            @Field("updated_at") String updated_at
    );


    @GET("mechanics")
    Call<ArrayList<Mechanics>> getMechanics();

}
