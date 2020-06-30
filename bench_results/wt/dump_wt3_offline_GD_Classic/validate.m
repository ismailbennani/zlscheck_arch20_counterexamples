warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/wind-turbine"));
run("spec_wind_turbine.m");
[ok, notok] = validate_zlscheck_wind_turbine(WT{3}, preds, ".");
validation_results.('wind_turbine').('wt3').ok = ok;
validation_results.('wind_turbine').('wt3').notok = notok;
clear ok notok preds u T;