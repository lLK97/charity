import React from 'react';
import styles from './module/login.module.css';
import { Button, CardTitle, Form, FormGroup, Input, Label } from 'reactstrap';

export default function ResetPassword() {
    return (
        <div className={`block ${styles.wrapper}`}>
            <div className={styles.inner}>
                <CardTitle tag='h3'>
                    Làm mới Mật khẩu
                </CardTitle>
                <Form>
                    <FormGroup className={styles.inputText}>
                        <Label>MẬT KHẨU MỚI:</Label>
                        <Input name='newPassword' placeholder='Mật khẩu mới' />
                    </FormGroup>
                    <FormGroup className={styles.inputText}>
                        <Label>XÁC NHẬN LẠI MẬT KHẨU:</Label>
                        <Input name='reEnterPassword' placeholder='Nhập lại' />
                    </FormGroup>
                    <FormGroup className={styles.wrapperButton}>
                        <Button className={styles.login}>Gửi mã xác nhận</Button>
                    </FormGroup>
                </Form>
            </div>
        </div>
    )
}
