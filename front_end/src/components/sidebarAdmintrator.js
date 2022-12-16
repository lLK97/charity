import React from 'react';
import { Row, Col, CardTitle } from 'reactstrap';
import {
    FaChartPie, FaUserFriends, FaDonate,
    FaHandHoldingUsd, FaUserAlt, FaRegFile, FaBars
} from "react-icons/fa";
import logo from '../assets/image/logoWebGreen.png';
import styles from './module/sidebarAdmintrator.module.css';
import { Link, useLocation } from 'react-router-dom';

const SidebarAdmintrator = () => {
    const location = useLocation().pathname;
    const [activeSidebar, setactiveSidebar] = React.useState(location);
    const jsonItemSidebar = [
        {
            title: 'Tổng quát',
            icon: <FaChartPie />,
            link: '/dashboard/overview'
        },
        {
            title: 'Chiến dịch quyên góp',
            icon: <FaDonate />,
            link: '/dashboard/campaign'
        },
        {
            title: 'Các đợt quyên góp',
            icon: <FaHandHoldingUsd />,
            link: '/dashboard/donation'
        },
        {
            title: 'Tài khoản',
            icon: <FaUserAlt />,
            link: '/dashboard/account'
        },
        {
            title: 'Tổ chức, đối tác',
            icon: <FaUserFriends />,
            link: '/dashboard/orgs'
        },
        {
            title: 'Bài viết',
            icon: <FaRegFile />,
            link: '/dashboard/article'
        },
        {
            title: 'Danh mục',
            icon: <FaBars />,
            link: '/dashboard/category'
        }
    ]
    return (
        <div className={styles.wrapper}>
            <div className={styles.logoHead} >
                <img src={logo} alt="" />
                <span>
                    <h6>Quản Lý Quyên Góp</h6>
                </span>
            </div>
            <div className={styles.wrapperItemSidebar}>
                {
                    jsonItemSidebar.map((item, index) => {
                        return (
                            <Link to={item.link} className={styles.itemSidebar} key={index} onClick={() => setactiveSidebar(item.link)}>
                                <div className={`${activeSidebar == item.link ? 'activeSidebar' : ''}`}>
                                    {
                                        item.icon
                                    }
                                    <span>{item.title}</span>
                                </div>
                            </Link>
                        )
                    })
                }
            </div>


        </div>
    );
}

export default SidebarAdmintrator;
