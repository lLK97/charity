import React from "react";
import { CardTitle, Form, FormGroup, Input, Label } from "reactstrap";
import styles from "./module/table.module.css";

const AddDonationAdminitrator = (props) => {
  const itemUpdate = props.itemUpdate;
  const [firstName, setfirstName] = React.useState(itemUpdate?.firstname);
  const [middleName, setmiddleName] = React.useState(itemUpdate?.middleName);
  const [lastName, setlastName] = React.useState(itemUpdate?.lastname);
  const [email, setemail] = React.useState(itemUpdate?.email);
  const [phone, setphone] = React.useState(itemUpdate?.phone);
  const [address, setaddress] = React.useState(itemUpdate?.address);
  const [bankAcccount, setbankAcccount] = React.useState(
    itemUpdate?.bankAcccount
  );
  const [bankName, setbankName] = React.useState(itemUpdate?.bankName);
  const [amount, setamount] = React.useState(itemUpdate?.amount);
  const [role, setrole] = React.useState(itemUpdate?.role);
  const [idmember, setidmember] = React.useState(itemUpdate?._id);

  return (
    <div className={styles.wrapperAdd}>
      <CardTitle tag="h5">
        {props.action == "new" ? "Thêm mới chiến dịch quyên góp" : ""}
        {props.action == "update" ? "Chỉnh sửa đợt quyên góp" : ""}
      </CardTitle>
      <Form>
        <FormGroup>
          <Label>Vai trò</Label>
          <Input
            type="select"
            name="role"
            onChange={(e) => setrole(e.target.value)}
          >
            <option value="users">Thành viên</option>
            <option value="anonymous">Ẩn danh</option>
          </Input>
        </FormGroup>

        {role == "users" ? (
          <>
            <FormGroup>
              <Label>Thành viên</Label>
              <Input type="select" name="orgs">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </Input>
            </FormGroup>
            <FormGroup>
              <Label>Số tiền : </Label>
              <Input
                placeholder="Số tiền"
                name="amount"
                value={amount}
                onChange={(e) => setamount(e.value)}
              />
            </FormGroup>
          </>
        ) : (
          <>
            <FormGroup>
              <Label>Họ : </Label>
              <Input
                placeholder="Họ"
                name="firstName"
                value={firstName}
                onChange={(e) => setfirstName(e.value)}
              />
            </FormGroup>
            <FormGroup>
              <Label>Tên đệm : </Label>
              <Input
                placeholder="Tên đệm"
                name="middleName"
                value={middleName}
                onChange={(e) => setmiddleName(e.value)}
              />
            </FormGroup>
            <FormGroup>
              <Label>Tên : </Label>
              <Input
                placeholder="Tên"
                name="lastName"
                value={lastName}
                onChange={(e) => setlastName(e.value)}
              />
            </FormGroup>
            <FormGroup>
              <Label>Email : </Label>
              <Input
                placeholder="Địa chỉ thư điện tử"
                name="email"
                value={email}
                onChange={(e) => setemail(e.value)}
              />
            </FormGroup>
            <FormGroup>
              <Label>Số điện thoại : </Label>
              <Input
                placeholder="Số điện thoại"
                name="phone"
                value={phone}
                onChange={(e) => setphone(e.value)}
              />
            </FormGroup>
            <FormGroup>
              <Label>Địa chỉ : </Label>
              <Input
                placeholder="Địa chỉ"
                name="address"
                value={address}
                onChange={(e) => setaddress(e.value)}
              />
            </FormGroup>
            <FormGroup>
              <Label>Số tiền : </Label>
              <Input
                placeholder="Số tiền"
                name="amount"
                value={amount}
                onChange={(e) => setamount(e.value)}
              />
            </FormGroup>
            <FormGroup>
              <Label>Số tài khoản ngân hàng : </Label>
              <Input
                placeholder="Số tài khoản ngân hàng"
                name="bankAccountNumber"
                value={bankAcccount}
                onChange={(e) => setbankAcccount(e.value)}
              />
            </FormGroup>
            <FormGroup>
              <Label>Địa chỉ ngân hàng : </Label>
              <Input
                placeholder="Địa chỉ ngân hàng"
                name="bankName"
                value={bankName}
                onChange={(e) => setbankName(e.value)}
              />
            </FormGroup>
          </>
        )}

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

export default AddDonationAdminitrator;
