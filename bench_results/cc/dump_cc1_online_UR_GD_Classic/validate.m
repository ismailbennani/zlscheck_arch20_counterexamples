warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/chasing-cars"));
run("spec_chasingcars.m");
[ok, notok] = validate_zlscheck_chasingcars(CC{1}, preds, ".");
validation_results.('chasingcars').('cc1').ok = ok;
validation_results.('chasingcars').('cc1').notok = notok;
clear ok notok preds u T;