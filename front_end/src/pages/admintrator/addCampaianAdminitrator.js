import React from "react";
import { Button, CardTitle, Form, FormGroup, Input, Label } from "reactstrap";
import styles from "./module/addCampaignAdminitrator.module.css";

const AddCampaignAdminitrator = (props) => {
  return (
    <div className={styles.wrapperAddCampaign}>
      <CardTitle tag="h5">Thêm mới chiến dịch quyên góp</CardTitle>
      <Form>
        <FormGroup>
          <Label>Tiêu đề</Label>
          <Input placeholder="Tiêu đề" name="title" />
        </FormGroup>
        <FormGroup>
          <Label>Ngày bắt đầu</Label>
          <Input placeholder="Ngày bắt đầu" name="dateStart" type="datetime" />
        </FormGroup>
        <FormGroup>
          <Label>Ngày kết thúc</Label>
          <Input placeholder="Ngày kết thúc" name="dateEnd" type="datetime" />
        </FormGroup>
        <FormGroup>
          <Label>Tổ chức kêu gọi quyên góp</Label>
          <Input type="select" name="orgs">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </Input>
        </FormGroup>
        <FormGroup>
          <Label>Danh mục</Label>
          <Input type="select" name="category">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </Input>
        </FormGroup>
        <FormGroup>
          <Label>Số tiền quyên góp dự kiến</Label>
          <Input placeholder="300.000.000VND" name="target" type="text" />
        </FormGroup>
        <FormGroup>
          <Label>Thông tin về chiến dịch quyên góp</Label>
          <Input
            placeholder="Miêu tả ngắn về chiến dịch quyên góp"
            type="textarea"
            name="desShort"
          />
        </FormGroup>
        <FormGroup>
          <Label>Hình ảnh</Label>
          <Input type="file" name="imageData" />
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

export default AddCampaignAdminitrator;
