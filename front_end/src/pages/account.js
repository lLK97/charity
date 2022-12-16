import React from 'react';
import { Link, Outlet, Route, Routes } from 'react-router-dom';
import Slider from 'react-slick';
import { settingAccountSlide } from '../assets/jsonData/settingSlide';
import { CardTitle, Col, Row } from 'reactstrap';
import { AccountDetail } from '../assets/jsonData/json';
import styles from './module/account.module.css';



const Account = () => {
    const category = [
        {
            title: 'Tài Khoản',
            link: '/account/detail'
        },
        {
            title: 'Gây Quỹ',
            link: '/account/campaign'
        },
        {
            title: 'Quyên Góp',
            link: '/account/donor'
        },
        {
            title: 'Quan Tâm',
            link: '/account/favourite'
        }
    ]

    return (
        <div className="wrapperPage">
            <div className={styles.wrrapperInfor}>
                <Row >
                    <Col lg={3} className={styles.img}
                        style={{
                            backgroundImage: `url(${AccountDetail[0].imageData})`
                        }}
                    >
                    </Col>
                    <Col xs={12} lg={6} className={styles.infor}>
                        <CardTitle tag='h3'>
                            {
                                AccountDetail[0].title
                            }
                        </CardTitle>
                        <p className={styles.email}>
                            Email: <span>
                                {
                                    AccountDetail[0].email
                                }
                            </span>
                        </p>
                        <p className={styles.address}>
                            Địa chỉ: <span>
                                {
                                    AccountDetail[0].address
                                }
                            </span>
                        </p>
                        <p className={styles.phone}>
                            Phone: <span>
                                {
                                    AccountDetail[0].phone
                                }
                            </span>
                        </p>
                        <button className={`buttonPrimary ${styles.button}`}>Chỉnh sửa</button>
                    </Col>
                    <Col lg={3} className={styles.linkDetail}>
                        <Link to='/account/detailAccount'>
                            Xem chi tiết
                        </Link>
                    </Col>

                </Row>
            </div>
            <div className={styles.category}>
                <Slider {...settingAccountSlide}>
                    {
                        category.map((item, index) => {
                            return (
                                <Link className={styles.itemSlider} key={index} to={item.link}>
                                    {
                                        item.title
                                    }
                                </Link>
                            )
                        })
                    }
                </Slider>
            </div>
            <Outlet />
        </div >
    );
}

export default Account;
