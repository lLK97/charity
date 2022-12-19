import React from "react";
import {
  DropdownMenu,
  DropdownItem,
  Table,
  Dropdown,
  DropdownToggle,
} from "reactstrap";
import HeadAdminitrator from "../../components/headAdminitrator";
import styles from "./module/table.module.css";
import ServiceAdministrator from "./serviceAdministrator";
import { donationJson } from "../../assets/jsonData/json";
import AddDonationAdminitrator from "./addDonationAdminitrator";

const DonationAdminitrator = () => {
  const [activeAddDonation, setactiveAddDonation] = React.useState(false);

  const [checkedAll, setcheckAll] = React.useState(false);
  const [checked, setcheck] = React.useState(false);
  const [indexDropdown, setindexDropdown] = React.useState(null);
  const [isAddNew, setisAddNew] = React.useState(true);
  const [itemUpdate, setitemUpdate] = React.useState(null);

  const toggle = (index) => {
    indexDropdown == index ? setindexDropdown(null) : setindexDropdown(index);
  };

  const handlecheckAll = (e) => {
    setcheckAll(e.target.checked);
  };
  const handleUpdate = (e) => {
    setisAddNew(false);
    setitemUpdate(donationJson.find((item) => item._id == e));
    setactiveAddDonation(true);
  };
  const handleCancel = (e) => {
    setactiveAddDonation(e);
  };

  return (
    <div className={`${styles.wrapper} wrapperPageAdminitrator`}>
      <HeadAdminitrator title="Quản lý đợt quyên góp" user="Administrator" />
      <div className={styles.wrapperContentPage}>
        {activeAddDonation != false ? (
          <AddDonationAdminitrator
            handleCancel={handleCancel}
            action={isAddNew == true ? "new" : "update"}
            itemUpdate={itemUpdate}
          />
        ) : (
          <div className={styles.wrapperContentPage}>
            <ServiceAdministrator setActiveAdd={setactiveAddDonation} />
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
                    <th>Họ tên</th>
                    <th>Email</th>
                    <th>Số điện thoại</th>
                    <th>Địa chỉ</th>
                    <th>Số tiền</th>
                    <th>Ghi chú</th>
                    <th>Phương thức</th>
                    <th>Vai trò</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  {donationJson.map((item, index) => {
                    return (
                      <tr key={index}>
                        <td>
                          <input
                            type="checkbox"
                            onChange={() => setcheck(item._id)}
                            checked={checkedAll == true ? true : null}
                          />
                        </td>
                        <td onClick={() => handleUpdate(item._id)}>
                          {item.name}
                        </td>
                        <td onClick={() => handleUpdate(item._id)}>
                          {item.email}
                        </td>
                        <td onClick={() => handleUpdate(item._id)}>
                          {item.phone}
                        </td>
                        <td onClick={() => handleUpdate(item._id)}>
                          {item.address}
                        </td>
                        <td onClick={() => handleUpdate(item._id)}>
                          {item.amount} VND
                        </td>
                        <td onClick={() => handleUpdate(item._id)}>
                          {item.note}
                        </td>
                        <td onClick={() => handleUpdate(item._id)}>
                          {item.payment}
                        </td>
                        <td onClick={() => handleUpdate(item._id)}>
                          {item.auth == true ? "Thành viên" : "Ẩn danh"}
                        </td>
                        <td>
                          <Dropdown
                            isOpen={indexDropdown == index ? true : false}
                            toggle={() => toggle(index)}
                          >
                            <DropdownToggle caret>Chỉnh sửa</DropdownToggle>
                            <DropdownMenu>
                              <DropdownItem
                                onClick={() => handleUpdate(item._id)}
                              >
                                {" "}
                                Sửa
                              </DropdownItem>
                              <DropdownItem>Xóa</DropdownItem>
                            </DropdownMenu>
                          </Dropdown>
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </Table>
            </div>
          </div>
        )}
      </div>
    </div>
  );
};

export default DonationAdminitrator;
