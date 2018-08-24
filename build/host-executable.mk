
M_OBJS := $(addprefix $(OUT_HOST_OBJ)/,$(M_OBJS))
DEPS += $(M_OBJS:%o=%d)

ALL += $(OUT)/$(M_NAME)

$(OUT)/$(M_NAME): _OBJS := $(M_OBJS)
$(OUT)/$(M_NAME): $(M_OBJS)
	@echo link $@
	$(QUIET)$(HOST_CC) $(HOST_CFLAGS) -o $@ $(_OBJS) -lusb-1.0

M_OBJS :=
M_NAME :=
