from flask import Flask,render_template,request,redirect
from werkzeug.utils import secure_filename
from sqlalchemy.exc import IntegrityError
from sqlalchemy import text
from conexion import engine
from datetime import datetime
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
@app.route('/iniciarSesionEstudiante',methods=['POST'])
def loginEstudiante():
    matricula= request.form['matricula']
    correo= request.form['correo']
    resultado = inicioSesionEstudiante(matricula,correo)
    return resultado




#hola daniel






def inicioSesionEstudiante(matricula,correo):
    try:
        query = text("SELECT Matricula,Nombre1,Nombre2,ApellidoP,ApellidoM,Telefono,Correo FROM estudiante WHERE matricula = :matricula AND correo =:correo")
        with engine.connect() as conn:
            ok= conn.execute(query, {'matricula': matricula,'correo':correo}).fetchone()
            Matricula = ok[0]
            Nombre1 = ok[1]
            Nombre2 = ok[2]
            ApellidoP = ok[3]
            ApellidoM = ok[4]
            Telefono = ok[5]
            Correo = ok[6]

            if ok:
                return render_template('/perfiles/evaluacionEstudiante.html',Matricula=Matricula,Nombre1=Nombre1,Nombre2=Nombre2,ApellidoM=ApellidoM,ApellidoP=ApellidoP,Telefono=Telefono,Correo=Correo)
            else:
                return 'no encontado'
    except Exception as e:
            return f'error {e}'