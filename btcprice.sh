#!/bin/bash    
    
while [ true ] 
do
    price=$(curl -s https://www.bitcoinprice.com | grep -e '<span id="price"');
    beginning='<td style="border: 0px"><span id="price" style="font-size: 72px; font-weight: bold;">';
    ending='</span></td>';
    price=${price#$beginning};
    price=${price%$ending};
    if [ -z $price ]
    then
        echo fetching... > /home/anthony/btcprice.txt
    else
        echo $price > /home/anthony/btcprice.txt
    sleep 10
    fi

done



