FIGS=\
	execution-time.pdf \
	microbench-mem-access.pdf \
	compilation-time.pdf \
	execution-time-per-benchmark.pdf \


all: $(FIGS)

$(FIGS): %.pdf: %.py
	python3 $<
