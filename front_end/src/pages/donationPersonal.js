import React from 'react';
import { CardTitle, Table } from 'reactstrap';
import { donorPersonal } from '../assets/jsonData/json';
import styles from './module/campaignPersonal.module.css';

const DonationPersonal = () => {
    return (
        <div className={styles.wrapper}>
            <CardTitle tag='h3' >Các chiến dịch đã quyên góp</CardTitle>
            <Table responsive="sm" striped className={styles.table}>
                <thead>
                    <th>STT</th>
                    <th>Tên chiến dịch</th>
                    <th>Số tiền đóng góp</th>
                    <th>Phương thức thành toán</th>
                    <th>Ngày đóng góp</th>
                </thead>
                <tbody>
                    {
                        donorPersonal.map((item, index) => {
                            return (
                                <tr key={index}>
                                    <td>{index + 1}</td>
                                    <td>
                                        {item.name}
                                    </td>
                                    <td>
                                        {item.amount}
                                    </td>
                                    <td>
                                        {item.payment}
                                    </td>
                                    <td>{item.date}</td>


                                </tr>
                            )
                        })
                    }
                </tbody>
            </Table>
        </div>

    );
}

export default DonationPersonal;
