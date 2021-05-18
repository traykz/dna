<?php

namespace App\Http\Controllers;

use App\Http\Traits\MutationTrait;
use App\Models\AdnMutation;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class MobileController extends Controller
{
    use MutationTrait;

    public function getMutation(Request $request)
    {
        $dna = ($request->input('dna'));
        $respuesta = $this->validate_mutation(json_decode($dna));
        if ($respuesta === 'true') {
            $mutation = new AdnMutation();
            $mutation->adn = $dna;
            $mutation->has_mutation = true;
            $mutation->save();
            return response('Yes it has DNA Mutation', 200);
        } else if ($respuesta === 'false') {
            $mutation = new AdnMutation();
            $mutation->adn = $dna;
            $mutation->has_mutation = false;
            $mutation->save();
            return response('No, this DNA chain dont has mutation', 403);
        }
    }


    public function getStats()
    {
        $mutations = AdnMutation::where('has_mutation', '=', true)->get();
        $count_mutations = $mutations->count();
        $no_mutations = AdnMutation::where('has_mutation', '=', false)->get();
        $count_no_mutations = $no_mutations->count();
        $ratio = $count_mutations / $count_no_mutations;
        $jsonAdn['count_mutations'] = $count_mutations;
        $jsonAdn['count_no_mutations'] = $count_no_mutations;
        $jsonAdn['ratio'] = $ratio;
        return response()->json($jsonAdn);
    }

}
