def comment_type(snip):
	exts = {( '.cpp','.hpp', '.c','.h' ) : '//',( '.py','.snippets' ) :'#',( 'tex' ) :'%',( '.vim' ) :'"'}
	ext = snip.fn.replace(snip.basename, '')

	
	for key,value in exts.items():
		if ext in key:
			comment = value
		else:
			continue
	return comment
