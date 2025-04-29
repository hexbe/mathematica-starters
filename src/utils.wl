(* utils.wl - general utility functions *)

(* NormalizeList: Normalizes a list of numbers to the range [0,1]. *)
NormalizeList[list_List] := Module[{minVal, maxVal},
    minVal = Min[list];
    maxVal = Max[list];
    If[maxVal != minVal,
        (list - minVal)/(maxVal - minVal),
        ConstantArray[0, Length[list]]   (* if all values are equal, return zeros *)
    ]
]

(* NumericalDerivative: Computes slopes (derivatives) between consecutive {x,y} points. *)
NumericalDerivative[data_List] := Module[{xs, ys},
    xs = data[[All, 1]];
    ys = data[[All, 2]];
    Differences[ys]/Differences[xs]
]

(* MapWithProgress: Applies function f to each element in list, displaying a progress bar. *)
MapWithProgress[f_, list_List] := Module[{n, res},
    n = Length[list];
    res = Monitor[
        Table[f[list[[i]]], {i, 1, n}],
        ProgressIndicator[i/n]
    ];
    res
]

(* RoundToNearest: Rounds x to the nearest multiple of m. *)
RoundToNearest[x_, m_] := Round[x/m]*m

(* TimeIt: Evaluates expr and returns {result, elapsed time in seconds}. *)
TimeIt[expr_] := Module[{result, time},
    {time, result} = AbsoluteTiming[result = expr];
    {result, time}
]
