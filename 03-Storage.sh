echo "" > 03-storage.json
echo "" > 03-storage.parameters-dev.json
echo "" > 03-storage.parameters-prod.json





group='arm-parameter-files-dev'

az group create -g $group -l northeurope

az group deployment create \
    -g group \
    --template-file 03-storage.json
    --parameters @03-storage.parameters-dev.json





group='arm-parameter-files-prod'

az group create -g $group -l northeurope

az group deployment create \
    -g group \
    --template-file 03-storage.json
    --parameters @03-storage.parameters-prod.json