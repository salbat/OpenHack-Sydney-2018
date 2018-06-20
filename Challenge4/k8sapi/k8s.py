from flask import Flask
from kubernetes import client, config
from flask import Flask, render_template


#app = Flask(__name__)
app = Flask(__name__, template_folder='templates')


@app.route('/')
def index():
    config.load_kube_config()
    v1 = client.CoreV1Api()
    ret = v1.list_pod_for_all_namespaces(watch=False)
    output = ""
    for i in ret.items:
        print("%s\t%s\t%s" % (i.status.pod_ip, i.metadata.namespace, i.metadata.name))
        output += "%s\t%s\t%s" % (i.status.pod_ip, i.metadata.namespace, i.metadata.name)
    return output

@app.route('/stats')
def stats():
    title = "Challenge 4"
    paragraph = ["Kubernetes API in Python"]
    kubepods = []
    config.load_kube_config()
    v1 = client.CoreV1Api()
    ret = v1.list_pod_for_all_namespaces(watch=False)
    output = ""
    for i in ret.items:
        kubepods.append([i.status.pod_ip,i.metadata.namespace,i.metadata.name])
    return render_template("./stats.html", kubepods=kubepods)