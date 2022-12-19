import React from "react";
import { CardTitle, Form, FormGroup, Input, Label } from "reactstrap";
import styles from "./module/table.module.css";

const AddOrgsAdministrator = (props) => {
  const dataUpdate = props.itemUpdate;
  const [title, settitle] = React.useState(dataUpdate?.title);
  const [address, setaddress] = React.useState(dataUpdate?.email);
  const [detail, setdetail] = React.useState(dataUpdate?.detail);
  const [users, setusers] = React.useState(dataUpdate?.users);

  return (
    <div className={styles.wrapperAdd}>
      <CardTitle tag="h5">
        {props.action == "new" ? "Thêm mới chiến dịch quyên góp" : ""}
        {props.action == "update" ? "Chỉnh sửa đợt quyên góp" : ""}
      </CardTitle>
      <Form>
        <FormGroup>
          <Label>Tên : </Label>
          <Input
            placeholder="Tên tổ chức"
            name="title"
            value={title}
            onChange={(e) => settitle(e.value)}
          />
        </FormGroup>
        <FormGroup>
          <Label>Địa chỉ : </Label>
          <Input
            placeholder="Địa chỉ liên hệ"
            name="address"
            value={address}
            onChange={(e) => setaddress(e.value)}
          />
        </FormGroup>
        <FormGroup>
          <Label>Thông tin : </Label>
          <Input
            placeholder="Thông tin về tổ chức"
            name="detail"
            type="textarea"
            value={detail}
            onChange={(e) => setdetail(e.value)}
          />
        </FormGroup>
        <FormGroup>
          <Label>Tài khoản : </Label>
          <Input type="select" name="users">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </Input>
        </FormGroup>

        <FormGroup className={styles.grButton}>
          <button className={`${styles.button} buttonPrimary`}>Xác nhận</button>
          <button
            className={`${styles.button} buttonPrimary`}
            onClick={() => props.handleCancel(false)}
          >
            Hủy
          </button>
        </FormGroup>
      </Form>
    </div>
  );
};

export default AddOrgsAdministrator;
