local ls = require 'luasnip'
local s = ls.snippet

return {
	s(
		{ trig = "subplots" },
		{
			t("fig, axs = plt.subplots(nrows="),
			i(1),
			t(", ncols="),
			i(2),
			t(")")
		}
	),
	s(
		{ trig = "pandas" },
		{ t({ "import pandas as pd" }) }
	),
	s(
		{ trig = "filter" },
		{
			t("df[df['"),
			i(1),
			t("'] == "),
			i(2),
			t("]")
		}
	),
}
