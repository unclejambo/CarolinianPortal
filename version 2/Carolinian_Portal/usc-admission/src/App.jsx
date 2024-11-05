import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Login from './components/login';
import Registration from './components/Register';
import Dashboard from './components/Dashboard';
import AdminDashboard from './components/AdminDashboard';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/register" element={<Registration />} />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route path="/admindashboard" element={<AdminDashboard />} />
      </Routes>
    </Router>
  );
}

export default App;
