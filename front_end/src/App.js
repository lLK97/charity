import React from 'react';
import { Route, Routes } from 'react-router-dom';
import styles from './App.module.css';
import Foot from './components/foot';
import Head from './components/head';
import About from './pages/about';
import Account from './pages/account';
import Blog from './pages/blog';
import DetailBlog from './pages/detailBlog';
import DetailDonation from './pages/detailDonation';
import DetaillOrgs from './pages/detailOrgs';
import Donation from './pages/donation';
import ForgotPassword from './pages/forgotPassword';
import Home from './pages/home';
import Login from './pages/login';
import Partner from './pages/partner';
import Register from './pages/register';
import ResetPassword from './pages/resetPassword';
import Search from './pages/search';
import DetailAccountPersonal from './pages/detailAccountPersonal';
import CampaignPersonal from './pages/campaignPersonal';
import DonationPersonal from './pages/donationPersonal';
import FavouritePersonal from './pages/favouritePersonal';
import NotFound from './pages/NotFound';
import Dashboard from './pages/admintrator/dashboard';
import { useLocation } from 'react-router-dom';
import AccountAdmintrator from './pages/admintrator/accountAdmintrator';
import ArticleAdmintrator from './pages/admintrator/articleAdmintrator';
import CategoryAdmintrator from './pages/admintrator/categoryAdmintrator';
import OrgsAdminitrator from './pages/admintrator/orgsAdminitrator';
import Overview from './pages/admintrator/overview';
import CampaignAdminitrator from './pages/admintrator/campaignAdminitrator';
import DonationAdminitrator from './pages/admintrator/donationAdminitrator';

const App = () => {
  let location = useLocation().pathname;
  const [isAdminPage, setisAdminPage] = React.useState(false);
  React.useEffect(() => {
    if (location.includes('dashboard') == true) {
      setisAdminPage(true);
    }
  })
  return (
    <div className={styles.wrapper}>
      {
        isAdminPage != true ? (
          <Head />
        ) : ''
      }
      <div className={styles.wrraper_body}>
        <Routes>
          <Route path='*' element={<NotFound />} />
          <Route path='/' element={<Home />} />
          <Route path='/about' element={<About />} />
          <Route path='/donation' element={<Donation />} />
          <Route path='/donation/detail' element={<DetailDonation />} />
          <Route path='/orgs' element={<Partner />} />
          <Route path='/orgs/detail' element={<DetaillOrgs />} />
          <Route path='/blog' element={<Blog />} />
          <Route path='/blog/detail' element={<DetailBlog />} />
          <Route path='/search' element={<Search />} />
          <Route path='/login' element={<Login />} />
          <Route path='/register' element={<Register />} />
          <Route path='/forgot' element={<ForgotPassword />} />
          <Route path='/resetPassword' element={<ResetPassword />} />
          <Route path='/account' element={<Account />} >
            <Route path='' element={<DetailAccountPersonal />} />
            <Route path='detail' element={<DetailAccountPersonal />} />
            <Route path='campaign' element={<CampaignPersonal />} />
            <Route path='donor' element={<DonationPersonal />} />
            <Route path='favourite' element={<FavouritePersonal />} />
          </Route>
          <Route path='/dashboard' element={<Dashboard />} >
            <Route path='' element={<Overview />} />
            <Route path='overview' element={<Overview />} />
            <Route path='account' element={<AccountAdmintrator />} />
            <Route path='campaign' element={<CampaignAdminitrator />} />
            <Route path='article' element={<ArticleAdmintrator />} />
            <Route path='category' element={<CategoryAdmintrator />} />
            <Route path='orgs' element={<OrgsAdminitrator />} />
            <Route path='donation' element={<DonationAdminitrator />} />
          </Route>
        </Routes>
      </div>
      {
        isAdminPage != true ? (
          <Foot />
        ) : ''
      }

    </div >
  );
}

export default App;
