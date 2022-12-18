import React from 'react';
import {
    FaPlus,
    FaFilePdf,
    FaFileExcel,
    FaPrint,
    FaRegTrashAlt,
} from "react-icons/fa";
import styles from './module/serviceAdministrator.module.css';

const ServiceAdministrator = props => {
    return (
        <div className={styles.service}>
            <button
                className={`${styles.button} buttonPrimary`}
                onClick={() => props.setActiveAdd(true)}
            >
                <FaPlus /> <span>Thêm mới</span>
            </button>
            <button className={`${styles.button} buttonPrimary`}>
                <FaRegTrashAlt /> <span>Xóa</span>
            </button>
            <div className={styles.right}>
                <button className={styles.btService}>
                    <FaFilePdf />
                </button>
                <button className={styles.btService}>
                    <FaFileExcel />
                </button>
                <button className={styles.btService}>
                    <FaPrint />
                </button>
            </div>
        </div>
    )
}

export default ServiceAdministrator;
