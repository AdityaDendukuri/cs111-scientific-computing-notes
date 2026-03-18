# Revisions 

## 1
Currently there are a lot of parts in the document (main.tex) where there are bunch of rapod fire defitions and then followed by one excersise for all of those defintions; I believe it breaks the flow. Instead have a dedicated excersise for each definition; please note that this is only valid for specific cases for example -

`` latex
\addDef{Signed Zero}{%
Both $+0$ and $-0$ are represented and compare as equal, but behave differently in certain operations (e.g., $1/(+0) = +\infty$ vs.\ $1/(-0) = -\infty$).
}

\addDef{Subnormal Numbers}{%
Numbers smaller than the smallest normalized value $2^{e_{\min}}$ are represented with a leading zero bit instead of one, allowing gradual underflow at the cost of reduced precision. The smallest positive double-precision subnormal is $2^{-1074} \approx 4.94 \times 10^{-324}$.
}

\addDef{Infinities}{%
$+\infty$ and $-\infty$ arise from overflow or division by a nonzero number by zero (e.g., \texttt{1.0/0.0}). They propagate correctly through arithmetic: $x + \infty = \infty$ for any finite $x$.
}

\addDef{NaN (Not a Number)}{%
Produced by undefined operations such as $0/0$, $\infty - \infty$, or $\sqrt{-1}$. Any arithmetic involving a NaN returns a NaN, and NaN compares unequal to everything including itself (\texttt{nan != nan} is \texttt{True} in Python).
}

\addExcr{%
\begin{enumerate}
    \item In Python, evaluate \texttt{float('inf') + 1}, \texttt{float('inf') - float('inf')}, and \texttt{0.0 * float('inf')}. Classify each result as a normal float, $\pm\infty$, or NaN. Explain using the IEEE 754 rules above.
    \item Explain why \texttt{float('nan') == float('nan')} returns \texttt{False} in Python. What does this imply for checking if a computation produced a NaN?
    \item What is the smallest positive subnormal number in IEEE single precision (1 sign, 8 exponent, 23 fraction bits)? How does its relative rounding error compare to that of a normalized number?
\end{enumerate}
}
```

see this? I want the notes to build up in a logical flow instead of something like this. This is meant to be a self studty for students. Definition, excersise (ma ybe an example to warm up the students).

## 2 
have some logical flow. If you have a section or subsection title; have a very small transition paragraph before we jump into the definitions etc.. ; each of these environments should reference each other. If an excersise needs a definition or a theorem, we need to reference it. I think this can be done somewhat easily by assigning a lable in macro? then we can reference them in excersises. 


## minor
-- remove em dashes 
-- Make the title for definitions and theorems and lemmas etc (that appear in parantehesis in body). 
-- we dont need to make every entry without purpose definition