import React from 'react';
import { BrowserRouter, Navigate, Routes, Route } from 'react-router-dom';
import './App.css';
import AuthGuard from './components/AuthGuard';
import Login from './components/Login';
import Home from './components/Home'
import Register from './components/Register';

function App() {
    return (
        <BrowserRouter>
            <Routes>
                <Route path='/login' element={<AuthGuard loginGuard={true}>< Login /></AuthGuard>} />
                <Route path='/register' element={<AuthGuard loginGuard={true}>< Register /></AuthGuard>} />
                <Route path='/' element={<AuthGuard><Home /></AuthGuard>} />
                <Route path='*' element={<Navigate to="/" replace />} />
            </Routes>
        </BrowserRouter>
    );
}

export default App;
