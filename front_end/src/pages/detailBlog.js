import React from 'react';
import BannerHeadPage from '../components/bannerHeadPage';
import styles from './module/detailBlog.module.css';
import { BlogDetail, Article } from '../assets/jsonData/json';
import { donation } from '../assets/jsonData/json';
import { Row, Col, CardTitle } from 'reactstrap';
import CardDonation from '../components/cardDonation';
import { Link } from 'react-router-dom';
import CardNews from '../components/cardNews';
import CardArticle from '../components/cardArticle';

const DetailBlog = () => {
    return (
        <div className="wrapperPage">
            <BannerHeadPage
                background={BlogDetail[0].imageData}
                title={BlogDetail[0].title}
            />
            <div className={styles.wrapper}>
                <Row>
                    <Col xs={12} lg={8}
                        className={styles.left}>
                        {BlogDetail[0].des}
                    </Col>
                    <Col xs={12} lg={4}
                        className={styles.right}>
                        <Row className={styles.wrapperCardDonation}>
                            {
                                donation.slice(0, 3).map((item, index) => {
                                    return (
                                        <CardDonation
                                            link='/donation/detail'
                                            imageData={item.imageData}
                                            title={item.title}
                                            imageDataLogo={item.imageLogo}
                                            titleOrg={item.titleOrg}
                                            dayLeft={item.dayLeft}
                                            current={item.curennt}
                                            target={item.target}
                                            key={index}
                                        />
                                    )
                                })
                            }
                            <Link to={'/donation'} className={`${styles.button}`}>
                                <button className={`buttonPrimary `}>
                                    Xem Thêm
                                </button>
                            </Link>
                        </Row>
                    </Col>
                </Row>
                <Row className={styles.relativeDonation} >
                    <CardTitle tag='h3'>
                        <strong>Tin tức liên quan</strong>
                    </CardTitle>
                    <Row>
                        {
                            Article.slice(0, 3).map((item, index) => {
                                return (
                                    // <Col xs={12} lg={6} xl={4}>
                                    <CardArticle
                                        key={index}
                                        imageData={item.imageData}
                                        title={item.title}
                                        datePublished={item.datePublished}
                                    />
                                    // </Col>
                                )
                            })
                        }
                    </Row>
                </Row>
            </div>


        </div>
    );
}

export default DetailBlog;
