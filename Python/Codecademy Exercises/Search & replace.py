x = "this is a text"


def censor(text,word):
    split = text.split()
    for n in range(len(split)):
        if split[n].lower() == word.lower():
            split[n] = "*" * len(word)
    return " ".join(split)
    return split

