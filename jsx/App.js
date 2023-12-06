import React from 'react';
import 'bootstrap/dist/css/bootstrap.css';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Login from './components/login';
import Register from './components/register';
import Indx from './components/indx';




function App() {
  return (
    <div className="App">
      <React.Fragment>
        <Router>
          <Routes>
            <Route path="/" element={<Login />} />
            <Route path="/register" element={<Register />} />
            <Route path="/indx" element={<Indx/>} />
          </Routes>
        </Router>
    
      </React.Fragment>

      
    </div>


  );
}

export default App;