import React from "react";
import {
  DropdownMenu,
  DropdownItem,
  Table,
  Dropdown,
  DropdownToggle,
} from "reactstrap";
import { orgsJson } from "../../assets/jsonData/json";
import HeadAdminitrator from "../../components/headAdminitrator";
import AddOrgsAdministrator from "./addOrgsAdministrator";
import styles from "./module/table.module.css";
import ServiceAdministrator from "./serviceAdministrator";

const Orgs = () => {
  const [activeAdd, setActiveAdd] = React.useState(false);
  const handleCancel = (e) => {
    setActiveAdd(e);
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
    setitemUpdate(orgsJson.find((item) => item._id == e));
    setActiveAdd(true);
  };
  return (
    <div className={`${styles.wrapper} wrapperPageAdminitrator`}>
      <HeadAdminitrator title="Quản lý Tổ chức, đối tác" user="Adminitrator" />
      {activeAdd == true ? (
        <AddOrgsAdministrator
          handleCancel={handleCancel}
          action={isAddNew == true ? "new" : "update"}
          itemUpdate={itemUpdate}
        />
      ) : (
        <div className={styles.wrapperContentPage}>
          <ServiceAdministrator setActiveAdd={setActiveAdd} />
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
                  <th>Tên tổ chức</th>
                  <th>Địa chỉ</th>
                  <th>Website</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                {orgsJson.map((item, index) => (
                  <tr key={index}>
                    <td>
                      <input
                        type="checkbox"
                        onChange={() => setcheck(item._id)}
                        checked={checkedAll == true ? true : null}
                      />
                    </td>
                    <td onClick={() => handleUpdate(item._id)}>{item.title}</td>
                    <td onClick={() => handleUpdate(item._id)}>
                      {item.address}
                    </td>
                    <td onClick={() => handleUpdate(item._id)}>
                      {item.linkWebsite}
                    </td>
                    <td>
                      <Dropdown
                        isOpen={indexDropdown == index ? true : false}
                        toggle={() => toggle(index)}
                      >
                        <DropdownToggle caret>Chỉnh sửa</DropdownToggle>
                        <DropdownMenu>
                          <DropdownItem onClick={() => handleUpdate(item._id)}>
                            {" "}
                            Sửa
                          </DropdownItem>
                          <DropdownItem>Xóa</DropdownItem>
                        </DropdownMenu>
                      </Dropdown>
                    </td>
                  </tr>
                ))}
              </tbody>
            </Table>
          </div>
        </div>
      )}
    </div>
  );
};

export default Orgs;
