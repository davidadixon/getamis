bash getami.sh >amis.json
aws s3 cp ./amis.json s3://##PUT YOUR BUCKET NAME HERE#
