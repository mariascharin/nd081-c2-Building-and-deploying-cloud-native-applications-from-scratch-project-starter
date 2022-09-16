import logging
import azure.functions as func
import pymongo
import json
from bson.json_util import dumps


def main(req: func.HttpRequest) -> func.HttpResponse:

    logging.info('Python getPosts trigger function processed a request.')

    try:
        url = "mongodb://mariascosmosaccount-cli:KliYHWM0Xa5y2srxRDKcXko2VLE5cwyrO29j4Oc9xJuz2YQPow5HSo8lME0kBS724z0U0fBihlMT7wdgTrQgSQ==@mariascosmosaccount-cli.mongo.cosmos.azure.com:10255/?ssl=true&replicaSet=globaldb&retrywrites=false&maxIdleTimeMS=120000&appName=@mariascosmosaccount-cli@"
        client = pymongo.MongoClient(url)
        database = client['mariascosmosdbcli']
        collection = database['posts']

        result = collection.find({})
        result = dumps(result)

        return func.HttpResponse(result, mimetype="application/json", charset='utf-8', status_code=200)
    except:
        return func.HttpResponse("Bad request.", status_code=400)