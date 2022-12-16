import React from 'react';
import { Row, Col } from 'reactstrap';
import styles from './module/head.module.css';

import { BsSearch, BsJustify } from 'react-icons/bs';

import { Link } from 'react-router-dom';

import logo from '../assets/image/logoWebGreen.png';

const Head = () => {
    const menuJson = [
        {
            title: 'Về chúng tôi',
            link: '/about'
        },
        {
            title: 'Quyên góp',
            link: '/donation'
        },
        {
            title: 'Đối tác',
            link: '/orgs'
        },
        {
            title: 'Tin tức',
            link: '/blog'
        },
        {
            title: 'Đăng nhập',
            link: '/login'
        }
    ]
    const [activeMenu, setactiveMenu] = React.useState('/');
    const [showMenu, setShowMenu] = React.useState(false)

    const handleActiveMenu = (link) => {
        setactiveMenu(link);
    }
    const handleShowMenu = () => {
        setShowMenu(!showMenu);
    }

    return (
        <div className={styles.wrapper}>
            <Row className={styles.inner}>
                <Col xs={12} lg={2} className={styles.section_logo}>

                    <img src={logo} alt="" />
                    <span>HopeHome</span>
                    {/* </div> */}
                </Col>

                {/* 
                
                menu */}
                <Col xs={12} lg={6} className={styles.wrapper_btmenu}>
                    <button className={styles.bt_menu} onClick={() => handleShowMenu()}>
                        <BsJustify />
                    </button>
                </Col>
                <Col xs={12} lg={6} className={`${styles.menu} ${showMenu == false ? 'hide_menu' : 'active_menu'}`}>
                    <Row className={styles.inner_menu}>
                        {
                            menuJson.map((item, index) => {
                                return (
                                    <Col xs={12} lg={{ size: 'auto', }} key={index}
                                        className={`${styles.item_menu} ${activeMenu == item.link ? styles.activeItemMenu : ''}`}  >
                                        <Link to={item.link} onClick={() => handleActiveMenu(item.link)} >
                                            {item.title}
                                        </Link >
                                    </Col>
                                )
                            })
                        }
                    </Row>

                </Col>

                {/* end */}


            </Row >
        </div >
    );
}

export default Head;
