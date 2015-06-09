#Reconstructed code from dataquest.io - Turning partials in a single comprehensive overview

#Create function
def normalize(token):
    token = token.replace(".","")
    token = token.replace(",","")
    token = token.replace("'", "")
    token = token.replace(";", "")
    token = token.replace("\n", "")
    token = token.lower()
    return token

#Open dictionary
f = open("dictionary.txt","r")
text = f.read()
tokenized_text = text.split(" ")

#Create empty list in order to append in loop
normalized_dictionary_tokens = []

#Normalize dictionary
for token in tokenized_text:
    token = normalize(token)
    normalized_dictionary_tokens.append(token)

#open story
f = open("story.txt","r")
story = f.read()
tokenized_story = text.split(" ")

#Create empty list in order to append in loop
normalized_tokens = []

#Normalize story
normalized_tokens = []
for token in tokenized_story:
    token = normalize(token)
    normalized_tokens.append(token)

#Create empty list in order to append in loop
potential_misspellings = []
correctly_spelled = []

#Classify as correctly spelled or misspelling
for token in normalized_story_tokens:
    if token in normalized_dictionary_tokens:
        correctly_spelled.append(token)
    else:
        potential_misspellings.append(token)