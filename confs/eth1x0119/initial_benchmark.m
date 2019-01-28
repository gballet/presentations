data = [7.36844973383544e+07, 250553.94833171365; 226338.62740010378, 898.8601453035807; 380196, 3515; 21965.933378424077, 124.17044301657084]
bar(data(2:4,:)/1000)
set (gca, 'xticklabel', ["sha256"; "ripemd160"; "identity"])
title("Precompile benchmarks WASM vs. native")
xlabel("precompile")
ylabel("avg. execution time (ms)")
legend(["wasm"; "native"])