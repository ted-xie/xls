XLS_ROOT ?= $(shell git rev-parse --show-toplevel)
XLSCC=$(XLS_ROOT)/bazel-bin/xls/contrib/xlscc/driver/xlscc
XLSIR=$(XLS_ROOT)/bazel-bin/xls/dslx/ir_converter_main
XLSOPT=$(XLS_ROOT)/bazel-bin/xls/tools/opt_main
XLSCODEGEN=$(XLS_ROOT)/bazel-bin/xls/tools/codegen_main
PIPELINE_STAGES=1
DELAY_MODEL=unit

CC=clang
CXX=clang++
CPPFLAGS=
CXXFLAGS=-O3

# Software compiler sanity check
$(KERNEL_NAME).o: $(SRCS)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@

# C++ to IR conversion
# Note that normally XLS's lingua franca is DSLX. XLScc directly translates
# C++ into IR, so there's no separate DSLX -> IR conversion necessary.
$(KERNEL_NAME).ir: $(SRCS)
	$(XLSCC) -W $(KERNEL_NAME).wrapper.v -N $(KERNEL_NAME) $< $@

ir: $(KERNEL_NAME).ir

# IR optimization
$(KERNEL_NAME).opt.ir: $(KERNEL_NAME).ir
	$(XLSOPT) $< > $@

opt: $(KERNEL_NAME).opt.ir

# Verilog generation
$(KERNEL_NAME).v: $(KERNEL_NAME).opt.ir
	$(XLSCODEGEN) --pipeline_stages=$(PIPELINE_STAGES) \
		--delay_model=$(DELAY_MODEL) $< > $@

vlog: $(KERNEL_NAME).v

clean:
	rm -f yacctab.py lextab.py *.ir *.o $(KERNEL_NAME).v
