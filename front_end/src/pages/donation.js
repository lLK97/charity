import React from 'react';
import background from '../assets/image/bgDonation.jpeg';
import { Row } from 'reactstrap'
import { donation } from '../assets/jsonData/json';
import Slider from "react-slick";
import styles from './module/donation.module.css';
import CardDonation from '../components/cardDonation';
import BannerHeadPage from '../components/bannerHeadPage';
import { settingDonationSlider } from '../assets/jsonData/settingSlide';

const numberCardOfPageDefalt = 6;
const Donation = () => {

    const category = [
        'Vì Trẻ Em',
        'Người già, người khuyết tật',
        'Bệnh hiểm nghèo',
        'Hoàn cảnh khó khăn',
        'Hỗ trợ giáo dục',
        'Đầu tư cơ sở vật chất',
        'Cứu trợ động vật',
        'Bảo vệ môi trường'
    ]

    const [numberCardOfPage, setnumberCardOfPage] = React.useState(numberCardOfPageDefalt);
    const [hideAddButton, sethideAddButton] = React.useState(false);
    const handleCardDonation = () => {
        donation.length - numberCardOfPage > 3 ? setnumberCardOfPage(numberCardOfPage + numberCardOfPageDefalt) : setnumberCardOfPage(donation.length);

    }
    React.useEffect(() => {
        if (donation.length == numberCardOfPage) {
            sethideAddButton(true);
        }
    })
    return (
        <div className='wrapperPage'>
            {/* background image head */}
            <BannerHeadPage
                background={background}
                title='Hoạt Động Quyên Góp'
                des='Các chương trình hoạt động từ thiện giúp đỡ cộng đồng - Cập nhật mới nhất'
            />
            {/* end */}


            {/* category  */}
            <div className={styles.category}>
                <Slider {...settingDonationSlider}>
                    {
                        category.map((item, index) => {
                            return (
                                <div className={styles.itemSlider} key={index}>
                                    {
                                        item
                                    }
                                </div>
                            )
                        })
                    }
                </Slider>
            </div>
            {/* end */}

            {/* list card donation */}
            <Row className={`block`} >
                {
                    donation.slice(0, numberCardOfPage).map((item, index) => {
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
                {
                    hideAddButton == false ? (
                        <button className={`buttonPrimary ${styles.button}`} onClick={handleCardDonation}>
                            Xem Thêm
                        </button>
                    ) : ''
                }

            </Row>


            {/* end */}

        </div>
    );
}

export default Donation;
