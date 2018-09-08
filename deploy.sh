echo 'Deploying node'

# host=ec2-user@ec2-34-230-86-85
host=ec2-user@ec2-18-206-62-163.compute-1.amazonaws.com
local_path=/Users/campbellweaver/Documents/Personal/dev/send-it-to-tor
destination_path=/home/ec2-user
key=/Users/campbellweaver/Documents/BSI/aws_keys/send_it_to_tor_key.pem

echo 'Removing modules'
rm -r node_modules

echo "Transferring codebase: $host"
scp -ri $key $local_path $host:$destination_path

echo "Starting server"
ssh -i $key $host 'cd send-it-to-tor; sudo killall -9 node; npm install; npm start'

echo 'Re-installing local modules'
npm install
