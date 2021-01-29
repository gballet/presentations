bench = [
  5335105,   20608096;
  1975441,    16935076;
 2129029,  16838964;
 1157818,   7184684]

title("comparison")
 
subplot(1,2,1)
bar(bench(:,1)/1000000)
title("Trie root calculation on x86\n(1K leaves)")
ylabel("time (ms)")
xlabel("Hashing algorithm")
set(gca, "xticklabel", ["Keccak"; "SHA2"; "SHA2\nSIMD"; "BLAKE2b"])

subplot(1,2,2)
bar(bench(:,2)/1000000)
title("Trie root calculation on ARMv8\n(1K leaves)")
ylabel("time (ms)")
xlabel("Hashing algorithm")
set(gca, "xticklabel", ["Keccak"; "SHA"; "SHA2\nSIMD"; "BLAKE2b"])