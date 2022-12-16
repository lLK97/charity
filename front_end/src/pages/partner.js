import React from 'react';
import { Row } from 'reactstrap';
import { partner } from '../assets/jsonData/json';
import styles from './module/partner.module.css';
import background from '../assets/image/partner.png';
import BannerHeadPage from '../components/bannerHeadPage';
import CardOrg from '../components/cardOrg';

const numberCardOfPageDefalt = 6;
const Partner = () => {
    const [numberCardOfPage, setnumberCardOfPage] = React.useState(numberCardOfPageDefalt);
    const [hideAddButton, sethideAddButton] = React.useState(false);
    const handleCardDonation = () => {
        partner.length - numberCardOfPage > 3 ? setnumberCardOfPage(numberCardOfPage + numberCardOfPageDefalt) : setnumberCardOfPage(partner.length);

    }
    React.useEffect(() => {
        if (partner.length == numberCardOfPage) {
            sethideAddButton(true);
        }
    })
    return (
        <div className="wrapperPage">
            <BannerHeadPage
                background={background}
                title='Các đối tác đồng hành'
                des='Các đối tác đồng hành cùng HopeHome giúp đỡ các hoàn cảnh khó khăn trên khắp cả nước'
            />
            <div className="block">
                <Row >
                    {
                        partner.slice(0, numberCardOfPage).map((item, index) => {
                            return (
                                <CardOrg
                                    key={index}
                                    imageData={item.imageData}
                                    title={item.title}
                                    detail={item.detail} />
                            )
                        })
                    }
                </Row>
                {
                    hideAddButton == false ? (
                        <button className={`buttonPrimary ${styles.button}`} onClick={handleCardDonation}>
                            Xem Thêm
                        </button>
                    ) : ''
                }
            </div>
        </div>
    );
}

export default Partner;
