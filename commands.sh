# List all user pools. 
# If you have more user pools, you can increase the max-results parameter to see more pools.
aws cognito-idp list-user-pools --max-results 10

# Filter user pools by name and display only name and ID
aws cognito-idp list-user-pools --max-results 10 --query "UserPools[?starts_with(Name, 'my-pool')].{Name:Name, Id:Id}"

# List more user pools using NextToken. Replace [NextToken] with the NextToken value from the previous command.
aws cognito-idp list-user-pools --max-results 10 --starting-token [NextToken]

# Get user pool details. Replace <user-pool-id> with your user pool ID.
aws cognito-idp describe-user-pool --user-pool-id <user-pool-id>

