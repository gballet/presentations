DOT=dot

%.png: %.dot
	$(DOT) -Tpng $< -o $@
