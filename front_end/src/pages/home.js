import React from 'react';
import { bannerHead, categoryJson, donation, partner, Article } from '../assets/jsonData/json';
import { CardTitle, Row, Col } from 'reactstrap';
import Banner from '../components/bannerHome';
import CardArticle from '../components/cardArticle';
import CardDonation from '../components/cardDonation';
import CardOrg from '../components/cardOrg';
import styles from './module/home.module.css';

const Home = () => {
    return (
        <div className='wrapperPage'>
            <Banner
                data={bannerHead}
            />
            {/* <div className={styles.category}> */}
            <Row className={styles.category}>
                {
                    categoryJson.map((item, index) => {
                        return (
                            <Col key={index} className={styles.itemCategory} xs={12} md={6} lg={2} >
                                {item.title}
                            </Col>
                        )
                    })
                }
                <Col className={styles.itemCategory}>
                    Xem tất cả
                </Col>
            </Row>
            {/* </div> */}


            {/* About section */}

            <div className={styles.aboutSection}>
                <h5>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type
                    and scrambled it to make a type specimen book.
                </h5>
                <button className={styles.btReadMore}>Đọc Thêm</button>
            </div>

            {/* End */}


            {/* block Donation section  */}
            <div className={`block ${styles.blockDonation}`}>
                <div className={styles.titleBlock}>
                    <CardTitle tag='h2'>
                        Hoạt động quyên góp
                    </CardTitle>
                    <CardTitle tag='h5'>
                        Chung tay quyên góp giúp đỡ các hoàn cảnh khó khăn trên khắp cả nước
                    </CardTitle>
                </div>
                <Row className={styles.wrapperBlockDonation} >
                    {
                        donation != undefined || donation != null ? donation.slice(0, 6).map((item, index) => {
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
                        }) : ''
                    }
                </Row>
                <button className={`buttonPrimary ${styles.button}`}>
                    Xem Thêm
                </button>
            </div>
            {/* {end} */}


            {/* partner section */}
            <div className='block'>
                <div className={styles.titleBlock}>
                    <div className={styles.titleBlock}>
                        <CardTitle tag='h2'>
                            Các đối tác đồng hành
                        </CardTitle>
                        <CardTitle tag='h5'>
                            Các tổ chức nhân đạo Phi Lợi Nhuận đồng hành cùng HomeHope  giúp đỡ các hoàn cảnh khó khăn trên khắp cả nước
                        </CardTitle>
                    </div>
                </div>
                <Row className={styles.wrapperBlockPartner}>
                    {
                        partner.map((item, index) => {
                            return (
                                <CardOrg
                                    key={index}
                                    imageData={item.imageData}
                                    title={item.title}
                                    detail={item.detail}
                                />
                            )
                        })
                    }
                </Row>
                <button className={`buttonPrimary ${styles.button}`}>
                    Xem Thêm
                </button>
            </div>
            {/* end */}

            {/* blog section */}
            <div className={`block ${styles.blockBlog}`}>
                <div className={styles.titleBlock}>
                    <div className={styles.titleBlock}>
                        <CardTitle tag='h2'>
                            Tin tức cộng đồng
                        </CardTitle>
                        <CardTitle tag='h5'>
                            Cập nhật thông tin các hoạt động quyên góp mới nhất
                        </CardTitle>
                    </div>
                </div>
                <Row className={styles.wrapperBlockPartner}>
                    {
                        Article.slice(0, 6).map((item, index) => {
                            return (
                                <CardArticle
                                    key={index}
                                    imageData={item.imageData}
                                    title={item.title}
                                    datePublished={item.datePublished}
                                />
                            )
                        })
                    }
                </Row>
                <button className={`buttonPrimary ${styles.button}`}>
                    Xem Thêm
                </button>
            </div>
            {/* end */}



        </div >
    );
}

export default Home;
