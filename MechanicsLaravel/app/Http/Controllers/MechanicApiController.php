<?php

namespace App\Http\Controllers;

use App\Mechanic;
use DB;
use Illuminate\Http\Request;

class MechanicApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Mechanic::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        //dd($request);

        DB::insert(
            "CALL sp_insr_mechanic
           (
               '$request->email',
               '$request->password',
               '$request->name',
               '$request->surname',
               '$request->identity',
               '$request->phone',
               '$request->profilePicture',
               '$request->gender',
               '$request->latitude',
               '$request->longitude',
               '$request->city_id'

           )"
        );

        return redirect()->route('mechanic.show');
        //return $request->all();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Mechanic $mechanic)
    {
        //$mechanic = Mechanic::findOrFail($id);
        return $mechanic;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Mechanic $mechanic)
    {
        $mechanic->update($request->all());

        return response()->json([
            'status' => true,
            'message' => 'Successfully update resource',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Mechanic $mechanic)
    {
        $mechanic->delete();

        return response()->json(['status' => 'Delete Resource']);
    }
}