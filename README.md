I have changed the layout of the JSON so it can be nested one down.  This makes it so you can nest other mappings the same way.  You now have to include RegionMap in your original CFN template, then transform under that.

A process you can using bash to print out new AMI's to JSON format and post it to an S3 bucket.

Please replace your bucket name in the rungetami.sh and if you want to use this in CloudFormation using Fn::Transform make the bucket public.

My plan is make this better down the line, maybe using Lambda.

This will run fine on a t3.nano, or your free tier EC2 instance.

I wrote a post about how to install and use this to make your life easier here: https://baffler.io/2019/03/02/getting-new-amis-automatically/