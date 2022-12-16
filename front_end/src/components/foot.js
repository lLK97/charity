import React from 'react';
import { CardTitle } from 'reactstrap';
import styles from './module/foot.module.css';
import logo from '../assets/image/logoWebGreen.png';

const Foot = () => {
    return (
        <div className={styles.wrapper}>
            <div className={styles.inner}>
                <div className={styles.logo}>
                    <img src={logo} alt="" />
                    <h4>HopeHome</h4>
                </div>

                <p>Copyright © 2022</p>
            </div>

        </div>
    );
}

export default Foot;
