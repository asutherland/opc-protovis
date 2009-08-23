
PV_CORE = js/pv.js

PV_COLOR = $(wildcard js/color/*.js)

MARK_ORDER = Mark.js Area.js Bar.js Dot.js Image.js Label.js Line.js Panel.js Rule.js Wedge.js
PV_MARK = $(addprefix js/mark/,$(MARK_ORDER))

DATA_ORDER = Scales.js Scale.js QuantitativeScale.js DateTimeScale.js LinearScale.js LogScale.js Nest.js OrdinalScale.js RootScale.js
PV_DATA = $(addprefix js/data/,$(DATA_ORDER))

PV_FILES = js/pv-start.js $(PV_CORE) $(PV_COLOR) $(PV_MARK) $(PV_DATA) js/pv-end.js

JS_FILES = $(LANG_FILES) $(PV_FILES)


protovis-min.js: $(MAKEFILE_LIST) $(JS_FILES)
	cat $(JS_FILES) > $@

clean::
	rm protovis-min.js
