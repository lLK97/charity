import React from 'react';
import { Link } from 'react-router-dom';
import { CardTitle, Col, Row } from 'reactstrap';
import styles from './module/cardOrgs.module.css';

const CardOrg = props => {
    return (
        <Col xs={12} md={6} lg={4}>
            <div className={styles.wrapper}>
                <div className={styles.inner}>
                    <Row>
                        <Col xs={12} className={styles.logo}>
                            <img src={props.imageData} alt="" />
                        </Col>
                        <Col xs={12} className={styles.wrapperRight}>
                            <CardTitle tag='h5'>
                                {props.title}
                            </CardTitle>
                            <CardTitle className={styles.detail}>
                                {
                                    props.detail
                                }
                            </CardTitle>
                            <Link to={'/orgs/detail'}>
                                <button className={styles.button}>
                                    Xem chi tiết
                                </button>
                            </Link>
                        </Col>
                    </Row>
                </div>
            </div>
        </Col >
    );
}

export default CardOrg;
