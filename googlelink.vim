function! GoogleLink()
python << EOF
import vim, urllib

query = vim.eval("@\"")
url = "http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=" + urllib.quote_plus(query)
handle = urllib.urlopen(url)
searchResult = handle.read()

commaSeparatedList = searchResult.split(',')

link = ''

for i in commaSeparatedList:
   if i.startswith('"url"'):
      i = i.replace('"url":', '')
      link = i.replace('"', '')
      break

vim.current.line = vim.current.line.replace(query, '<a href="' + link + '">' + query + '</a>')

EOF
endfunction

