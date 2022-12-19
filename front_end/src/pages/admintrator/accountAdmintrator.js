import React from "react";
import HeadAdminitrator from "../../components/headAdminitrator";
import AddAccountAdminitrator from "./addAccountAdministrator";
import styles from "./module/table.module.css";
import { accountJson } from "../../assets/jsonData/json";
import ServiceAdministrator from "./serviceAdministrator";
import {
  DropdownMenu,
  DropdownItem,
  Table,
  Dropdown,
  DropdownToggle,
} from "reactstrap";

const AccountAdmintrator = () => {
  const [activeAddAccount, setactiveAddAccount] = React.useState(false);
  const handleCancel = (e) => {
    setactiveAddAccount(e);
  };

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
    setitemUpdate(accountJson.find((item) => item._id == e));
    setactiveAddAccount(true);
  };

  return (
    <div className={`${styles.wrapper} wrapperPageAdminitrator`}>
      <HeadAdminitrator title="Quản lý tài khoản" user="Adminitrator" />
      {activeAddAccount != false ? (
        <AddAccountAdminitrator
          handleCancel={handleCancel}
          action={isAddNew == true ? "new" : "update"}
          itemUpdate={itemUpdate}
        />
      ) : (
        <div className={styles.wrapperContentPage}>
          <ServiceAdministrator setActiveAdd={setactiveAddAccount} />
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
                  <th>Tên tài khoản</th>
                  <th>Mật khẩu</th>
                  <th>Họ tên</th>
                  <th>Email</th>
                  <th>Vai trò</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                {accountJson.map((item, index) => {
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
                        {item.password}
                      </td>
                      <td onClick={() => handleUpdate(item._id)}>
                        {item.fullname}
                      </td>
                      <td onClick={() => handleUpdate(item._id)}>
                        {item.email}
                      </td>
                      <td onClick={() => handleUpdate(item._id)}>
                        {item.role}
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
  );
};

export default AccountAdmintrator;
