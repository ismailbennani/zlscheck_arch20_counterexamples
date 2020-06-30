warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/neural"));
run("spec_neural.m");
[ok, notok] = validate_zlscheck_neural(NN{1}, preds, ".");
validation_results.('neural').('nn_inst2_0_04').ok = ok;
validation_results.('neural').('nn_inst2_0_04').notok = notok;
clear ok notok preds u T;