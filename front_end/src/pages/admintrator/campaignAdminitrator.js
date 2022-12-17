import React from "react";
import HeadAdminitrator from "../../components/headAdminitrator";
import styles from "./module/campaign.module.css";
import {
  FaPlus,
  FaFilePdf,
  FaFileExcel,
  FaPrint,
  FaRegTrashAlt,
} from "react-icons/fa";
import {
  DropdownMenu,
  DropdownItem,
  Table,
  Dropdown,
  DropdownToggle,
} from "reactstrap";
import { campaignJson } from "../../assets/jsonData/json";
import AddCampaignAdminitrator from "./addCampaianAdminitrator";

const CampaignAdminitrator = () => {
  const [activeAddCampaign, setActiveAddCampaign] = React.useState(false);
  const handleCancel = (e) => {
    setActiveAddCampaign(e);
  };

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
      <HeadAdminitrator title="Quản lý chiến dịch quyên góp" user="Admin" />

      {activeAddCampaign != false ? (
        <AddCampaignAdminitrator handleCancel={handleCancel} />
      ) : (
        <div className={styles.wrapperContentPage}>
          <div className={styles.service}>
            <button
              className={`${styles.button} buttonPrimary`}
              onClick={() => setActiveAddCampaign(true)}
            >
              <FaPlus /> <span>Tạo đợt quyên góp</span>
            </button>
            <button className={`${styles.button} buttonPrimary`}>
              <FaRegTrashAlt /> <span>Xóa đợt quyên góp</span>
            </button>
            <div className={styles.right}>
              <button className={styles.btService}>
                <FaFilePdf />
              </button>
              <button className={styles.btService}>
                <FaFileExcel />
              </button>
              <button className={styles.btService}>
                <FaPrint />
              </button>
            </div>
          </div>

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
                      <td>{item.title}</td>
                      <td>{item.start}</td>
                      <td>{item.end}</td>
                      <td>{item.orgsName}</td>
                      <td>{item.category}</td>
                      <td>{item.amount}</td>
                      <td>{item.status}</td>
                      <td>
                        <Dropdown
                          isOpen={indexDropdown == index ? true : false}
                          toggle={() => toggle(index)}
                        >
                          <DropdownToggle caret>Chỉnh sửa</DropdownToggle>
                          <DropdownMenu>
                            <DropdownItem>Sửa</DropdownItem>
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
