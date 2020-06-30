warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/SteamCondenser"));
run("spec_steamcondenser.m");
[ok, notok] = validate_zlscheck_steamcondenser(SC{1}, preds, ".");
validation_results.('steamcondenser').('sc_inst1').ok = ok;
validation_results.('steamcondenser').('sc_inst1').notok = notok;
clear ok notok preds u T;
