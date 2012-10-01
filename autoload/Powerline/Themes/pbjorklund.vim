" Disabled:
" Add the following line into the first theme group to see the highlight
" group
" \ , 'currhigroup'
"
" Line info taken out - I know which line number I'm on from the gutter
"\ , 'lineinfo'
let g:Powerline#Themes#pbjorklund#theme = Pl#Theme#Create(
	\ Pl#Theme#Buffer(''
		\ , 'fugitive:branch'
		\ , 'fileinfo'
		\ , 'flags.mod'
		\ , 'syntastic:errors'
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
		\ , 'sass:status'
		\ , 'rvm:string'
		\ , 'filetype'
		\ , 'scrollpercent'
	\ ),
	\
	\ Pl#Theme#Buffer('command_t'
		\ , ['static_str.name', 'Command-T']
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
		\ , ['raw.line', '%10(Match #%l%)']
	\ ),
	\
	\ Pl#Theme#Buffer('bt_help'
		\ , ['static_str.name', 'Help']
		\ , 'filename'
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
		\ , 'scrollpercent'
	\ ),
	\
	\ Pl#Theme#Buffer('ft_vimpager'
		\ , ['static_str.name', 'Pager']
		\ , 'filename'
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
		\ , 'scrollpercent'
	\ ),
	\
	\ Pl#Theme#Buffer('ft_man'
		\ , ['static_str.name', 'Man page']
		\ , 'filename'
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
		\ , 'scrollpercent'
	\ ),
	\
	\ Pl#Theme#Buffer('ft_qf'
		\ , ['static_str.name', 'Quickfix']
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
	\ )
\ )
