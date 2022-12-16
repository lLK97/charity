import React from 'react';

import styles from './module/detailDonation.module.css';
import { Col, Row, CardTitle, Progress } from 'reactstrap';
import { DonationDetail } from '../assets/jsonData/json';
import BannerHeadPage from '../components/bannerHeadPage';
import Donation from './donation';
import { donation } from '../assets/jsonData/json';
import CardDonation from '../components/cardDonation';

const DetailDonation = () => {
    return (
        <>
            <BannerHeadPage
                background={DonationDetail[0].background}
                title={DonationDetail[0].title}
            />
            <Row className={styles.wrapperText}>
                <Col xs={12} lg={8} className={styles.text}>
                    {
                        DonationDetail[0].text
                    }
                </Col>
                <Col xs={12} lg={4} className={styles.wrapperCardDonation}>
                    <div className={styles.cardDonation}>
                        <CardTitle tag='h5'>
                            <strong>
                                {
                                    DonationDetail[0].title
                                }
                            </strong>
                        </CardTitle>
                        <div className={styles.target} >
                            <strong>{DonationDetail[0].currentDonation}đ</strong> / {DonationDetail[0].targetDonation}đ
                        </div>
                        <div className={styles.wrapperProgess}>
                            <Progress value={50} color="success" />
                        </div>
                        <div className={styles.lineInfo}>
                            <strong>Số lượt quyên góp: </strong>
                            <span>{DonationDetail[0].numberOfDonor} lượt</span>
                        </div>
                        <div className={styles.lineInfo}>
                            <strong>Số ngày còn lại:</strong>
                            <span>{DonationDetail[0].leftDay} ngày</span>
                        </div>
                        <div className={styles.lineInfo}>
                            <strong>Đã đạt được:</strong>
                            <span>{DonationDetail[0].percent}%</span>
                        </div>
                        <div className={styles.button}>
                            <button className={`buttonPrimary`}>
                                Quyên góp
                            </button>
                        </div>
                        <div className={styles.partner}>
                            <CardTitle tag='h5'>
                                Đồng hành cùng dự án
                            </CardTitle>
                            <img src={DonationDetail[0].imageData} alt="" />
                            <span>Operation Smile</span>
                        </div>
                    </div>
                </Col>


            </Row>
            <Row className={styles.relativeDonation} >
                <CardTitle tag='h3'>
                    <strong>Các chương trình quyên góp khác</strong>
                </CardTitle>
                {
                    donation.slice(0, 3).map((item, index) => {
                        return (
                            <CardDonation
                                key={index}
                                imageData={item.imageData}
                                title={item.title}
                                imageDataLogo={item.imageLogo}
                                titleOrg={item.titleOrg}
                                dayLeft={item.dayLeft}
                                current={item.curennt}
                                target={item.target}
                            />
                        )
                    })
                }
            </Row>
        </>
    );
}

export default DetailDonation;
