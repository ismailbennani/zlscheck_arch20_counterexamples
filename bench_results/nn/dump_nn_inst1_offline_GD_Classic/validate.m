warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/neural"));
run("spec_neural.m");
[ok, notok] = validate_zlscheck_neural(NN{1}, preds, ".");
validation_results.('neural').('nn_inst1').ok = ok;
validation_results.('neural').('nn_inst1').notok = notok;
clear ok notok preds u T;