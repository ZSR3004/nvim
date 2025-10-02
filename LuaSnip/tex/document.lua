local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node

return {
  -- basic document structure for article
  s("cl_art", {
    t({"\\documentclass{article}", ""}),
    i(1, "Packages."),
    t({"", "\\title{"}),
    i(2, "Title"),
    t({"}", "\\author{"}),
    i(3, "Author"),
    t({"}", "\\date{\\today}", "", "\\begin{document}", "\\maketitle", "", ""}),
    i(0),
    t({"", "\\end{document}"}),
  }),

  -- booklet document structure
  s("cl_booklet", {
    t({
      "\\documentclass{article}",
      "\\usepackage{pdfpages}",
      "",
      "\\begin{document}",
      "\\includepdf[pages=-, booklet=true, landscape]{"
    }),
    i(1, "PDF Path"),
    t("}"),
    t({
      "",
      "\\end{document}",
    }),
  }),

  -- common packages
  s("pkgs", {
    t({
      "% AMS",
      "\\usepackage{amsmath}",
      "\\usepackage{mathtools}",
      "\\usepackage{amsthm}",
      "\\usepackage{amsfonts}",
      "\\usepackage{amssymb}",
      "\\usepackage{minted}",
      "",
      "% Aesthetic",
      "\\usepackage[margin=0.5in]{geometry}",
      "\\usepackage{setspace}",
      "\\usepackage{graphicx}",
      "\\usepackage{xcolor}",
      "\\usepackage{hyperref}",
      "\\usepackage{enumitem}",
    }),
  }),

  -- theorem environments
  s("thm_env", {
    t({
      "% Theorem Environments",
      "\\theoremstyle{plain}",
      "\\newtheorem{thm}{Theorem}[section]",
      "\\newtheorem{lemma}[thm]{Lemma}",
      "\\newtheorem{sublemma}[thm]{Sub-Lemma}",
      "\\newtheorem{proposition}[thm]{Proposition}",
      "\\newtheorem{corollary}[thm]{Corollary}",
      "\\newtheorem{conjecture}[thm]{Conjecture}",
    }),
  }),

  -- definition environments
  s("def_env", {
    t({
      "% Definition Environments",
      "\\theoremstyle{definition}",
      "\\newtheorem{defn}{Definition}[section]",
      "\\newtheorem*{example}{Example}[section]",
      "\\newtheorem*{counterexample}{Counterexample}[section]",
      "\\newtheorem*{condition}{Condition}[section]",
      "\\newtheorem*{exercise}{Exercise}[section]",
      "\\newtheorem*{question}{Question}[section]",
      "\\newtheorem*{problem}{Problem}[section]",
    }),
  }),

  -- remark environments
  s("rmk_env", {
    t({
      "% Remark Environments",
      "\\theoremstyle{remark}",
      "\\newtheorem*{remark}{Remark}[section]",
      "\\newtheorem*{note}{Note}[section]",
      "\\newtheorem*{observation}{Observation}[section]",
      "\\newtheorem*{claim}{Claim}[section]",
      "\\newtheorem*{assumption}{Assumption}[section]",
      "\\newtheorem*{notation}{Notation}[section]",
      "\\newtheorem*{convention}{Convention}[section]",
      "\\newtheorem*{case}{Case}[section]",
      "\\newtheorem*{annotation}{Annotation}[section]",
      "\\newtheorem*{acknowledgement}{Acknowledgement}[section]",
      "\\newtheorem*{summary}{Summary}[section]",
      "\\newtheorem*{conclusion}{Conclusion}[section]",
    }),
  }),

  -- logic commands
  s("logic_cmds", {
    t({
      "% Logic Commands",
      "\\renewcommand{\\implies}{\\rightarrow}",
      "\\renewcommand{\\iff}{\\leftrightarrow}",
      "\\newcommand{\\sat}{\\vDash}",
      "\\newcommand{\\unsat}{\\nvDash}",
    }),
  }),

  -- calligraphic
  s("cal_cmds", {
    t({
      "% Calligraphic",
      "\\newcommand{\\cA}{\\mathcal{A}}",
      "\\newcommand{\\cB}{\\mathcal{B}}",
      "\\newcommand{\\cC}{\\mathcal{C}}",
      "\\newcommand{\\cD}{\\mathcal{D}}",
      "\\newcommand{\\cE}{\\mathcal{E}}",
      "\\newcommand{\\cF}{\\mathcal{F}}",
      "\\newcommand{\\cG}{\\mathcal{G}}",
      "\\newcommand{\\cH}{\\mathcal{H}}",
      "\\newcommand{\\cI}{\\mathcal{I}}",
      "\\newcommand{\\cJ}{\\mathcal{J}}",
      "\\newcommand{\\cK}{\\mathcal{K}}",
      "\\newcommand{\\cL}{\\mathcal{L}}",
      "\\newcommand{\\cM}{\\mathcal{M}}",
      "\\newcommand{\\cN}{\\mathcal{N}}",
      "\\newcommand{\\cO}{\\mathcal{O}}",
      "\\newcommand{\\cP}{\\mathcal{P}}",
      "\\newcommand{\\cQ}{\\mathcal{Q}}",
      "\\newcommand{\\cR}{\\mathcal{R}}",
      "\\newcommand{\\cS}{\\mathcal{S}}",
      "\\newcommand{\\cT}{\\mathcal{T}}",
      "\\newcommand{\\cU}{\\mathcal{U}}",
      "\\newcommand{\\cV}{\\mathcal{V}}",
      "\\newcommand{\\cW}{\\mathcal{W}}",
      "\\newcommand{\\cX}{\\mathcal{X}}",
      "\\newcommand{\\cY}{\\mathcal{Y}}",
      "\\newcommand{\\cZ}{\\mathcal{Z}}",
    }),
  }),

  -- blackboard bold
  s("bb_cmds", {
    t({
      "% BlackBoard Bold",
      "\\newcommand{\\A}{\\mathbb{A}}",
      "\\newcommand{\\B}{\\mathbb{B}}",
      "\\newcommand{\\C}{\\mathbb{C}}",
      "\\newcommand{\\D}{\\mathbb{D}}",
      "\\newcommand{\\E}{\\mathbb{E}}",
      "\\newcommand{\\F}{\\mathbb{F}}",
      "\\newcommand{\\G}{\\mathbb{G}}",
      "\\newcommand{\\H}{\\mathbb{H}}",
      "\\newcommand{\\I}{\\mathbb{I}}",
      "\\newcommand{\\J}{\\mathbb{J}}",
      "\\newcommand{\\K}{\\mathbb{K}}",
      "\\newcommand{\\L}{\\mathbb{L}}",
      "\\newcommand{\\M}{\\mathbb{M}}",
      "\\newcommand{\\N}{\\mathbb{N}}",
      "\\newcommand{\\O}{\\mathbb{O}}",
      "\\newcommand{\\P}{\\mathbb{P}}",
      "\\newcommand{\\Q}{\\mathbb{Q}}",
      "\\newcommand{\\R}{\\mathbb{R}}",
      "\\newcommand{\\S}{\\mathbb{S}}",
      "\\newcommand{\\T}{\\mathbb{T}}",
      "\\newcommand{\\U}{\\mathbb{U}}",
      "\\newcommand{\\V}{\\mathbb{V}}",
      "\\newcommand{\\W}{\\mathbb{W}}",
      "\\newcommand{\\X}{\\mathbb{X}}",
      "\\newcommand{\\Y}{\\mathbb{Y}}",
      "\\newcommand{\\Z}{\\mathbb{Z}}",
    }),
  }),

  -- greek letters
  s("greek_cmds", {
    t({
      "% Greek Letters",
      "\\newcommand{\\ga}{\\alpha}",
      "\\newcommand{\\gA}{\\Alpha}",
      "\\newcommand{\\gb}{\\beta}",
      "\\newcommand{\\gB}{\\Beta}",
      "\\newcommand{\\gg}{\\gamma}",
      "\\newcommand{\\gG}{\\Gamma}",
      "\\newcommand{\\gd}{\\delta}",
      "\\newcommand{\\gD}{\\Delta}",
      "\\newcommand{\\ge}{\\epsilon}",
      "\\newcommand{\\gE}{\\Epsilon}",
      "\\newcommand{\\gz}{\\zeta}",
      "\\newcommand{\\gZ}{\\Zeta}",
      "\\newcommand{\\get}{\\eta}",
      "\\newcommand{\\gEt}{\\Eta}",
      "\\newcommand{\\gth}{\\theta}",
      "\\newcommand{\\gTh}{\\Theta}",
      "\\newcommand{\\gi}{\\iota}",
      "\\newcommand{\\gI}{\\Iota}",
      "\\newcommand{\\gk}{\\kappa}",
      "\\newcommand{\\gK}{\\Kappa}",
      "\\newcommand{\\gl}{\\lambda}",
      "\\newcommand{\\gL}{\\Lambda}",
      "\\newcommand{\\gm}{\\mu}",
      "\\newcommand{\\gM}{\\Mu}",
      "\\newcommand{\\gn}{\\nu}",
      "\\newcommand{\\gN}{\\Nu}",
      "\\newcommand{\\gx}{\\xi}",
      "\\newcommand{\\gX}{\\Xi}",
      "\\newcommand{\\go}{\\omicron}",
      "\\newcommand{\\gO}{\\Omicron}",
      "\\newcommand{\\gp}{\\pi}",
      "\\newcommand{\\gP}{\\Pi}",
      "\\newcommand{\\gr}{\\rho}",
      "\\newcommand{\\gR}{\\Rho}",
      "\\newcommand{\\gs}{\\sigma}",
      "\\newcommand{\\gS}{\\Sigma}",
      "\\newcommand{\\gt}{\\tau}",
      "\\newcommand{\\gT}{\\Tau}",
      "\\newcommand{\\gu}{\\upsilon}",
      "\\newcommand{\\gU}{\\Upsilon}",
      "\\newcommand{\\gf}{\\phi}",
      "\\newcommand{\\gF}{\\Phi}",
      "\\newcommand{\\gc}{\\chi}",
      "\\newcommand{\\gC}{\\Chi}",
      "\\newcommand{\\gq}{\\psi}",
      "\\newcommand{\\gQ}{\\Psi}",
      "\\newcommand{\\gw}{\\omega}",
      "\\newcommand{\\gW}{\\Omega}",
    }),
  }),
}