import React from 'react';
import { CardText, CardTitle, Row, Col } from 'reactstrap';
import BannerHeadPage from '../components/bannerHeadPage';
import styles from './module/detailOrgs.module.css';
import background from '../assets/image/OperationSmile.jpg';
import { OrgDetail, donation, partner } from '../assets/jsonData/json'
import CardOrg from '../components/cardOrg';
import { Link } from 'react-router-dom';
import CardDonation from '../components/cardDonation';

const DetaillOrgs = () => {
    return (
        <div className="wrapperPage">
            <BannerHeadPage
                background={background} />
            <div className="block">
                <Row className={styles.wrapperDesShort}>
                    <Col xs={12} lg={6} className={styles.innerDesShort}>
                        <CardTitle tag='h3'>
                            {
                                OrgDetail[0].title
                            }
                        </CardTitle>
                        <CardText tag='h5'>
                            {
                                OrgDetail[0].desShort
                            }
                        </CardText>
                        <div className={styles.wrapperButton}>
                            <button className="buttonPrimary">Quyên góp</button>
                            <button className="buttonPrimary">Giới thiệu</button>
                        </div>
                    </Col>
                    <Col xs={12} lg={6} className={styles.wrapperImg}>
                        <div className={styles.img}
                            style={{ backgroundImage: `url(${OrgDetail[0].imageData})` }}
                        >
                        </div>

                    </Col>
                </Row>
                <div className={styles.detail}>
                    <CardTitle tag='h3'>
                        {OrgDetail[0].title}
                    </CardTitle>
                    <CardText>
                        {
                            OrgDetail[0].detail
                        }
                    </CardText>
                </div>
            </div>
            <div className='block'>
                <div className={styles.titleBlock}>
                    <CardTitle tag='h2'>Các chương trình quyên góp khác</CardTitle>
                    <CardTitle tag='h5'>
                        Các chương trình quyên góp của Quỹ Hy Vọng - Hope Foundation trên HopeHome
                    </CardTitle>
                </div>
                <Row className={styles.wrapperCard}>
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
                <Link to={'/donation'}>
                    <button className={`buttonPrimary ${styles.button}`}>
                        Xem Thêm
                    </button>
                </Link>
            </div>

            <div className='block'>
                <div className={styles.titleBlock}>
                    <CardTitle tag='h2'>Các đối tác đồng hành khác</CardTitle>
                </div>
                <Row className={styles.wrapperCard}>
                    {
                        partner.slice(0, 6).map((item, index) => {
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
                <Link to={'/donation'}>
                    <button className={`buttonPrimary ${styles.button}`}>
                        Xem Thêm
                    </button>
                </Link>
            </div>
        </div >
    );
}

export default DetaillOrgs;
