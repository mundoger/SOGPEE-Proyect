from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

usuario = "root"
contraseña = ""
host = "localhost"
base_de_datos = "sogpee"

url = f"mysql+pymysql://{usuario}:{contraseña}@{host}/{base_de_datos}"

engine = create_engine(url,echo=True)
Session = sessionmaker(bind=engine)
Base = declarative_base()