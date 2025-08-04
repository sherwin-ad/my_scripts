def sentence_maker(phrase):
    interogative = ('how', 'what', 'why', 'where', 'when') 
    capitalized_phrase = phrase.capitalize()
    if phrase.startswith(interogative):
        return "{}?".format(capitalized_phrase)
    else:
        return "{}.".format(capitalized_phrase)
    
results = []
while True:
    user_input = input('Say something: ')
    if user_input == r"\end":
        break
    else:
        results.append(sentence_maker(user_input))

print(" ".join(results))