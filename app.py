from flask import Flask,render_template,request,redirect,jsonify, url_for
from werkzeug.utils import secure_filename
from sqlalchemy.exc import IntegrityError
from sqlalchemy import text
from conexion import engine,Session
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
    return render_template('/login/loginAsesorAcademico2.html')

@app.route('/loginCoordinacion2')
def loginCoordinacion2():
    return render_template('login/loginCoordinacion2.html')

@app.route('/loginCoordinacionv2')
def loginCoordinacionv2():
    return render_template('login/loginCoordinacionv2.html')

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

@app.route('/logincoordinacion2',methods=['POST'])
def logincoordinacion2():
    correo = request.form['correo']
    password = request.form['password']
    resultado = inicioSesionCoordinacion2(correo,password)
    return resultado

@app.route('/guardartodo',methods=['POST'])
def guardartodo():
    titulo = request.form['titulocuestionario']
    funcion = request.form['FuncionProyecto']
    numero = request.form['numintegrantes']
    asesorA = request.form['AsesorAcademico']
    asesorE = request.form['AsesorEmpresarial']
    if numero == '1':
        matricula = request.form['estudiante-0-campo1']
        agregarproyectos(titulo,funcion)
        ID = cargarIDProyecto(titulo)
        equipo = cargarEquipoMaximo()
        ok = guardarEquipo(matricula,equipo,ID)
        guardarProyectoAsesores(ID,asesorE,asesorA)
        if ok != True:
            return render_template('Error/Error.html',ID=ok)
        return render_template('Cargas/cargaEquipo.html')
    if numero == '2':
            matricula = request.form['estudiante-0-campo1']
            matricula2 = request.form['estudiante-1-campo1']
            agregarproyectos(titulo,funcion)
            ID = cargarIDProyecto(titulo)
            equipo = cargarEquipoMaximo()
            ok= guardarEquipo2(matricula,matricula2,equipo,ID)
            guardarProyectoAsesores(ID,asesorE,asesorA)
            if ok != True:
                return render_template('Error/Error.html',ID=ok)
            return render_template('Cargas/cargaEquipo.html')
    elif numero == '3':
        matricula = request.form['estudiante-0-campo1']
        matricula2 = request.form['estudiante-1-campo1']
        matricula3 = request.form['estudiante-2-campo1']
        agregarproyectos(titulo,funcion)
        ID = cargarIDProyecto(titulo)
        equipo = cargarEquipoMaximo()
        ok = guardarEquipo3(matricula,matricula2,matricula3,equipo,ID)
        guardarProyectoAsesores(ID,asesorE,asesorA)
        if ok != True:
            return render_template('Error/Error.html',ID=ok)
        return render_template('Cargas/cargaEquipo.html')
    elif numero == '4':
        matricula = request.form['estudiante-0-campo1']
        matricula2 = request.form['estudiante-1-campo1']
        matricula3 = request.form['estudiante-2-campo1']
        matricula4 = request.form['estudiante-3-campo1']
        agregarproyectos(titulo,funcion)
        ID = cargarIDProyecto(titulo)
        equipo = cargarEquipoMaximo()
        ok= guardarEquipo4(matricula,matricula2,matricula3,matricula4,equipo,ID)
        guardarProyectoAsesores(ID,asesorE,asesorA)

        if ok != True:
            return render_template('Error/Error.html',ID=ok)
        return render_template('Cargas/cargaEquipo.html')
    elif numero == '5':
        matricula = request.form['estudiante-0-campo1']
        matricula2 = request.form['estudiante-1-campo1']
        matricula3 = request.form['estudiante-2-campo1']
        matricula4 = request.form['estudiante-3-campo1']
        matricula5 = request.form['estudiante-4-campo1']
        agregarproyectos(titulo,funcion)
        ID = cargarIDProyecto(titulo)
        equipo = cargarEquipoMaximo()
        ok= guardarEquipo5(matricula,matricula2,matricula3,matricula4,matricula5,equipo,ID)
        guardarProyectoAsesores(ID,asesorE,asesorA)
        if ok != True:
            return render_template('Error/Error.html',ID=ok)
        return render_template('Cargas/cargaEquipo.html')

@app.route('/enviarDocumentos', methods=['POST'])
def enviarDocumentos():
    parcial = request.form['parcial']
    nombre = request.form['nombre']
    cartas = request.files.get('cartas')
    proyecto = request.files.get('proyecto')
    evaluacion = request.files.get('evaluacion3')
    matricula = request.form['matricula']
    correo = request.form['correo']
    ruta_carta = guardarCartas(cartas,parcial,nombre,matricula)
    ruta_proyecto = guardarProyectos(proyecto,parcial,nombre,matricula)
    ruta_03 = guardar03(evaluacion,parcial,nombre,matricula)
    guardarRutaDocumentos(matricula,ruta_carta,ruta_03,ruta_proyecto,parcial)
    return render_template('carga.html', matricula=matricula,correo=correo)

@app.route('/agregar',methods=['POST'])
def agregar():
    opcion = cargarAsesorEmp()
    asesorAcademico = cargarAsesorAcademico()
    return render_template('/Agregar.html',cargar = opcion, asesorAcademic = asesorAcademico)


def cargarAsesorEmp2():
    query = text("SELECT EmpresaID,Nombre from Empresa")
    with engine.connect() as conn:
        try:
            ok= conn.execute(query)
            if ok:
                opciones = ''.join([f'<option value="{row[0]}">{row[1]}</option>' for row in ok])
            else:
                opciones = ''.join([f'<option value="0">Nada por mostrar</option>' for row in ok])
        except Exception as e:
            return f"error {e}"
        return opciones
@app.route('/agregar2',methods=['POST'])
def agregar2():
    opcion = cargarAsesorEmp2()
    return render_template('/registro_asesor.html',cargar2 = opcion)















@app.route('/asignarEquipo',methods=['POST'])
def asignarEquipo():
    opcion = cargarAsesorEmp()
    asesorAcademico = cargarAsesorAcademico()
    return render_template('/Agregar.html',cargar = opcion, asesorAcademic = asesorAcademico)

@app.route('/registro_asesor',methods=['POST'])
def registroAsesor():
    opcion = cargarAsesorEmp()
    asesorAcademico = cargarAsesorAcademico()
    return render_template('/registro_asesor.html',cargar = opcion, asesorAcademic = asesorAcademico)

@app.route('/borrarID',methods=['POST'])
def borrarID():
    ID = request.form['ID']
    borrarIDproyecto(ID)
    opcion = cargarAsesorEmp()
    asesorAcademico = cargarAsesorAcademico()
    return render_template('/Agregar.html',cargar = opcion, asesorAcademic = asesorAcademico) 

@app.route('/encuestaSatisfaccion',methods=['POST'])
def encuestaSatisfaccion():
    Matricula = request.form['Matricula']
    Correo = request.form['correo']
    return render_template('Cuestionarios/evaluacion_cuestionario.html',Matricula = Matricula,correo = Correo)

@app.route('/EvalulacionEstudiante',methods=['POST'])
def enviarEvaluacionEstudiante():
    matricula = request.form['Matricula']
    correo = request.form['correo']
    question11 = int(request.form['question11'])
    question12 = int(request.form['question12'])
    question13 = int(request.form['question13'])
    question14 = int(request.form['question14'])
    question15 = int(request.form['question15'])
    question16 = int(request.form['question16'])
    question17 = int(request.form['question17'])
    question18 = int(request.form['question18'])
    question19 = int(request.form['question19'])
    veracidad = request.form['veracidad']  
    prom = promedio(question11,question12,question13,question14,question15,question16,question17,question18,question19)
    guardarForm08(prom,veracidad,matricula)
    return render_template('Cargas/EnvioEvaluacionEstudiante.html',matricula = matricula,correo = correo)

@app.route('/loginAsesorAcademico',methods=['POST'])
def loginAsesorAcademico():
    correo = request.form['correo']
    password = request.form['password']
    resultado = inicioSesionAsesorA(correo,password)
    return resultado

@app.route('/AbrirExpediente',methods=['POST'])
def AbrirExpediente():
    nombre_completo = request.form['nombre']
    telefono = request.form['telefono']
    correo = request.form['correo']
    ID = request.form['ID']
    partes = nombre_completo.split()
    nombre1,nombre2,apellidop,apellidom = partes
    resultado = cargarProyectosAsesor(ID)
    return render_template('/perfiles/AsesorAcademico/revisar_expediente.html',Nombre1 = nombre1,Nombre2 = nombre2,ApellidoP = apellidop,ApellidoM = apellidom,Telefono = telefono,Correo = correo,resultado = resultado)








def inicioSesionEstudiante(matricula,correo):
    proyecto = cargarProyectoAlumno(matricula)
    try:
        query = text("SELECT Matricula,Nombre1,Nombre2,ApellidoP,ApellidoM,Telefono,Correo FROM estudiante WHERE matricula = :matricula AND correo =:correo")
        with engine.connect() as conn:
            ok= conn.execute(query, {'matricula': matricula,'correo':correo}).fetchone()
            if ok:
                Matricula = ok[0]
                Nombre1 = ok[1]
                Nombre2 = ok[2]
                ApellidoP = ok[3]
                ApellidoM = ok[4]
                Telefono = ok[5]
                Correo = ok[6]
                return render_template('/perfiles/evaluacionEstudiante.html',Matricula=Matricula,Nombre1=Nombre1,Nombre2=Nombre2,ApellidoM=ApellidoM,ApellidoP=ApellidoP,Telefono=Telefono,Correo=Correo,proyecto = proyecto)
            else:
                return 'no encontado'
    except Exception as e:
            return f'error {e}'
    
def inicioSesionCoordinacion(correo,password):
    try:
        query = text("SELECT Nombre,Nombre2,ApellidoP,ApellidoM,Correo,password FROM coordinacion WHERE correo = :correo AND password =:password")
        with engine.connect() as conn:
            ok= conn.execute(query, {'correo': correo,'password':password}).fetchone()
            if ok:
                nombre=ok[0]
                nombre2=ok[1]
                apellidoP=ok[2]
                apellidoM=ok[3]
                return render_template('/perfil_coordinacion.html',nombre = nombre,nombre2 = nombre2,apellidoP=apellidoP,apellidoM=apellidoM,correo=correo)
            else:
                return 'no encontado'
    except Exception as e:
            return f'{e}'
    
def inicioSesionCoordinacion2(correo,password):
    opcion = cargarAsesorEmp()
    asesorAcademico = cargarAsesorAcademico()
    try:
        query = text("SELECT Nombre,Nombre2,ApellidoP,ApellidoM,Correo,password FROM coordinacion WHERE correo = :correo AND password =:password")
        with engine.connect() as conn:
            ok= conn.execute(query, {'correo': correo,'password':password}).fetchone()
            if ok:
                return render_template('/Agregar.html',cargar = opcion, asesorAcademic = asesorAcademico)
            else:
                return 'no encontado'
    except Exception as e:
            return f'{e}'

def agregarproyectos(titulo,funcion):
    try:
        query = text("INSERT INTO proyecto (Nombre,Funcion) VALUES (:Nombre,:Funcion)")
        with engine.connect() as conn:
            conn.execute(query,{'Nombre' :titulo,'Funcion':funcion})
            conn.commit()
    except Exception as e:
        return str(e),400

def guardarCartas(archivo,parcial,nombre,matricula):
    base_folder = os.path.join('Documentos',matricula,parcial)
    UPLOAD_FOLDER = os.path.join(base_folder,'Cartas')
    if not os.path.exists(UPLOAD_FOLDER):
        os.makedirs(UPLOAD_FOLDER)
    nuevo_nombre = f'cartas{nombre}{parcial}.pdf'
    if archivo.filename == '':
        return 'No se selecciono ningun archivo'
    if not archivo.filename.endswith('.pdf'):
        return 'debe ser un archivo pdf'
    ruta_guardado = os.path.join(UPLOAD_FOLDER,secure_filename(nuevo_nombre))
    archivo.save(ruta_guardado)
    return ruta_guardado

def guardarProyectos(archivo,parcial,nombre,matricula):
    base_folder = os.path.join('Documentos',matricula,parcial)
    UPLOAD_FOLDER = os.path.join(base_folder,'Proyecto')
    if not os.path.exists(UPLOAD_FOLDER):
        os.makedirs(UPLOAD_FOLDER)
    nuevo_nombre = f'proyeto{nombre}{parcial}.pdf'
    if archivo.filename == '':
        return 'No se selecciono ningun archivo'
    if not archivo.filename.endswith('.pdf'):
        return 'debe ser un archivo pdf'
    ruta_guardado = os.path.join(UPLOAD_FOLDER,secure_filename(nuevo_nombre))
    archivo.save(ruta_guardado)
    return ruta_guardado
    
def guardar03(archivo,parcial,nombre,matricula):
    base_folder = os.path.join('Documentos',matricula,parcial)
    UPLOAD_FOLDER = os.path.join(base_folder,'FO03')
    if not os.path.exists(UPLOAD_FOLDER):
        os.makedirs(UPLOAD_FOLDER)
    nuevo_nombre = f'proyeto{nombre}{parcial}.pdf'
    if archivo.filename == '':
        return 'No se selecciono ningun archivo'
    if not archivo.filename.endswith('.pdf'):
        return 'debe ser un archivo pdf'
    ruta_guardado = os.path.join(UPLOAD_FOLDER,secure_filename(nuevo_nombre))
    archivo.save(ruta_guardado)
    return ruta_guardado

def cargarAsesorEmp():
    query = text("SELECT AsesorID,Nombre1,Nombre2,ApellidoP,ApellidoM,Empresa from asesorempresarial ORDER BY Empresa")
    with engine.connect() as conn:
        ok= conn.execute(query)
        if ok:
            opciones = ''.join([f'<option value="{row[0]}">{row[5]} - {row[3]} {row[4]} {row[1]} {row[2]}</option>' for row in ok])
            return opciones

def cargarAsesorAcademico():
    query = text("SELECT Id,Nombre1,Nombre2,ApellidoP,ApellidoM from asesoracademico ORDER BY ApellidoP")
    with engine.connect() as conn:
        ok= conn.execute(query)
        if ok:
            opciones = ''.join([f'<option value="{row[0]}">{row[3]} {row[4]} {row[1]} {row[2]} </option>' for row in ok])
            return opciones

def guardarEquipo(matricula, NoEquipo, ID):
    try:
        query = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula,:NoEquipo,:Id_Proyecto)")
        with engine.connect() as conn:
            conn.execute(query,{'Matricula':matricula,'NoEquipo':NoEquipo,'Id_Proyecto':ID})
            conn.commit()
            return True
    except Exception as e:
        return ID

def guardarEquipo2(matricula, matricula2, NoEquipo, ID):
    try:
        query1 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula1, :NoEquipo, :Id_Proyecto)")
        query2 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula2, :NoEquipo, :Id_Proyecto)")

        with engine.connect() as conn:
            with conn.begin():  
                conn.execute(query1, {'Matricula1': matricula, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})
                conn.execute(query2, {'Matricula2': matricula2, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})
                return True
    except Exception as e:
        return ID

def guardarEquipo3(matricula,matricula2,matricula3, NoEquipo, ID):
    try:
        query1 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula1, :NoEquipo, :Id_Proyecto)")
        query2 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula2, :NoEquipo, :Id_Proyecto)")
        query3 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula3, :NoEquipo, :Id_Proyecto)")

        with engine.connect() as conn:
            with conn.begin():  
                conn.execute(query1, {'Matricula1': matricula, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})
                conn.execute(query2, {'Matricula2': matricula2, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})
                conn.execute(query3, {'Matricula3': matricula3, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})
                return True
    except Exception as e:
        return ID

def guardarEquipo4(matricula,matricula2,matricula3,matricula4, NoEquipo, ID):
    try:
        query1 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula1, :NoEquipo, :Id_Proyecto)")
        query2 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula2, :NoEquipo, :Id_Proyecto)")
        query3 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula3, :NoEquipo, :Id_Proyecto)")
        query4 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula4, :NoEquipo, :Id_Proyecto)")

        with engine.connect() as conn:
            with conn.begin():  
                conn.execute(query1, {'Matricula1': matricula, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})
                conn.execute(query2, {'Matricula2': matricula2, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})
                conn.execute(query3, {'Matricula3': matricula3, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})
                conn.execute(query4, {'Matricula4': matricula4, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})
                return True
    except Exception as e:
        return ID

def guardarEquipo5(matricula, matricula2, matricula3, matricula4, matricula5, NoEquipo, ID):
    try:
        query1 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula1, :NoEquipo, :Id_Proyecto)")
        query2 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula2, :NoEquipo, :Id_Proyecto)")
        query3 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula3, :NoEquipo, :Id_Proyecto)")
        query4 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula4, :NoEquipo, :Id_Proyecto)")
        query5 = text("INSERT INTO equipos (Matricula, NoEquipo, Id_Proyecto) VALUES (:Matricula5, :NoEquipo, :Id_Proyecto)")

        with engine.connect() as conn:
            with conn.begin():
                conn.execute(query1, {'Matricula1': matricula, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})

                conn.execute(query2, {'Matricula2': matricula2, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})

                conn.execute(query3, {'Matricula3': matricula3, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})

                conn.execute(query4, {'Matricula4': matricula4, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})

                conn.execute(query5, {'Matricula5': matricula5, 'NoEquipo': NoEquipo, 'Id_Proyecto': ID})
                return True
    except Exception as e:
        return ID 

def cargarIDProyecto(nombre):
    try:
        query = text("SELECT ProyectoID FROM proyecto WHERE Nombre = :Nombre")
        with engine.connect() as conn:
            ok= conn.execute(query, {'Nombre': nombre}).fetchone()
            if ok:
                ID = ok[0]
                return ID
            else:
                return 'no encontado'
    except Exception as e:
            return f'error {e}'

def cargarEquipoMaximo():
    query = text("SELECT MAX(NoEquipo) FROM equipos")
    with engine.connect() as conn:
        resultado = conn.execute(query).fetchone()
        max_equipos = resultado[0] if resultado[0] is not None else 0
        return max_equipos + 1

def borrarIDproyecto(ID):
    try:
        query1 = text("DELETE FROM proyecto WHERE ProyectoID = :ID")        
        with engine.connect() as conn:
            with conn.begin():  
                conn.execute(query1, {'ID': ID})
            return True 
    except Exception as e:
        print(f"Error: {e}") 
        return False

def cargarProyectoAlumno(Matricula):
    query = text("SELECT p.Nombre FROM estudiante est JOIN equipos e ON est.Matricula = e.Matricula JOIN proyecto p ON e.Id_Proyecto = p.ProyectoID WHERE est.Matricula = :Matricula")
    with engine.connect() as conn:
        resultado = conn.execute(query,{'Matricula':Matricula}).fetchone()
        return resultado[0]
        
def cargarAsesorEmpresarial(Matricula):
    query = text("""
        SELECT a.Nombre1, a.Nombre2, a.ApellidoP, a.ApellidoM 
        FROM estudiante est
        JOIN equipos e ON est.Matricula = e.Matricula
        JOIN proyectoasesores pa ON e.Id_proyecto = pa.Id_proyecto
        JOIN asesor_empresarial a ON pa.Id_asesorE = a.AsesorID
        WHERE est.Matricula = :Matricula
    """)

    with engine.connect() as conn:
        resultado = conn.execute(query, {'Matricula': Matricula}).fetchone()

        if resultado:
            return {
                "Nombre1": resultado[0],
                "Nombre2": resultado[1],
                "ApellidoP": resultado[2],
                "ApellidoM": resultado[3]
            }
        return None
    
@app.route('/obtener_asesor', methods=['GET'])
def obtener_asesor():
    id_proyecto = request.args.get('id_proyecto')
    
    if not id_proyecto:
        return jsonify({"error": "ID de proyecto no proporcionado"}), 400

    conexion = conexion()
    cursor = conexion.cursor(dictionary=True)

    try:
        # Buscar el id_asesorA según el id_proyecto
        cursor.execute("SELECT id_asesorA FROM proyectos WHERE id_proyecto = %s", (id_proyecto,))
        proyecto = cursor.fetchone()

        if not proyecto:
            return jsonify({"error": "Proyecto no encontrado"}), 404

        id_asesorA = proyecto["id_asesorA"]

        # Buscar el nombre del asesor en la tabla de asesores
        cursor.execute("SELECT Nombre1, Nombre2, ApellidoP, ApellidoM FROM asesores WHERE id_asesorA = %s", (id_asesorA,))
        asesor = cursor.fetchone()

        if not asesor:
            return jsonify({"error": "Asesor no encontrado"}), 404

        return jsonify(asesor)

    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        cursor.close()
        conexion.close()



def guardarRutaDocumentos(matricula,ruta_carta,ruta_03,ruta_proyecto,parcial):
    try:
        query = text("INSERT INTO documentos (Matricula, Carta, FO03,Proyecto,Parcial) VALUES (:Matricula,:ruta_carta,:ruta_03,:ruta_proyecto,:parcial)")
        with engine.connect() as conn:
            conn.execute(query,{'Matricula':matricula,'ruta_carta':ruta_carta,'ruta_03':ruta_03,'ruta_proyecto':ruta_proyecto,'parcial':parcial})
            conn.commit()
            return True
    except Exception as e:
        return f'-------------Error {e}'

def promedio(question11,question12,question13,question14,question15,question16,question17,question18,question19):
    promedio = (question11+question12+question13+question14+question15+question16+question17+question18+question19)/9
    promedio = round(promedio,2)
    return promedio

def guardarForm08(promedio,veracidad,matricula):
    try:
        query = text("INSERT INTO encuesta08 (Promedio, Veracidad, Matricula) VALUES (:Promedio,:Veracidad,:Matricula)")
        with engine.connect() as conn:
            conn.execute(query,{'Promedio':promedio,'Veracidad':veracidad,'Matricula':matricula})
            conn.commit()
            return True
    except Exception as e:
        return f'error---------------->{e}'

def guardarProyectoAsesores(ID,asesorE,asesorA):
    try:
        query = text("INSERT INTO proyectoasesores (Id_asesorE, Id_asesorA, Id_proyecto) VALUES (:asesorE,:asesorA,:ID)")
        with engine.connect() as conn:
            conn.execute(query,{'asesorE':asesorE,'asesorA':asesorA,'ID':ID})
            conn.commit()
            return True
    except Exception as e:
        return f'error---------------->{e}'    

def inicioSesionAsesorA(correo,password):
    try:
        query = text("SELECT Nombre1,Nombre2,ApellidoP,ApellidoM,Telefono,Correo,Id FROM asesoracademico WHERE password = :password AND Correo =:correo")
        with engine.connect() as conn:
            ok= conn.execute(query, {'password': password,'correo':correo}).fetchone()
            if ok:
                Nombre1 = ok[0]
                Nombre2 = ok[1]
                ApellidoP = ok[2]
                ApellidoM = ok[3]
                Telefono = ok[4]
                Correo = ok[5]
                ID = ok[6]
                return render_template('/perfiles/AsesorAcademico/asesor.html',Nombre1=Nombre1,Nombre2=Nombre2,ApellidoM=ApellidoM,ApellidoP=ApellidoP,Telefono=Telefono,Correo=Correo,ID = ID)
            else:
                return 'no encontado'
    except Exception as e:
            return f'error {e}'

def cargarProyectosAsesor(ID):
    try:
        query = text('''SELECT 
        p.Nombre AS NombreProyecto
        FROM 
        asesoracademico a
        JOIN 
        proyectoasesores pa
        ON 
        a.Id = pa.Id_asesorA
        JOIN 
        proyecto p
        ON 
        pa.Id_proyecto = p.ProyectoID
        WHERE a.Id = :ID;''')
        with engine.connect() as conn:
            ok= conn.execute(query, {'ID': ID}).fetchall()
            if ok:
                opciones_html = "".join(f'<option value="{resultado[0]}">{resultado[0]}</option>' for resultado in ok)
            else:
                opciones_html ='<option value="">Nada por mostrar</option>'
            return opciones_html
    except Exception as e:
        return None



@app.route('/registro_asesor')
def registro_asesor():
    return render_template('registro_asesor.html')  # Asegúrate de que esta plantilla exista



@app.route('/guardar_asesor', methods=['POST'])
def guardar_asesor():
    # Recibir los datos del formulario
    nombre1 = request.form['nombre1']
    nombre2 = request.form['nombre2']
    apellidoP = request.form['apellidoP']
    apellidoM = request.form['apellidoM']
    telefono = request.form['telefono']
    correo = request.form['correo']

    # Crear la consulta SQL para insertar los datos en la tabla correcta
    query = """
    INSERT INTO asesoracademico (Nombre1, Nombre2, ApellidoP, ApellidoM, Telefono, Correo)
    VALUES (:nombre1, :nombre2, :apellidoP, :apellidoM, :telefono, :correo)
    """
    
    session = Session()
    
    try:
        # Ejecutar la consulta con los parámetros
        session.execute(text(query), {
            'nombre1': nombre1,
            'nombre2': nombre2,
            'apellidoP': apellidoP,
            'apellidoM': apellidoM,
            'telefono': telefono,
            'correo': correo,
        })
        
        session.commit()
        session.close()
        
        return render_template('Cargas/agregar_asesores.html')  # Redirigir correctamente a la ruta de la página
    except Exception as e:
        session.rollback()
        session.close()

from flask import render_template, request
from sqlalchemy.sql import text
from sqlalchemy.orm import Session

@app.route('/registro_asesor_empresarial')
def registro_asesor_empresarial():
    # Suponiendo que tienes una base de datos con la tabla de empresas
    session = Session()
    empresas = session.execute("SELECT id, nombre FROM empresas").fetchall()
    session.close()
    return render_template('registro_asesor_empresarial.html', empresas=empresas)

@app.route('/guardar_asesor_empresarial', methods=['POST'])
def guardar_asesor_empresarial():
    # Recibir los datos del formulario
    nombre1 = request.form['nombre1']
    nombre2 = request.form.get('nombre2', None)  # Campo opcional
    apellidoP = request.form['apellidoP']
    apellidoM = request.form.get('apellidoM', None)  # Campo opcional
    telefono = request.form.get('telefono', None)
    correo = request.form['correo']
    empresa_id = request.form['Empresa']  # ID de la empresa seleccionada

    # Crear la consulta SQL para insertar los datos en la tabla de asesores empresariales
    query = """
    INSERT INTO asesor_empresarial (Nombre1, Nombre2, ApellidoP, ApellidoM, Telefono, Correo, EmpresaID)
    VALUES (:nombre1, :nombre2, :apellidoP, :apellidoM, :telefono, :correo, :empresa_id)
    """

    session = Session()

    try:
        # Ejecutar la consulta con los parámetros
        session.execute(text(query), {
            'nombre1': nombre1,
            'nombre2': nombre2,
            'apellidoP': apellidoP,
            'apellidoM': apellidoM,
            'telefono': telefono,
            'correo': correo,
            'empresa_id': empresa_id,
        })
        
        session.commit()
        session.close()
        
        return render_template('Cargas/agregar_asesores_empresariales.html')  # Página posterior al registro
    except Exception as e:
        session.rollback()
        session.close()
        return f"Error al guardar el asesor empresarial: {e}", 500










def cargarAsesorAcademicoCoordinacion():
    query = text("SELECT Empresa from Empresa ")
    with engine.connect() as conn:
        ok= conn.execute(query)
        if ok:
            opciones = ''.join([f'<option value="{row[0]}"> </option>' for row in ok])
            return opciones
        
@app.route('/agregarEmpresa', methods=['POST'])
def agregarC():
    opcion = cargarEmpresa()
    return render_template('registro_asesor.html', cargar2 = opcion)

def cargarEmpresa():
    query = text("SELECT EmpresaID, Nombre FROM Empresa")  # Consulta a la tabla Empresa
    with engine.connect() as conn:
        result = conn.execute(query).fetchall()  # Obtener todos los resultados de la consulta
        return result  # Devuelve las filas obtenidas
    






