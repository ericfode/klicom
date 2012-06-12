open Ocamlbuild_plugin;;
open Command;;

dispatch begin function
  | After_rules ->
    ocaml_lib ~extern:true ~dir:"+llvm-2.8" "llvm";
    ocaml_lib ~extern:true ~dir:"+llvm-2.8" "llvm_analysis";
    flag ["link"; "ocaml"; "g++"] (S[A"-cc";A"g++"]);
  | _ -> ()
end;;


