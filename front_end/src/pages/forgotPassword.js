import React from 'react';
import styles from './module/login.module.css';
import { Button, CardTitle, Form, FormGroup, Input, Label } from 'reactstrap';

const ForgotPassword = () => {
    return (
        <div className={`block ${styles.wrapper}`}>
            <div className={styles.inner}>
                <CardTitle tag='h3'>
                    Xác nhận Tài Khoản
                </CardTitle>
                <Form>
                    <FormGroup className={styles.inputText}>
                        <Label>ĐỊA CHỈ EMAIL:</Label>
                        <Input name='username' placeholder='Tên đăng nhập' />
                    </FormGroup>
                    <FormGroup className={styles.wrapperButton}>
                        <Button className={styles.login}>Gửi mã xác nhận</Button>
                    </FormGroup>
                </Form>
            </div>
        </div>
    );
}

export default ForgotPassword;
