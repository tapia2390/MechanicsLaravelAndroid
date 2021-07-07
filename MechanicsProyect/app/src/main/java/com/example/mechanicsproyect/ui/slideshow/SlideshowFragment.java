package com.example.mechanicsproyect.ui.slideshow;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SearchView;
import android.widget.Toast;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.mechanicsproyect.Adapter.MechanicsAdapter;
import com.example.mechanicsproyect.R;
import com.example.mechanicsproyect.modelo.Mechanics;
import com.example.mechanicsproyect.modelo.Modelo;
import com.example.mechanicsproyect.modelo.Utility.Utility;
import com.example.mechanicsproyect.modelo.retrofit.MyApiRetrofit;

import java.util.ArrayList;
import java.util.List;

import cn.pedant.SweetAlert.SweetAlertDialog;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class SlideshowFragment extends Fragment {


    Utility utility;
    SweetAlertDialog pDialog;
    Modelo modelo = Modelo.getInstance();


    MechanicsAdapter mechanicsAdapter;
    List<Mechanics> hisList = new ArrayList<>();
    RecyclerView recyclerView;

    public static SlideshowFragment newInstance(String param1, String param2) {
        SlideshowFragment fragment = new SlideshowFragment();
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
        View view = inflater.inflate(R.layout.fragment_first, container, false);


        getMechanics();

        final SearchView search2 = (SearchView) view.findViewById(R.id.search_view);
        recyclerView = view.findViewById(R.id.recycler_view2);



        search2.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
            @Override
            public boolean onQueryTextSubmit(String queryString) {


                mechanicsAdapter.getFilter().filter(queryString);

                return false;
            }

            @Override
            public boolean onQueryTextChange(String queryString) {

                mechanicsAdapter.getFilter().filter(queryString);

                return false;
            }
        });

        return view;
    }

    private void getMechanics() {
        loadswet("Load...");

        try {


            final Call<ArrayList<Mechanics>> obj = MyApiRetrofit.getApiService().getMechanics();
            obj.enqueue(new Callback<ArrayList<Mechanics>>() {
                @Override
                public void onResponse(Call<ArrayList<Mechanics>> call, Response<ArrayList<Mechanics>> response) {
                    hideDialog();
                    modelo.listMechanics = response.body();
                    Log.v("arary", "size" + modelo.listMechanics.size());
                    Toast.makeText(getContext(), ":D " + response.body(), Toast.LENGTH_LONG).show();


                    hisList = modelo.listMechanics;
                    mechanicsAdapter = new MechanicsAdapter(getActivity(), hisList);
                    RecyclerView.LayoutManager layoutManager = new LinearLayoutManager(getActivity(), LinearLayoutManager.VERTICAL, false);
                    recyclerView.setLayoutManager(layoutManager);
                    recyclerView.setAdapter(mechanicsAdapter);

                }

                @Override
                public void onFailure(Call<ArrayList<Mechanics>> call, Throwable t) {
                    Log.v("error", t.getMessage() + "");
                    Toast.makeText(getContext(), ":X " + t.getMessage(), Toast.LENGTH_LONG).show();

                }
            });


        } catch (Exception e) {
            Log.v("Error", e.getMessage());
        }

    }


    public void loadswet(String text) {
        pDialog = new SweetAlertDialog(getActivity(), SweetAlertDialog.PROGRESS_TYPE);
        pDialog.getProgressHelper().setBarColor(Color.parseColor("#A5DC86"));
        pDialog.setTitleText(text);
        pDialog.setCancelable(true);
        pDialog.show();

    }


    //oculatomos el dialog
    private void hideDialog() {
        if (pDialog != null)
            pDialog.dismiss();
    }

    public void showAlertDialogRed(Context context) {
        AlertDialog alertDialog = new AlertDialog.Builder(context).create();
        alertDialog.setTitle("Sin Red");
        alertDialog.setMessage("" + getString(R.string.txt_titulo_err_red));
        alertDialog.setButton("" + getString(R.string.txt_btn_ok), new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {

            }
        });

        alertDialog.show();
    }


}