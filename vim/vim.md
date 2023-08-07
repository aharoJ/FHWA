
## command mode
- G drop to bottom
	- gg drop to top
- `}` drop blocks of code/p's
	- `{`
- 20J drop you 20 lines down
- u --> undo
- crl+r --> redo
- dd --> deletes row
	- also copies it to **clipboard**
- `.` --> keeps the algo going
- yy --> yanks it to **clipboard**
- p --> paste below
	- P

## :

- :200
	- moves to line 200



## moving
- h
	- left
- j
	- bottom
- k
	- up
- l
	- right

---

- w 
	- jumps words
- W
	- breaks at spaces
- b 
	- inverse of `w`
- B
	- inverse of `W`
- ^
	- taked you the begining of the first `char`
- 0 
	- takes you the leftest regardless of `char`
- $
	- ?
- t
	- take me to `    `
		- ie... `t '!' `
- f
	- same to `t` but precise
- %
	- take you to `({[]})`
	- `d %`
		- delete everything in between the (  ) 
- `esc`
	- cancel changes

- c 
	- change
	- `c w`
		- changes the word 
	- `c t`
		- changes to until....
		- `c t }`
			- change until we hit `}`
- d
	- delete


- z
	- undo
- `crl + r`
	- re-do


- dd
	- deletes row
- D
	- deletes everything ahead of the cursor for that line
- C 
	- same concept but go into inser mode

- `*`
	- fuzzy search current word
- `;`
	- repeats the algo 
		- ie... `c t f ; ; ; ;`
		- it will find all the f..f..f..f


- zz
	- centers you to the middle
- a
	- insert mode, shift to the right 
- A
	- takes you to end of line
- i
	- inser mode directly on top
- I
	- takes you to start of line


- `x`
	- deletes curr `char`


- `~`
	- changes to upper~lower case and vice~versa

- `.`
	- re-do the same algo


- `r`
	- replace


# Visual Mode
- `V`
	- visual mode
- v 
	- more precise
- crl + v 
	- a straight colum | -->
- dd
	- deltes but gets clipped
- `>`
	- indents code
- o --> drops you a new line + insert-mode
	- O








