path=$1
files=$(ls $path)

for filename in $files
do
	#perf stat -e LLC-stores -o LLC-stores-nicslu --append ./demo $path/$filename 
	./kludemo < $path/$filename 
done
