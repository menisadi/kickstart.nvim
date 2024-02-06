local ls = require 'luasnip'
local s = ls.snippet

return {
	s(
		{
			trig = "subplots",
			dscr = "Create matplotlib subplots",
		},
		{
			t("fig, axs = plt.subplots(nrows="),
			i(1, "Number of rows"),
			t(", ncols="),
			i(2, "Number of columns"),
			t(")")
		}
	),
	s(
		{
			trig = "pandas",
			dscr = "Import pandas",
		},
		{ t({ "import pandas as pd" }) }
	),
	s(
		{
			trig = "filter",
			dscr = "Filter DataFrame based on a condition",
		},
		{
			t("df[df['"),
			i(1),
			t("'] == "),
			i(2),
			t("]")
		}
	),
}
