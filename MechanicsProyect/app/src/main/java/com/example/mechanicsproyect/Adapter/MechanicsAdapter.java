package com.example.mechanicsproyect.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.mechanicsproyect.R;
import com.example.mechanicsproyect.modelo.Mechanics;
import com.example.mechanicsproyect.modelo.Modelo;

import java.util.ArrayList;
import java.util.List;

public class MechanicsAdapter extends RecyclerView.Adapter<MechanicsAdapter.MechanicsViewHolder> implements Filterable {

    private Context context;
    private List<Mechanics> nameList;
    private List<Mechanics> filteredNameList;
    Modelo modelo = Modelo.getInstance();

    public MechanicsAdapter(Context context, List<Mechanics> nameList) {
        super();
        this.context = context;
        this.nameList = nameList;
        this.filteredNameList = nameList;


    }

    @NonNull
    @Override
    public MechanicsAdapter.MechanicsViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(context).inflate(R.layout.list_adapter, viewGroup, false);
        return new MechanicsAdapter.MechanicsViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull MechanicsAdapter.MechanicsViewHolder holder, final int position) {
        String name = filteredNameList.get(position).getName();
        String phone = ""+ filteredNameList.get(position).getPhone();


        holder.name.setText(name);
        holder.phone.setText(phone);


    }

    @Override
    public int getItemCount() {
        return filteredNameList.size();
    }

    /**
     * <p>Returns a filter that can be used to constrain data with a filtering
     * pattern.</p>
     *
     * <p>This method is usually implemented by {@link RecyclerView.Adapter}
     * classes.</p>
     *
     * @return a filter used to constrain data
     */
    @Override
    public Filter getFilter() {
        return new Filter() {
            @Override
            protected FilterResults performFiltering(CharSequence constraint) {
                String charSequenceString = constraint.toString();
                if (charSequenceString.isEmpty()) {
                    filteredNameList = nameList;
                } else {
                    List<Mechanics> filteredList = new ArrayList<>();
                    for (Mechanics name : nameList) {
                        if (name.getName().toLowerCase().contains(charSequenceString.toLowerCase())) {
                            filteredList.add(name);
                        }
                        filteredNameList = filteredList;
                    }

                }
                FilterResults results = new FilterResults();
                results.values = filteredNameList;
                return results;
            }

            @Override
            protected void publishResults(CharSequence constraint, FilterResults results) {
                filteredNameList = (List<Mechanics>) results.values;
                notifyDataSetChanged();
            }
        };
    }


    class MechanicsViewHolder extends RecyclerView.ViewHolder {

        private TextView name;
        private TextView phone;



        MechanicsViewHolder(@NonNull View itemView) {
            super(itemView);
            name = itemView.findViewById(R.id.name);
            phone = itemView.findViewById(R.id.phone);



        }
    }

}
