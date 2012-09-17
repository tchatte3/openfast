.SUFFIXES: .c .o

CC_TOOLS = gcc
CFLAGS = #-ansi
LDFLAGS =
DEBUG = -g 
OBJ = registry.o my_strtok.o reg_parse.o data.o type.o misc.o sym.o symtab_gen.o gen_module_files.o

registry : $(OBJ)
	$(CC_TOOLS) -o registry $(DEBUG) $(LDFLAGS) $(OBJ)

.c.o :
	$(CC_TOOLS) $(CFLAGS) -c $(DEBUG) $<

clean clena:
	/bin/rm -f $(OBJ) gen_comms.c standard.o

# regenerate this list with "makedepend -Y *.c"

# DO NOT DELETE THIS LINE -- make depend depends on it.

gen_module_files.o: protos.h registry.h data.h

data.o: registry.h protos.h data.h
gen_allocs.o: protos.h registry.h data.h
gen_args.o: protos.h registry.h data.h
gen_scalar_derefs.o: protos.h registry.h data.h
gen_config.o: protos.h registry.h data.h
gen_defs.o: protos.h registry.h data.h
gen_mod_state_descr.o: protos.h registry.h data.h
gen_model_data_ord.o: protos.h registry.h data.h
gen_scalar_indices.o: protos.h registry.h data.h
gen_wrf_io.o: protos.h registry.h data.h
misc.o: protos.h registry.h data.h
my_strtok.o: registry.h protos.h data.h
reg_parse.o: registry.h protos.h data.h
registry.o: protos.h registry.h data.h
sym.o: sym.h
type.o: registry.h protos.h data.h
gen_interp.o: registry.h protos.h data.h
gen_streams.o: registry.h protos.h data.h
