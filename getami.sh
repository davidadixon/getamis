echo -e "{"
echo -e "\t\"ap-northeast-1\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region ap-northeast-1)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-northeast-1)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-northeast-1)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region ap-northeast-1)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region ap-northeast-1)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-1)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-1)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-1)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-1)\""
echo -e "\t},"
echo -e "\t\"ap-northeast-2\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region ap-northeast-2)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-northeast-2)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-northeast-2)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region ap-northeast-2)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region ap-northeast-2)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-2)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-2)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-2)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-2)\""
echo -e "\t},"
echo -e "\t\"ap-northeast-3\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region ap-northeast-3)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-northeast-3)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-northeast-3)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region ap-northeast-3)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region ap-northeast-3)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-3)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-3)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-3)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-northeast-3)\""
echo -e "\t},"
echo -e "\t\"ap-south-1\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region ap-south-1)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-south-1)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-south-1)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region ap-south-1)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region ap-south-1)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-south-1)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-south-1)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-south-1)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-south-1)\""
echo -e "\t},"
echo -e "\t\"ap-southeast-1\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region ap-southeast-1)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-southeast-1)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-southeast-1)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region ap-southeast-1)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region ap-southeast-1)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-southeast-1)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-southeast-1)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-southeast-1)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-southeast-1)\""
echo -e "\t},"
echo -e "\t\"ap-southeast-2\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region ap-southeast-2)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-southeast-2)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ap-southeast-2)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region ap-southeast-2)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region ap-southeast-2)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-southeast-2)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ap-southeast-2)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-southeast-2)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ap-southeast-2)\""
echo -e "\t},"
echo -e "\t\"ca-central-1\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region ca-central-1)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ca-central-1)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region ca-central-1)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region ca-central-1)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region ca-central-1)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ca-central-1)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region ca-central-1)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ca-central-1)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region ca-central-1)\""
echo -e "\t},"
echo -e "\t\"eu-north-1\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region eu-north-1)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region eu-north-1)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region eu-north-1)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region eu-north-1)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region eu-north-1)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region eu-north-1)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region eu-north-1)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region eu-north-1)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region eu-north-1)\""
echo -e "\t},"
echo -e "\t\"eu-west-1\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region eu-west-1)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region eu-west-1)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region eu-west-1)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region eu-west-1)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region eu-west-1)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-1)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-1)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-1)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-1)\""
echo -e "\t},"
echo -e "\t\"eu-west-2\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region eu-west-2)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region eu-west-2)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region eu-west-2)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region eu-west-2)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region eu-west-2)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-2)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-2)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-2)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-2)\""
echo -e "\t},"
echo -e "\t\"eu-west-3\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region eu-west-3)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region eu-west-3)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region eu-west-3)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region eu-west-3)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region eu-west-3)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-3)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-3)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-3)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region eu-west-3)\""
echo -e "\t},"
echo -e "\t\"sa-east-1\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region sa-east-1)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region sa-east-1)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region sa-east-1)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region sa-east-1)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region sa-east-1)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region sa-east-1)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region sa-east-1)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region sa-east-1)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region sa-east-1)\""
echo -e "\t},"
echo -e "\t\"us-east-1\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region us-east-1)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region us-east-1)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region us-east-1)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region us-east-1)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region us-east-1)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region us-east-1)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region us-east-1)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region us-east-1)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region us-east-1)\""
echo -e "\t},"
echo -e "\t\"us-east-2\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region us-east-2)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region us-east-2)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region us-east-2)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region us-east-2)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region us-east-2)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region us-east-2)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region us-east-2)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region us-east-2)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region us-east-2)\""
echo -e "\t},"
echo -e "\t\"us-west-1\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region us-west-1)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region us-west-1)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region us-west-1)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region us-west-1)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region us-west-1)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region us-west-1)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region us-west-1)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region us-west-1)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region us-west-1)\""
echo -e "\t},"
echo -e "\t\"us-west-2\": {"
echo -e "\t\t\"AmazonLinux2\": \"$(aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2' 'Name=state,Values=available' --query 'reverse(sort_by(Images, &CreationDate))[:1].ImageId' --output text --region us-west-2)\","
echo -e "\t\t\"Ubuntu16\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region us-west-2)\","
echo -e "\t\t\"Ubuntu18\": \"$(aws ec2 describe-images --owners 099720109477 --filters 'Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-????????' 'Name=state,Values=available' --query 'sort_by(Images, &CreationDate)[-1].ImageId' --output text --region us-west-2)\","
echo -e "\t\t\"Windows2012\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-Base  --query 'Parameters[0].[Value]' --output text --region us-west-2)\","
echo -e "\t\t\"Windows2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-Base  --query 'Parameters[0].[Value]' --output text --region us-west-2)\","
echo -e "\t\t\"Windows2012SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region us-west-2)\","
echo -e "\t\t\"Windows2016SQL2016\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2016_SP2_Standard  --query 'Parameters[0].[Value]' --output text --region us-west-2)\","
echo -e "\t\t\"Windows2016SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2016-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region us-west-2)\","
echo -e "\t\t\"Windows2019SQL2017\": \"$(aws ssm get-parameters --names /aws/service/ami-windows-latest/Windows_Server-2019-English-Full-SQL_2017_Standard  --query 'Parameters[0].[Value]' --output text --region us-west-2)\""
echo -e "\t}"
echo -e "}"

