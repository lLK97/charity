import React from 'react';
import { AccountDetail } from '../assets/jsonData/json';
import styles from './module/detailAccountPersonal.module.css';
import { Button, CardTitle, Form, FormGroup, Input, Label } from 'reactstrap';
const DetailAccountPersonal = () => {
    const [username, setusername] = React.useState(AccountDetail[0].username);
    const [nameOrgs, setnameOrgs] = React.useState(AccountDetail[0].nameOrgs);
    const [fullname, setfullname] = React.useState(AccountDetail[0].fullname);
    const [birthday, setbirthday] = React.useState(AccountDetail[0].birthday);
    const [email, setemail] = React.useState(AccountDetail[0].email);
    const [address, setaddress] = React.useState(AccountDetail[0].address);
    const [phone, setphone] = React.useState(AccountDetail[0].phone);
    const [bankAccount, setbankAccunt] = React.useState(AccountDetail[0].bankAccount);
    const [nameBank, setnameBank] = React.useState(AccountDetail[0].nameBank);
    const [disableInput, setdisableInput] = React.useState(true);
    const handleCancel = () => {
        setusername(AccountDetail[0].username);
        setnameOrgs(AccountDetail[0].nameOrgs);
        setfullname(AccountDetail[0].fullname);
        setbirthday(AccountDetail[0].birthday);
        setemail(AccountDetail[0].email);
        setaddress(AccountDetail[0].address);
        setphone(AccountDetail[0].phone);
        setbankAccunt(AccountDetail[0].bankAccount);
        setnameBank(AccountDetail[0].nameBank);
        setdisableInput(true);
    }
    return (
        <div className={styles.inforDetail}>
            <CardTitle tag='h3' >Thông Tin Hồ Sơ Cá Nhân</CardTitle>
            <Form>
                <FormGroup>
                    <Label>
                        Tên tài khoản:
                    </Label>
                    <Input name='username' type='text' value={username} onChange={(e) => setusername(e.value)} disabled={disableInput} />
                </FormGroup>
                <FormGroup>
                    <Label>
                        Tổ chức đại diện:
                    </Label>
                    <Input name='orgs' type='text' value={nameOrgs} onChange={(e) => setnameOrgs(e.value)} disabled={disableInput} />
                </FormGroup>
                <FormGroup>
                    <Label>
                        Họ tên người dùng:
                    </Label>
                    <Input name='fullname' type='text' value={fullname} onChange={(e) => setfullname(e.value)} disabled={disableInput} />
                </FormGroup>
                <FormGroup>
                    <Label>
                        Năm sinh:
                    </Label>
                    <Input name='birthday' type='text' value={birthday} onChange={(e) => setbirthday(e.value)} disabled={disableInput} />
                </FormGroup>
                <FormGroup>
                    <Label>
                        Địa chỉ email:
                    </Label>
                    <Input name='email' type='text' value={email} onChange={(e) => setemail(e.value)} disabled={disableInput} />
                </FormGroup>
                <FormGroup>
                    <Label>
                        Số điện thoại:
                    </Label>
                    <Input name='phone' type='text' value={phone} onChange={(e) => setphone(e.value)} disabled={disableInput} />
                </FormGroup>
                <FormGroup>
                    <Label>
                        Đía chỉ liên lạc:
                    </Label>
                    <Input name='address' type='text' value={address} onChange={(e) => setaddress(e.value)} disabled={disableInput} />
                </FormGroup>
                <FormGroup>
                    <Label>
                        Số tài khoản:
                    </Label>
                    <Input name='bankAccount' type='text' value={bankAccount} onChange={(e) => setbankAccunt(e.value)} disabled={disableInput} />
                </FormGroup>
                <FormGroup>
                    <Label>
                        Tên ngân hàng:
                    </Label>
                    <Input name='nameBank' type='text' value={nameBank} onChange={(e) => setnameBank(e.value)} disabled={disableInput} />
                </FormGroup>
                <FormGroup className={styles.wrapperButton}>
                    <Button onClick={() => setdisableInput(false)}> Chỉnh sửa</Button>
                    <Button>Cập nhật</Button>
                    <Button onClick={() => handleCancel()}>Hủy</Button>
                </FormGroup>
            </Form>
        </div>
    );
}

export default DetailAccountPersonal;
