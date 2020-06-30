warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/chasing-cars"));
run("spec_chasingcars.m");
[ok, notok] = validate_zlscheck_chasingcars(CC{5}, preds, ".");
validation_results.('chasingcars').('cc5').ok = ok;
validation_results.('chasingcars').('cc5').notok = notok;
clear ok notok preds u T;