bench = [
  3966765,    41485660,  214235725;
  1976895,    21721240,  113402410;
190096322,  1917772464, 9606306400;
151562506,  1725273788, 9522075917]

subplot(1,3,1)
bar(bench(:,1)/1000000)
title("Trie root calculation\n(1K leaves)")
ylabel("time (ms)")
xlabel("merkelization rule")
set(gca, "xticklabel", ["K5"; "B5"; "K4"; "B4"])

subplot(1,3,2)
bar(bench(:,2)/1000000)
title("Trie root calculation\n(10K leaves)")
ylabel("time (ms)")
xlabel("merkelization rule")
set(gca, "xticklabel", ["K5"; "B5"; "K4"; "B4"])

subplot(1,3,3)
bar(bench(:,3)/1000000)
title("Trie root calculation\n(50K leaves)")
ylabel("time (ms)")
xlabel("merkelization rule")
set(gca, "xticklabel", ["K5"; "B5"; "K4"; "B4"])