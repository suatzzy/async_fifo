################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(390,62);
spyCacheTagValuesFromBatch(["pe_crossprobe_tag"]);
spyParseTextMessageTagFile("../spyglass_lints/ptr_counter_lint/ptr_counter/lint/lint_rtl/spyglass_spysch/sg_msgtag.txt");

if(!defined $::spyInIspy || !$::spyInIspy)
{
    spyDefineReportGroupingOrder("ALL",
(
"BUILTIN"   => [SGTAGTRUE, SGTAGFALSE]
,"TEMPLATE" => "A"
)
);
}
spyMessageTagTestBenchmark(3,"../spyglass_lints/ptr_counter_lint/ptr_counter/lint/lint_rtl/spyglass.vdb");

1;
