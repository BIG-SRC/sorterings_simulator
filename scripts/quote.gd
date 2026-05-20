extends Label

# Liste med motiverende beskeder om miljø og affaldssortering
var quotes = [
	"Tak fordi du hjælper med at gøre verden lidt grønnere.",
	"Flot arbejde! Du hjalp miljøet ved at sortere affald korrekt.",
	"Hver gang du sorterer affald korrekt, hjælper du miljøet lidt mere.",
	"Når du sorterer korrekt, er du med til at gøre affald til nye muligheder.",
	"Hver gang du sorterer dit affald korrekt, hjælper du med at passe på naturen."
]

# Kører en gang når scenen starter
func _ready():
	# Vælger et tilfældigt quote fra listen og viser det på labelen
	text = quotes.pick_random()
