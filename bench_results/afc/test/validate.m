warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/powertrain"));
run("spec_powertrain.m");
[ok, notok] = validate_zlscheck_powertrain(AFC{33}, preds, ".");
validation_results.('powertrain').('afc33').ok = ok;
validation_results.('powertrain').('afc33').notok = notok;
clear ok notok preds u T;