while true; do
  read cpu a b c d e f g h i j < /proc/stat
  idle1=$((c+d)); total1=$((a+b+c+d+e+f+g+h+i+j))
  sleep 1
  read cpu a b c d e f g h i j < /proc/stat
  idle2=$((c+d)); total2=$((a+b+c+d+e+f+g+h+i+j))
  echo $((100 * ( (total2-total1) - (idle2-idle1) ) / (total2-total1)))"%"
done
