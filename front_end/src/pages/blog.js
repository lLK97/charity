import React from 'react';
import background from '../assets/image/news.jpg'
import BannerHeadPage from '../components/bannerHeadPage';
import { Row, Col } from 'reactstrap';
import { cardNews, donation } from '../assets/jsonData/json';
import styles from './module/blog.module.css';
import CardNews from '../components/cardNews';
import CardDonation from '../components/cardDonation';
import { Link } from 'react-router-dom';


const Blog = () => {
    return (
        <div className="wrapperPage">
            <BannerHeadPage
                background={background}
                title='Cập nhật các tin tức quyên góp mới nhất'

            />
            <div className={styles.wrapper}>
                <Row>
                    <Col xs={12} lg={8}
                        className={styles.left}>
                        {
                            cardNews.slice(0, 8).map((item, index) => {
                                return (
                                    <Link to='/blog/detail' className={styles.blog}>
                                        <CardNews
                                            key={index}
                                            imageData={item.imageData}
                                            title={item.title}
                                            desShort={item.desShort}
                                            datePublished={item.datePublished}
                                        />
                                    </Link>
                                )
                            })
                        }
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
            </div>
        </div>
    );
}

export default Blog;
