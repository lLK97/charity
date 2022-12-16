import React from 'react';
import { CardTitle, Row, Col } from 'reactstrap';
import { FaSearch, FaBell, FaUserAlt } from "react-icons/fa";
import styles from './module/headAdminitrator.module.css';

const HeadAdminitrator = props => {
    return (
        <Row className={styles.wrapper}>
            <Col xs={9} className={styles.wrapperLeft}>
                <CardTitle tag='h4'>{props.title}</CardTitle>
            </Col>
            <Col xs={3} className={styles.wrapperRight}>
                <div className={styles.wrapperIcon}>
                    <span>
                        <FaSearch />
                    </span>
                    <span>
                        <FaBell />
                    </span>
                </div>
                <div className={styles.wrapperUser}>
                    <span>{props.user}</span>
                    <span><FaUserAlt /></span>
                </div>
            </Col>

        </Row >
    );
}

export default HeadAdminitrator;
