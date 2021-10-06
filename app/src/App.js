import React, {useState, useEffect} from 'react';
import logo from './logo.svg';
import './App.css';
import axios from 'axios';
import {Modal, ModalBody, ModalFooter, ModalHeader, TabContent} from 'reactstrap';

function App() {
  const baseUrl="http://localhost:61877";
  const [data, setData] = useState([]);

  const peticionGet=async()=>{
    await axios.get(baseUrl+"/api/Foci")
    .then(reponse=>{
      setData(reponse.data);
    }).catch(error=>{
      console.log(error);
    })
  }

  useEffect(()=>{
    peticionGet();
  },[])

  return (
    <div className="App">
        <table className="table table-bordered">
          <thead>
            <tr>
              <th>FocusId</th>
              <th>FocusName</th>
              <th>Description</th>
              <th>GroupId</th>
              <th>CreatedDate</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
          {data.map(gestor=>(
            <tr key={gestor.FocusId}>
              <td>{gestor.FocusId}</td>
              <td>{gestor.FocusName}</td>
              <td>{gestor.Description}</td>
              <td>{gestor.GroupId}</td>
              <td>{gestor.CreatedDate}</td>
              <td>
                <button className="btn btn-primary">Editar</button>{" "}
                <button className="btn btn-danger">Eliminar</button>
              </td>
            </tr>              
          ))}
          </tbody>
        </table>
    </div>
  );
}

export default App;
