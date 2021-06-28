<?php

namespace App\Http\Controllers;

use App\Servicelist;
use DB;
use Illuminate\Http\Request;

class ServiceListApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Servicelist::all();
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
            "CALL sp_insr_servicelist
            (
                '$request->cost',
                '$request->previewImageService',
                '$request->statusService_id',
                '$request->mechanic_id',
                '$request->service_id',
                '$request->servicescheduling_id'
            )"
        );

        return redirect()->route('servicelist.show');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Servicelist $servicelist)
    {
        //$servicelist = Servicelist::findOrFail($id);
        return $servicelist;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Servicelist $servicelist)
    {
        $servicelist->update($request->all());

        return response()->json([
            'status' => true,
            'messages' => 'Succesdfully updated resource',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Servicelist $servicelist)
    {
        $servicelist->delete();

        return response()->json(['status' => 'Delete resource']);

    }
}