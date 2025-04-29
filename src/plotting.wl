(* plotting.wl – messing around with basic plots *)

(* Simple function plot *)
Plot[Sin[x], {x, 0, 2 Pi}, PlotLabel -> "Plot of Sin[x]"]

(* Multiple functions on the same graph *)
Plot[{Sin[x], Cos[x]}, {x, 0, 2 Pi},
 PlotStyle -> {Red, Blue},
 PlotLabel -> "Sin[x] and Cos[x] together",
 PlotLegends -> {"Sin[x]", "Cos[x]"}]

(* Parametric plot – circle *)
ParametricPlot[{Cos[t], Sin[t]}, {t, 0, 2 Pi},
 AspectRatio -> 1,
 PlotLabel -> "Parametric Circle"]

(* Polar plot – rose curve *)
PolarPlot[Sin[3 θ], {θ, 0, 2 Pi},
 PlotLabel -> "Rose Curve: Sin[3θ]"]

(* 3D Plot *)
Plot3D[Sin[x y], {x, -3, 3}, {y, -3, 3},
 PlotLabel -> "3D Plot of Sin[x y]"]

(* List plot – some random points *)
ListPlot[RandomReal[{0, 1}, {20, 2}],
 PlotStyle -> Red,
 PlotLabel -> "Random Points",
 AxesLabel -> {"x", "y"}]
