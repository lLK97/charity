import React from 'react';
import { CardTitle, Col } from 'reactstrap';
import styles from './module/cardArticle.module.css';


const CardArticle = props => {
    return (
        <Col xs={12} md={6} lg={4} className={styles.wrapper}>
            <div className={styles.innerBlock}>
                <img src={props.imageData} alt="" />
                <div className={styles.innerText}>
                    <CardTitle tag='h5'>
                        {props.title}
                    </CardTitle>
                    <p>{props.datePublished}</p>
                </div>
            </div>
        </Col>
    );
}

export default CardArticle;
