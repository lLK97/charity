import React from 'react';
import { Link } from 'react-router-dom';
import { Button, CardText, CardTitle, Col, Progress, Row } from 'reactstrap';
import styles from './module/cardDonation.module.css';

const CardDonation = props => {
    return (
        <Col xs={12} md={6} lg={4} className={styles.wrapper}>
            <Link to={props.link} className={styles.innerCardDonation}>
                <div className={styles.innerBlock}>
                    <img src={props.imageData} alt="" />
                    <div className={styles.innerText}>
                        <CardTitle tag='h5'>
                            {props.title}
                        </CardTitle>
                        <Row className={styles.wrapperLogo}>
                            <Col xs={8} className={styles.logo}>
                                <img src={props.imageDataLogo} alt="" />
                                <span>
                                    {props.titleOrg}
                                </span>
                            </Col>
                            <Col xs={4} className={styles.wrapperDayleft}>
                                <div className={styles.dayLeft}>
                                    Còn {props.dayLeft} ngày
                                </div>
                            </Col>
                        </Row>

                        <div className={styles.target}>
                            <CardText >
                                <strong>{props.current}</strong> / {props.target}
                            </CardText>
                            <CardTitle className={styles.progress}>
                                <Progress value={50} color="success" />
                            </CardTitle>
                            <Link to={props.link}>
                                <Button>
                                    Quyên góp
                                </Button>
                            </Link>
                        </div>
                    </div>
                </div>
            </Link>
        </Col >

    );
}

export default CardDonation;
