from flask import Flask,render_template,request,redirect
from werkzeug.utils import secure_filename
from sqlalchemy.exc import IntegrityError
from sqlalchemy import text
from conexion import engine
from datetime import datetime
import re,os

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
@app.route('/logincoordinacion',methods=['POST'])
def logincoordinacion():
    correo = request.form['correo']
    password = request.form['password']
    resultado = inicioSesionCoordinacion(correo,password)
    return resultado
@app.route('/guardartodo',methods=['POST'])
def guardartodo():
    titulo = request.form['titulocuestionario']
    funcion = request.form['FuncionProyecto']
    resultado = agregarproyectos(titulo,funcion)
    return resultado
@app.route('/enviarDocumentos', methods=['POST'])
def enviarDocumentos():
    parcial = request.form['parcial']
    nombre = request.form['nombre']
    accion = request.form.get('accion')
    cartas = request.files.get('cartas')
    proyecto = request.files.get('proyecto')
    matricula = request.form['matricula']
    correo = request.form['correo']
    if accion == 'evaluar':
        return 'evaluaciom'
    elif accion == 'enviar':
        guardarCartas(cartas,parcial,nombre)
        guardarProyectos(proyecto,parcial,nombre)
        return render_template('carga.html', matricula=matricula,correo=correo)
    else:
        return 'accion desconocida'








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
    
def inicioSesionCoordinacion(correo,password):
    try:
        query = text("SELECT Correo,password FROM coordinacion WHERE correo = :correo AND password =:password")
        with engine.connect() as conn:
            ok= conn.execute(query, {'correo': correo,'password':password}).fetchone()
            if ok:
                return render_template('/Agregar.html')
            else:
                return 'no encontado'
    except Exception as e:
            return f'{e}'

def agregarproyectos(titulo,funcion):
    try:
        query = text("INSERT INTO proyecto (Nombre,Funcion) VALUES (:Nombre,:Funcion)")
        with engine.connect() as conn:
            ok = conn.execute(query,{'Nombre' :titulo,'Funcion':funcion})
            if ok:
                return 'ok'
            else:
                return "oknt"

    except Exception as e:
        return e

def guardarCartas(archivo,parcial,nombre):
    UPLOAD_FOLDER = 'static/cartas'
    nuevo_nombre = f'cartas{nombre}{parcial}.pdf'
    if archivo.filename == '':
        return 'No se selecciono ningun archivo'
    if not archivo.filename.endswith('.pdf'):
        return 'debe ser un archivo pdf'
    ruta_guardado = os.path.join(UPLOAD_FOLDER,secure_filename(nuevo_nombre))
    archivo.save(ruta_guardado)

def guardarProyectos(archivo,parcial,nombre):
    UPLOAD_FOLDER = 'static/proyectos'
    nuevo_nombre = f'proyeto{nombre}{parcial}.pdf'
    if archivo.filename == '':
        return 'No se selecciono ningun archivo'
    if not archivo.filename.endswith('.pdf'):
        return 'debe ser un archivo pdf'
    ruta_guardado = os.path.join(UPLOAD_FOLDER,secure_filename(nuevo_nombre))
    archivo.save(ruta_guardado)
    





















