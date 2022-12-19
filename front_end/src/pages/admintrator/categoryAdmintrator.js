import React from "react";
import {
  DropdownMenu,
  DropdownItem,
  Table,
  Dropdown,
  DropdownToggle,
} from "reactstrap";
import { categoryJsonAdmin } from "../../assets/jsonData/json";
import HeadAdminitrator from "../../components/headAdminitrator";
import AddCategoryAdministrator from "./addCategoryAdministrator";
import styles from "./module/table.module.css";
import ServiceAdministrator from "./serviceAdministrator";

const Category = (props) => {
  const [activeAdd, setactiveAdd] = React.useState(false);
  const handleCancel = (e) => {
    setactiveAdd(e);
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
    setitemUpdate(categoryJsonAdmin.find((item) => item._id == e));
    setactiveAdd(true);
  };
  return (
    <div className={`${styles.wrapper} wrapperPageAdminitrator`}>
      <HeadAdminitrator title="Quản lý danh mục" user="Adminitrator" />
      {activeAdd == true ? (
        <AddCategoryAdministrator
          handleCancel={handleCancel}
          action={isAddNew == true ? "new" : "update"}
          itemUpdate={itemUpdate}
        />
      ) : (
        <div className={styles.wrapperContentPage}>
          <ServiceAdministrator setActiveAdd={setactiveAdd} />
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
                  <th>Tiêu đề</th>
                  <th>Miêu tả</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                {categoryJsonAdmin.map((item, index) => {
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
                        {item.title}
                      </td>
                      <td onClick={() => handleUpdate(item._id)}>{item.des}</td>
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

export default Category;
