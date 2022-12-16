import React from 'react';
import { Link } from 'react-router-dom';
import { CardTitle } from 'reactstrap';
import styles from './module/bannerHeadPage.module.css';

const BannerHeadPage = props => {
    return (
        <div className={styles.imgHead}
            style={{
                background: `linear-gradient(rgba(0,0,0,0.2), rgba(0,0,0,0.2)), url(${props.background})`
            }}
        >
            <div className={styles.innerBanner}>
                {
                    props.title != '' ? (
                        <CardTitle tag='h1' className={styles.title}>
                            {
                                props.title
                            }
                        </CardTitle>
                    ) : ''
                }
                {
                    props.des != '' ? (
                        <p className={styles.des}>
                            {
                                props.des
                            }
                        </p>
                    ) : ''
                }
            </div>
        </div>
    );
}

export default BannerHeadPage;
