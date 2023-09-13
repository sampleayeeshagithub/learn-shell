total=$(free  | grep Mem | awk '{print $2}')
free=$(free  |grep Mem | awk '{print $4}')

used_percentage=$(echo "100 - ($free / $total * 100)" | bc -l | awk -F . '{print $1}')
echo $used_percentage

if [ $used_percentage -lt 50 ]; then
  echo Mem stat is GREEN
elif [ $used_percentage -lt 70 ]; then
  echo Mem stat is ORANGE
else
  echo Mem stat is RED
fi