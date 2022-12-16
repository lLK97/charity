import React from 'react';
import { Link } from 'react-router-dom';
import { Row, Col } from 'reactstrap';
import styles from './module/bannerHome.module.css';

const InnerCardImage = props => {
    return (
        <Link to={props.link}>
            <div className={styles.card_image}

                style={{
                    background: `linear-gradient(rgba(0,0,0,0.2), rgba(0,0,0,0.2)), url(${props.src_image})`
                }}
            >
                <span>
                    <h4>{props.title}</h4>
                    <p>{props.des}</p>
                </span>
            </div>
        </Link>
    )
}

const Banner = props => {
    const arrayJson = props.data;
    return (
        <div className={styles.wrapper}>
            <Row className={styles.inner_banner}>
                <Col xs={12} lg={6}
                    className={`${styles.left_banner} ${styles.wrapper_card}`}>
                    <InnerCardImage
                        src_image={arrayJson[0]?.imageData}
                        title={arrayJson[0]?.title}
                        des={arrayJson[0]?.desShort}
                        link='/'
                    />
                </Col>
                <Col xs={12} lg={6}
                    className={`${styles.right_banner} ${styles.wrapper_card}`}>
                    <Row className={styles.wrapper}>
                        <Col xs={12}
                            className={`${styles.wrapper_card}`}>
                            <InnerCardImage
                                src_image={arrayJson[1]?.imageData}
                                title={arrayJson[1]?.title}
                                des={arrayJson[1]?.desShort} />
                        </Col>
                        <Col xs={12}
                            className={`${styles.wrapper_card}`}>
                            <Row className={styles.wrapper}>
                                <Col xs={12} lg={6} className={`${styles.wrapper_card}`}>
                                    <InnerCardImage
                                        src_image={arrayJson[2]?.imageData}
                                        title={arrayJson[2]?.title}
                                        des={arrayJson[2]?.desShort}
                                    />
                                </Col>
                                <Col xs={12} lg={6} className={`${styles.wrapper_card}`}>
                                    <InnerCardImage
                                        src_image={arrayJson[3]?.imageData}
                                        title={arrayJson[3]?.title}
                                        des={arrayJson[3]?.desShort}
                                    />
                                </Col>
                            </Row>
                        </Col>
                    </Row>
                </Col>
            </Row >
        </div >
    );
}

export default Banner;
