import React from "react";
import HeadAdminitrator from "../../components/headAdminitrator";
import styles from "./module/table.module.css";

import {
  DropdownMenu,
  DropdownItem,
  Table,
  Dropdown,
  DropdownToggle,
} from "reactstrap";
import { campaignJson } from "../../assets/jsonData/json";
import AddCampaignAdminitrator from "./addCampaianAdminitrator";
import ServiceAdministrator from "./serviceAdministrator";

const CampaignAdminitrator = () => {
  const [activeAddCampaign, setActiveAddCampaign] = React.useState(false);
  const handleCancel = (e) => {
    setActiveAddCampaign(e);
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
    setitemUpdate(campaignJson.find((item) => item._id == e));
    setActiveAddCampaign(true);
  };
  return (
    <div className={`${styles.wrapper} wrapperPageAdminitrator`}>
      <HeadAdminitrator title="Quản lý chiến dịch quyên góp" user="Admin" />

      {activeAddCampaign != false ? (
        <AddCampaignAdminitrator
          handleCancel={handleCancel}
          action={isAddNew == true ? "new" : "update"}
          itemUpdate={itemUpdate}
        />
      ) : (
        <div className={styles.wrapperContentPage}>
          <ServiceAdministrator setActiveAdd={setActiveAddCampaign} />
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
                  <th>Ngày bắt đầu</th>
                  <th>Ngày kết thúc</th>
                  <th>Tên tổ chức</th>
                  <th>Danh mục</th>
                  <th>Tổng số tiền</th>
                  <th>Trạng thái</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                {campaignJson.map((item, index) => {
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
                      <td onClick={() => handleUpdate(item._id)}>
                        {item.start}
                      </td>
                      <td onClick={() => handleUpdate(item._id)}>{item.end}</td>
                      <td onClick={() => handleUpdate(item._id)}>
                        {item.orgsName}
                      </td>
                      <td onClick={() => handleUpdate(item._id)}>
                        {item.category}
                      </td>
                      <td onClick={() => handleUpdate(item._id)}>
                        {item.amount}
                      </td>
                      <td onClick={() => handleUpdate(item._id)}>
                        {item.status}
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

export default CampaignAdminitrator;
