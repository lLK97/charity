import React from 'react';
import { Outlet } from 'react-router-dom';
import { Col, Row } from 'reactstrap';
import SidebarAdmintrator from '../../components/sidebarAdmintrator';
import styles from './module/dashboard.module.css';

const Dashboard = () => {
    return (
        <Row className={styles.wrapper}>
            <Col lg={2} className={styles.wrapperLeft}>
                <SidebarAdmintrator />
            </Col>
            <Col lg={10} className={styles.wrapperRight}>
                <Outlet />
            </Col>
        </Row>
    );
}

export default Dashboard;
