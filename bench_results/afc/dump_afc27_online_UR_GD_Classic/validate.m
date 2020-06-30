warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/powertrain"));
run("spec_powertrain.m");
[ok, notok] = validate_zlscheck_powertrain(AFC{27}, preds, ".");
validation_results.('powertrain').('afc27').ok = ok;
validation_results.('powertrain').('afc27').notok = notok;
clear ok notok preds u T;