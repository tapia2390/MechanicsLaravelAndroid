package com.example.mechanicsproyect.ui.home;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;

import com.example.mechanicsproyect.Login;
import com.example.mechanicsproyect.R;
import com.example.mechanicsproyect.modelo.Mechanics;
import com.example.mechanicsproyect.modelo.Modelo;
import com.example.mechanicsproyect.modelo.retrofit.MyApiRetrofit;
import com.google.android.gms.maps.CameraUpdate;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

import java.util.ArrayList;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class HomeFragment extends Fragment {


    Modelo modelo = Modelo.getInstance();

    public static HomeFragment newInstance(String param1, String param2) {
        HomeFragment fragment = new HomeFragment();
        Bundle args = new Bundle();
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_home, container, false);

        getMechanics();


        return view;
    }


    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        SupportMapFragment mapFragment =
                (SupportMapFragment) getChildFragmentManager().findFragmentById(R.id.map);
        if (mapFragment != null) {
            mapFragment.getMapAsync(callback);
        }
    }

    private OnMapReadyCallback callback = new OnMapReadyCallback() {


        @Override
        public void onMapReady(GoogleMap googleMap) {

            new Handler().postDelayed(new Runnable() {
                @Override
                public void run() {

                    if (modelo.listMechanics.size() > 0) {
                        for (int i = 0; i < modelo.listMechanics.size(); i++) {

                            final double latitu = Double.parseDouble(modelo.listMechanics.get(i).getLatitude());
                            final double longitu = Double.parseDouble(modelo.listMechanics.get(i).getLongitude());


                            LatLng sydney = new LatLng(latitu, longitu);
                            googleMap.addMarker(new MarkerOptions().position(sydney).title(modelo.listMechanics.get(i).getName()));
                            googleMap.moveCamera(CameraUpdateFactory.newLatLng(sydney));
                            LatLng ctg = new LatLng(latitu, longitu);
                            CameraPosition possiCameraPosition = new CameraPosition.Builder().target(ctg).zoom(15).bearing(0).tilt(0).build();
                            CameraUpdate cam3 =
                                    CameraUpdateFactory.newCameraPosition(possiCameraPosition);
                            googleMap.animateCamera(cam3);
                        }
                    }
                }
            }, 5000);

        }
    };


    private void getMechanics() {

        try {

            final Call<ArrayList<Mechanics>> obj = MyApiRetrofit.getApiService().getMechanics();
            obj.enqueue(new Callback<ArrayList<Mechanics>>() {
                @Override
                public void onResponse(Call<ArrayList<Mechanics>> call, Response<ArrayList<Mechanics>> response) {

                    modelo.listMechanics = response.body();
                    Log.v("arary", "size" + modelo.listMechanics.size());
                    // Toast.makeText(getApplicationContext(), ":D " + response.body(), Toast.LENGTH_LONG).show();


                }

                @Override
                public void onFailure(Call<ArrayList<Mechanics>> call, Throwable t) {
                    Log.v("error", t.getMessage() + "");
                    //  Toast.makeText(getContext(), ":X " + t.getMessage(), Toast.LENGTH_LONG).show();

                }
            });


        } catch (Exception e) {
            Log.v("Error", e.getMessage());
        }

    }

}

