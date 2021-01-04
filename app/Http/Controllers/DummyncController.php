<?php

namespace App\Http\Controllers;

use App\Models\dummync;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DummyncController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data = 0;
        return view('nc.index', ['data' => $data]);
    }

    public function chooseNC(Request $request)
    {
        $data = 1;
        $dataNC = dummync::where('ncID', $request->nc)->get();
        return view('nc.index', ['data' => $data, 'dataNC' => $dataNC]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\dummync  $dummync
     * @return \Illuminate\Http\Response
     */
    public function show(dummync $dummync)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\dummync  $dummync
     * @return \Illuminate\Http\Response
     */
    public function edit(dummync $dummync)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\dummync  $dummync
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, dummync $dummync)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\dummync  $dummync
     * @return \Illuminate\Http\Response
     */
    public function destroy(dummync $dummync)
    {
        //
    }
}
