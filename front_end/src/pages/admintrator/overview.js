import React from 'react';
import { CardTitle, Row, Col, Table } from 'reactstrap';
import HeadAdminitrator from '../../components/headAdminitrator';
import { lastDonation, lastDonor } from '../../assets/jsonData/json';
import styles from './module/overview.module.css';

const Overview = () => {

    return (
        <div className={`${styles.wrapper} wrapperPageAdminitrator`}>
            <HeadAdminitrator
                title='Tổng quát'
                user='Adminitrator'
            />
            <Row className={styles.wrapperBlock}>

                <Col className={styles.itemBlock}>
                    <div className={styles.innerBlock}>
                        <CardTitle tag='h6'>
                            Dự án gây quỹ <br />thành công
                        </CardTitle>
                        <CardTitle tag='h3'>
                            60
                        </CardTitle>
                    </div>
                </Col>
                <Col className={styles.itemBlock}>
                    <div className={styles.innerBlock}>
                        <CardTitle tag='h6'>
                            Tổng số tiền <br />quyên góp
                        </CardTitle>
                        <CardTitle tag='h3'>
                            16
                        </CardTitle>
                    </div>
                </Col>
                <Col className={styles.itemBlock}>
                    <div className={styles.innerBlock}>
                        <CardTitle tag='h6'>
                            Số lượt<br /> quyên góp
                        </CardTitle>
                        <CardTitle tag='h3'>
                            43
                        </CardTitle>
                    </div>
                </Col>
                <Col className={styles.itemBlock}>
                    <div className={styles.innerBlock}>
                        <CardTitle tag='h6'>
                            Các đối tác<br /> đồng hành
                        </CardTitle>
                        <CardTitle tag='h3'>
                            32
                        </CardTitle>
                    </div>
                </Col>
                <div className={styles.wrapperLastDonor}>
                    <Table borderless >

                        <thead>
                            <tr>
                                <th>
                                    <h4>Các chiến dịch quyên góp gần đây</h4>
                                </th>
                                <th>Xem tất cả</th>
                            </tr>
                            <tr>
                                <th>Tiêu đề</th>
                                <th>Tổng số tiền quyên góp</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                                lastDonor.map((item, index) => {
                                    return (
                                        <tr key={index}>
                                            <td>{item.title}</td>
                                            <td>{item.amount}</td>
                                        </tr>
                                    )
                                })
                            }
                        </tbody>

                    </Table>
                </div>
                <div className={styles.wrapperDonation}>
                    <Table borderless>
                        <thead>
                            <tr>
                                <th>
                                    <h4>Các lượt quyên góp nổi bật </h4>
                                </th>
                                <th>Xem tất cả</th>
                            </tr>
                            <tr>
                                <th>Họ tên</th>
                                <th>Số tiền quyên góp</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                                lastDonation.map((item,index)=>{
                                    return(
                                        <tr key={index}>
                                            <td>{item.title}</td>
                                            <td>{item.amount}</td>
                                        </tr>
                                    )
                                })
                            }
                        </tbody>
                    </Table>
                </div>
                
            </Row>
        </div >
    );
}

export default Overview;