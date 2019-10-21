$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  i = 0
  totals = {}
  
  while i < nds.length do
    directors_name = nds[i][:name]
    totals[directors_name] = 0
    movie_index = 0
    
  while movie_index < nds[i][:movies].length do
    totals[directors_name] += nds[i][:movies][movie_index][:worldwide_gross]
    movie_index += 1
end
i += 1
end
totals
end
