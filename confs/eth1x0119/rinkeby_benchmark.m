#data = [7.36844973383544e+07, 250553.94833171365; 226338.62740010378, 1408.0664244940322; 380196, 3515; 21965.933378424077, 136.2620050547599]
data = [7.131151100726265e+07, 233559.6593730482; 247667.30949142828, 1188.3658329425252; 204086.19284853354, 2847.93893129771; 33774.17160650444, 94.87798408488064; 4.565364754654845e+07, 51599.602913236224; 4.603080030156908e+06, 20508.550937619595; 2.517459635497305e+08, 136961.80912717857; 7.757032256164179e+09, 4.016292447761194e+06]
#1=7.131151100726265e+07 233559.6593730482 2=247667.30949142828 1188.3658329425252 3=204086.19284853354 2847.93893129771 4=33774.17160650444 94.87798408488064 5=4.565364754654845e+07 51599.602913236224 6=4.603080030156908e+06 20508.550937619595 7=2.517459635497305e+08 136961.80912717857 8=7.757032256164179e+09 4.016292447761194e+06nerr= [0 0 0 0 0 0 0 0 0]
subplot(1,2, [1,1])
bar(log(data(1:8,:)))
set (gca, 'xticklabel', ["ecrec"; "sha256"; "ripemd"; "ident"; "expmod"; "ecadd"; "ecmul"; "ecpair"])
title("Precompile benchmarks WASM vs. native")
xlabel("precompile")
ylabel("average execution time (log ns)")
legend(["WASM (Rust+wagon)"; "native"], "location", "northwest")
subplot(1,2, 2)
bar(data(1:8,1)./data(1:8,2))
title("WASM slowdown vs. native")
xlabel("precompile")
ylabel("slowdown (times)")
set (gca, 'xticklabel', ["ecrec"; "sha256"; "ripemd"; "ident"; "expmod"; "ecadd"; "ecmul"; "ecpair"])