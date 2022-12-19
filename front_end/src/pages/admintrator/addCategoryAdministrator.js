import React from "react";
import { CardTitle, Form, FormGroup, Input, Label } from "reactstrap";
import styles from "./module/table.module.css";

const AddCategoryAdministrator = (props) => {
  const itemUpdate = props.itemUpdate;
  const [title, settitle] = React.useState(itemUpdate?.title);
  const [des, setdes] = React.useState(itemUpdate?.des);

  return (
    <div className={styles.wrapperAdd}>
      <CardTitle tag="h5">
        {props.action == "new" ? "Thêm mới danh mục" : ""}
        {props.action == "update" ? "Chỉnh sửa danh mục" : ""}
      </CardTitle>
      <Form>
        <FormGroup>
          <Label>Tiêu đề : </Label>
          <Input
            placeholder="Tiêu đề"
            name="title"
            value={title}
            onChange={(e) => settitle(e.value)}
          />
        </FormGroup>
        <FormGroup>
          <Label>Miêu tả : </Label>
          <Input
            placeholder="Miêu tả"
            name="des"
            value={des}
            onChange={(e) => setdes(e.value)}
          />
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

export default AddCategoryAdministrator;
