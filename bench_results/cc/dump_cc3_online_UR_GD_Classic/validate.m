warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/chasing-cars"));
run("spec_chasingcars.m");
[ok, notok] = validate_zlscheck_chasingcars(CC{3}, preds, ".");
validation_results.('chasingcars').('cc3').ok = ok;
validation_results.('chasingcars').('cc3').notok = notok;
clear ok notok preds u T;