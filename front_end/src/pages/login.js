import React from 'react';
import { Link } from 'react-router-dom';
import logoGogole from '../assets/image/logoGoogle.png';
import logoFacebook from '../assets/image/logoFacebook.jpg';
import { Button, CardTitle, Form, FormGroup, Input, Label } from 'reactstrap';
import styles from './module/login.module.css';

const Login = () => {
    return (
        <div className={`block ${styles.wrapper}`}>
            <div className={styles.inner}>
                <CardTitle tag='h3'>
                    Đăng Nhập
                </CardTitle>
                <CardTitle tag='h5'>
                    Bạn mới biết đến HopeHome? <Link to='/register'><strong>
                        Đăng ký tài khoản
                    </strong></Link>
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
                    <FormGroup className={styles.inputText} check>
                        <span>
                            <Input type='checkbox' /> Ghi nhớ mật khẩu
                        </span>
                        <Link to='/forgot'>Quên mật khẩu?</Link>
                    </FormGroup>
                    <FormGroup className={styles.wrapperButton}>
                        <Button className={styles.login}>Đăng nhập</Button>
                    </FormGroup>
                    <CardTitle tag='h4'>OR</CardTitle>
                    <FormGroup className={styles.wrapperSocial}>
                        <Button className={styles.btGoogle}>
                            <img src={logoGogole} alt="" />
                            <span>Continute with Google</span>
                        </Button>
                        <Button className={styles.btFacebook}>
                            <img src={logoFacebook} alt="" />
                            <span>Continute with Facebook </span>
                        </Button>
                    </FormGroup>
                </Form>
            </div>
        </div>
    );
}

export default Login;
