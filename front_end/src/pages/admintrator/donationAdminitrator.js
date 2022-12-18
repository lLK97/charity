import React from 'react';
import { Table } from 'reactstrap';
import HeadAdminitrator from '../../components/headAdminitrator';
import styles from './module/donation.module.css';
import ServiceAdministrator from './serviceAdministrator';
import { donotionJson } from "../../assets/jsonData/json";

const DonationAdminitrator = () => {

    const [activeAddDonation, setactiveAddDonation] = React.useState(false);
    const [activeAdd, setactiveAdd] = React.useState(false);

    const [checkedAll, setcheckAll] = React.useState(false);
    const [checked, setcheck] = React.useState(false);
    const [indexDropdown, setindexDropdown] = React.useState(null);

    const toggle = (index) => {
        indexDropdown == index ? setindexDropdown(null) : setindexDropdown(index);
    };

    const handlecheckAll = (e) => {
        setcheckAll(e.target.checked);
    };
    return (

        <div className={`${styles.wrapper} wrapperPageAdminitrator`}>
            <HeadAdminitrator
                title='Quản lý đợt quyên góp'
                user='Administrator' />
            <div className={styles.wrapperContentPage}>
                <ServiceAdministrator
                    setActiveAdd={setactiveAdd} />

                <div className={styles.wrapperTable}>
                    <Table borderless>
                        <thead>
                            <tr>
                                <th>
                                    <input
                                        type="checkbox"
                                        onChange={(e) => handlecheckAll(e)}
                                    />
                                </th>
                                <th>
                                    Họ tên
                                </th>
                                <th>
                                    Email
                                </th>
                                <th>
                                    Số điện thoại
                                </th>
                                <th>
                                    Địa chỉ
                                </th>
                                <th>
                                    Số tiền 
                                </th>
                                <th>
                                    Ghi chú
                                </th>
                                <th>
                                    Phương thức
                                </th>
                                <th>
                                  
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                                donotionJson.map((item, index) => {
                                    return (
                                        <tr key={index}>
                                            <td>
                                                <input
                                                    type="checkbox"
                                                    onChange={() => setcheck(item._id)}
                                                    checked={checkedAll == true ? true : null}
                                                />
                                            </td>
                                            <td>{item.name}</td>
                                            <td>{item.email}</td>
                                            <td>{item.phone}</td>
                                            <td>{item.address}</td>
                                            <td>{item.amount} VND</td>
                                            <td>{item.note}</td>
                                            <td>{item.payment}</td>
                                            <td>{item.auth == true ? 'Người dùng' : 'Ẩn danh'}</td>
                                        </tr>
                                    )
                                })
                            }
                        </tbody>
                    </Table>
                </div>
            </div>

        </div>
    );
}

export default DonationAdminitrator;
