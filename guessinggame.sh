echo "pls guess how many files are in the current directory ?"
read response

function number_file {
       local number=$(ls | wc -l)
       echo $number
}

file_number=$(number_file)

while [[ $response -ne $file_number ]]
do
        if [[ $response -lt $file_number ]]
        then
             echo "pls enter a larger number"
             read response
         else
             echo "pls enter a smaller number"
             read response
         fi
done

echo "finally you got the number of files."