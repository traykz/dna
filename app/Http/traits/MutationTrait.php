<?php
namespace App\Http\Traits;
use App\Models\AdnMutation;
use DB;
use Illuminate\Database\Eloquent\Model;
trait MutationTrait
{

    public $mutacion = array();
    public $noMutacion = array();
    public $dna_chain = array();

    public function getHigh($type, $str)
    {
        $str = str_replace(' ', '', $str);//Trims all the spaces in the string
        $arr = str_split(count_chars($str . trim($str), 3));
        $hStr = "";
        $occ = 0;
        foreach ($arr as $value) {
            $oc = substr_count($str, $value);
            if ($occ < $oc) {
                $hStr = $value;
                $occ = $oc;
            }
        }
        if ($occ >= 4) {
            $this->mutacion[$type] = $hStr;
            return 'true';
        } else {
            $this->noMutacion[$type] = $hStr;
            return 'false';
        }


    }

    public function validate_mutation($dna)
    {
        $array = [];
        $max = sizeof($dna);
        $validacion_Vertical = [];
        $z = $max;
        for ($i = 0; $i < $max; $i++) {
            /*** validacion oblicua por la izquierda ***/
            $validacion_oblicua_izq[] = $dna[$i][$i];
            /* validacion oblicua por la derecha */
            $validacion_oblicua_derecha[] = $dna[$i][--$z];
            foreach ($dna as $key => $value) {
                /****Validación Vertical Repetidas*****/
                $validacion_Vertical[$i][$key] = $dna[$key][$i];
            }
            // endForeach iteraciones  para la vertical////echo '<br>';
        }
        $validation = ['Izquierda' => '', 'Derecha' => '', 'Vertical' => '', 'Horizontal' => ''];
        /**** Validaciton Oblicua Izquiera *****/
        $izquierda = implode($validacion_oblicua_izq);
        $highest = $this->getHigh('izquierda', $izquierda);
        if ($highest == 'true') {
            return 'true';
        } else {
            return 'false';
        }
        /**** Validaciton Oblicua Derecha *****/
        $derecha = implode($validacion_oblicua_derecha);
        $highest = $this->getHigh('derecha', $derecha);
        if ($highest == 'true') {
            return 'true';
        } else {
            return 'false';
        }
        /***** Validacion Vertical*****/
        $resultant = [];
        foreach ($validacion_Vertical as $key => $values) {
            $implode = implode('', $values);
            $resultant[] = $implode;
        }
        foreach ($resultant as $key => $value) {
            $highest = $this->getHigh('vertical', $value);
            if ($highest == 'true') {
                return 'true';
            } else {
                return 'false';
            }

        }
        /***** Validación Horizontal*****/
        foreach ($dna as $key => $value) {
            $highest = $this->getHigh('horizontal', $value);
            if ($highest == 'true') {
                return 'true';
            } else {
                return 'false';
            }
        }
    }


}


