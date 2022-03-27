Input = "ttatacgatcgcctcgctcgcttttcgaaacgttag"
print(Input)
mrna = string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(Input, "t", "r"), "a", "u"), "r", "a"), "c", "n"), "g", "c"), "n", "g")
print(mrna)
trna = string.gsub(Input, "t", "u")
print(trna)
X = 0
AA = ""
while X < string.len(mrna) do
    AA = AA .. string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.sub(mrna, 0 and X+1, X+3), "aa[ag]", "Lys "), "aa[cu]", "Asn "), "ag[ag]", "Arg "), "ag[cu]", "Ser "), "ac.", "Thr "), "au[acu]", "Ile "), "aug", "Met "), "ga[ag]", "Glu "), "ga[cu]", "Asp "), "gg.", "Gly "), "gc.", "Ala "), "gu.", "Val "), "ca[ag]", "Gln "), "ca[cu]", "His "), "cg.", "Arg "), "cc.", "Pro "), "cu.", "Leu "), "ua[ag]", "stop "), "ua[cu]", "Tyr "), "uga", "stop "), "ugg", "Trp "), "ug[cu]", "Cys "), "uc.", "Ser "), "uu[ag]", "Leu "), "uu[cu]", "Phe ")
    X = X + 3
end
print(AA)
M = string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(AA, "Ala ", "A"), "Arg ", "R"), "Asn ", "N"), "Asp ", "D"), "Cys ", "C"), "Gln", "Q"), "Glu ", "E"), "Gly ", "G"), "His ", "H"), "Ile ", "I"), "Leu ", "L"), "Lys ", "K"), "Met ", "M"), "Phe ", "F"), "Pro ", "P"), "Ser ", "S"), "Thr ", "T"), "Trp ", "W"), "Tyr ", "Y"), "Val ", "V"), "stop ", " ")
print(M)