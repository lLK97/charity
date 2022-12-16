import React from 'react';
import { Link } from 'react-router-dom';
import { Button, CardTitle, Form, FormGroup, Input, Label } from 'reactstrap';
import styles from './module/login.module.css';

const Register = () => {
    return (
        <div className={`block ${styles.wrapper}`}>
            <div className={styles.inner}>
                <CardTitle tag='h3'>
                    Đăng Nhập
                </CardTitle>
                <Form>
                    <FormGroup className={styles.inputText}>
                        <Label>TÊN ĐĂNG NHẬP:</Label>
                        <Input name='username' placeholder='Tên đăng nhập' />
                    </FormGroup>
                    <FormGroup className={styles.inputText}>
                        <Label>MẬT KHẨU:</Label>
                        <Input name='password' placeholder='Mật khẩu' />
                    </FormGroup>
                    <FormGroup className={styles.inputText}>
                        <Label>NHẬP LẠI MẬT KHẨU:</Label>
                        <Input name='reEnterPassword' placeholder='Tên đăng nhập' />
                    </FormGroup>
                    <FormGroup className={styles.inputText}>
                        <Label>HỌ:</Label>
                        <Input name='firstName' placeholder='Họ' />
                    </FormGroup>
                    <FormGroup className={styles.inputText}>
                        <Label>Tên:</Label>
                        <Input name='lastName' placeholder='Tên' />
                    </FormGroup>
                    <FormGroup className={styles.inputText}>
                        <Label>TÊN ĐỆM:</Label>
                        <Input name='middleName' placeholder='Tên đệm' />
                    </FormGroup>
                    <FormGroup className={styles.inputText}>
                        <Label>EMAIL:</Label>
                        <Input name='email' placeholder='Địa chỉ email' />
                    </FormGroup>
                    <FormGroup className={styles.inputText}>
                        <Label>SỐ ĐIỆN THOẠI:</Label>
                        <Input name='phone' placeholder='Số điện thoại' />
                    </FormGroup>
                    <FormGroup className={styles.inputText}>
                        <Label>ĐỊA CHỈ:</Label>
                        <Input name='address' placeholder='Địa chỉ' />
                    </FormGroup>
                    <FormGroup className={styles.wrapperButton}>
                        <Button className={styles.login}>Đăng ký</Button>
                    </FormGroup>
                </Form>
            </div>
        </div>
    );
}

export default Register;
