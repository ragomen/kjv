ved: ved.sh ved.awk ved.tsv
	cat ved.sh > $@

	echo 'exit 0' >> $@

	echo '#EOF' >> $@
	tar cz ved.awk ved.tsv >> $@

	chmod +x $@

test: ved.sh
	shellcheck -s sh ved.sh

.PHONY: test
