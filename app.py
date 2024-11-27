from flask import Flask,render_template,request,redirect
from werkzeug.utils import secure_filename
from sqlalchemy.exc import IntegrityError
from sqlalchemy import text
from conexion import engine
from datetime import datetime
import hashlib,os
import re

app = Flask(__name__)
@app.route('/')
def index():
    return render_template('index.html')
@app.route('/loginEstudiante2')
def loginEstudiante2():
    return render_template('/login/loginEstudiante2.html')
@app.route('/loginAsesorAcademico2')
def loginAsesorAcademico2():
    return render_template('/login//loginAsesorAcademico2.html')
@app.route('/loginCoordinacion2')
def loginCoordinacion2():
    return render_template('login/loginCoordinacion2.html')