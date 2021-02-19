echo 'Deploying node'



echo 'Removing modules'
rm -r node_modules

echo "Transferring codebase: $host"
scp -ri $key $local_path $host:$destination_path

echo "Starting server"
ssh -i $key $host 'cd send-it-to-tor; sudo killall -9 node; npm install; npm start'

echo 'Re-installing local modules'
npm install
