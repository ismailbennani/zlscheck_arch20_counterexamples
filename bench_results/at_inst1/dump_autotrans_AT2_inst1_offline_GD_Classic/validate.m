warning('off','all');
addpath("../../../matlab");
addpath(genpath("../../../shared/benchmarks/transmission"));
run("spec_transmission.m");
[ok, notok] = validate_zlscheck_transmission(AT{2}, preds, ".");
validation_results.('transmission').('autotrans_AT2_inst1').ok = ok;
validation_results.('transmission').('autotrans_AT2_inst1').notok = notok;
clear ok notok preds u T;