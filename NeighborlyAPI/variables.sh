#! /bin/sh
resourceGroup=resource-group-swedencentral
########################################
# Variables for the Function App
# Must be unique worldwide
functionApp=mariasfunctionapp
# Must be unique worldwide
storageAccount=mariaslabaccount
region=swedencentral
########################################
# Variables for MongoDB API resources
# Needs to be lower case
cosmosDBAccountName="mariascosmosaccount-cli" 
serverVersion='4.0'
# MongoDB database name
databaseName='mariascosmosdbcli'
connectionString='mongodb://mariascosmosaccount-cli:KliYHWM0Xa5y2srxRDKcXko2VLE5cwyrO29j4Oc9xJuz2YQPow5HSo8lME0kBS724z0U0fBihlMT7wdgTrQgSQ==@mariascosmosaccount-cli.mongo.cosmos.azure.com:10255/?ssl=true&replicaSet=globaldb&retrywrites=false&maxIdleTimeMS=120000&appName=@mariascosmosaccount-cli@'
# Collection within the MongoDB database
#collectionName='notes'
########################################
# General purpose variables
# uniqueId=$RANDOM
########################################
# Must be unique worldwide
webApp='mariasDeployApp'
########################################
containerRegistry='mariascontainerregistry'
AKSCluster='mariaskuberneteskluster'
imageName='mariasimage'
imageTag='v1'
########################################
# Print and verify
echo "=======Local Environment Variables======"
echo "functionApp = "$functionApp
echo "resourceGroup = "$resourceGroup
echo "storageAccount = "$storageAccount
echo "region = "$region
echo "cosmosDBAccountName = "$cosmosDBAccountName
echo "serverVersion = "$serverVersion
echo "databaseName = "$databaseName
echo "connectionString = "$connectionString
#echo "collectionName = "$collectionName
echo "webApp = "$webApp
echo "containerRegistry = "$containerRegistry
echo "AKSCluster = "$AKSCluster
echo "imageName = "$imageName
echo "imageTag = "$imageTag
echo "=======End of Result======"
