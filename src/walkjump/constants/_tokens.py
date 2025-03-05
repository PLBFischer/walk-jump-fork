from sklearn.preprocessing import LabelEncoder

# TOTRACK
TOKEN_GAP = "-"
TOKENS_AA = list("ARNDCEQGHILKMFPSTWYV")
# TOTRACK
#TOKENS_AHO = sorted([TOKEN_GAP, *TOKENS_AA])
TOKENS_AHO = sorted(TOKENS_AA) 

ALPHABET_AHO = LabelEncoder().fit(TOKENS_AHO)
