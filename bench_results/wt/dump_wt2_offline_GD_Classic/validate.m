warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/wind-turbine"));
run("spec_wind_turbine.m");
[ok, notok] = validate_zlscheck_wind_turbine(WT{2}, preds, ".");
validation_results.('wind_turbine').('wt2').ok = ok;
validation_results.('wind_turbine').('wt2').notok = notok;
clear ok notok preds u T;