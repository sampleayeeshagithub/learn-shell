total=$(free  | grep Mem | awk '{print $2}')
free=$(free  |grep Mem | awk '{print $4}')

used_percentage=$(echo "100 - ($free / $total * 100)" | bc -l  | awk -f . '{print $1}')
echo $used_percentage

