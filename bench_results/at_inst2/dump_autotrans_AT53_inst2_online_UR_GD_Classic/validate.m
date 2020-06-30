warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/transmission"));
run("spec_transmission.m");
[ok, notok] = validate_zlscheck_transmission(AT{5}, preds, ".");
validation_results.('transmission').('autotrans_AT53_inst2').ok = ok;
validation_results.('transmission').('autotrans_AT53_inst2').notok = notok;
clear ok notok preds u T;