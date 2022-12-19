import React from "react";
import { CardTitle, Form, FormGroup, Input, Label } from "reactstrap";
import styles from "./module/table.module.css";

const AddCampaignAdminitrator = (props) => {
  const dataUpdate = props.itemUpdate;
  const [title, settitle] = React.useState(dataUpdate?.title);
  const [startdate, setstartdate] = React.useState(dataUpdate?.start);
  const [enddate, setenddate] = React.useState(dataUpdate?.end);
  const [orgs, setorgs] = React.useState(dataUpdate?.orgs);
  const [category, setcategory] = React.useState(dataUpdate?.category);
  const [amount, setamount] = React.useState(dataUpdate?.amount);
  const [info, setinfor] = React.useState(dataUpdate?.desShort);
  const [imageData, setimageData] = React.useState(dataUpdate?.imageData);
  return (
    <div className={styles.wrapperAdd}>
      <CardTitle tag="h5">
        {props.action == "new" ? "Thêm mới chiến dịch quyên góp" : ""}
        {props.action == "update" ? "Chỉnh sửa đợt quyên góp" : ""}
      </CardTitle>
      <Form>
        <FormGroup>
          <Label>Tiêu đề</Label>
          <Input
            placeholder="Tiêu đề"
            name="title"
            value={title}
            onChange={(e) => settitle(e.value)}
          />
        </FormGroup>
        <FormGroup>
          <Label>Ngày bắt đầu</Label>
          <Input
            placeholder="Ngày bắt đầu"
            name="dateStart"
            type="datetime"
            value={startdate}
            onChange={(e) => setstartdate(e.value)}
          />
        </FormGroup>
        <FormGroup>
          <Label>Ngày kết thúc</Label>
          <Input
            placeholder="Ngày kết thúc"
            name="dateEnd"
            type="datetime"
            value={enddate}
            onChange={(e) => setenddate(e.value)}
          />
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
          <Input
            placeholder="300.000.000VND"
            name="target"
            type="text"
            value={amount}
            onChange={(e) => setamount(e.value)}
          />
        </FormGroup>
        <FormGroup>
          <Label>Thông tin về chiến dịch quyên góp</Label>
          <Input
            placeholder="Miêu tả ngắn về chiến dịch quyên góp"
            type="textarea"
            name="desShort"
            value={info}
            onChange={(e) => setinfor(e.value)}
          />
        </FormGroup>
        <FormGroup>
          <Label>Hình ảnh</Label>
          <Input
            type="file"
            name="imageData"
            value={imageData}
            onchnage={(e) => setimageData(e.value)}
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

export default AddCampaignAdminitrator;
