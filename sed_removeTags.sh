sed -e 's/<[^>]*>//g'
sed '/^\s*$/d'

sed 's/^ *//; s/ *$//; /^$/d' file.txt

`s/^ *//`  => left trim
`s/ *$//`  => right trim
`/^$/d`    => remove empty line
