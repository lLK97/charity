import React from 'react';
import { Row, Col, CardTitle, CardText } from 'reactstrap';
import styles from './module/cardNews.module.css';

const CardNews = props => {
    return (
        <div className={styles.wrapper}>
            <Row className={styles.innerCardNews}>
                <Col lg={4} className={styles.img}
                    style={{ backgroundImage: `url(${props.imageData})` }}
                >
                </Col>
                <Col xs={12} lg={8} className={styles.detail}>
                    <CardTitle tag='h3'>
                        <strong>
                            {props.title}
                        </strong>
                    </CardTitle>
                    <span className={styles.desShort}>
                        {
                            props.desShort
                        }
                    </span>
                    <CardTitle className={styles.datePublished}>
                        <strong>
                            {
                                props.datePublished
                            }
                        </strong>
                    </CardTitle>
                </Col>
            </Row>
        </div >
    );
}

export default CardNews;
