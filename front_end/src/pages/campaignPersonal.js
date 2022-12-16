import React from 'react';
import { CardTitle, Button, Table, Form, FormGroup, Input, Label } from 'reactstrap';
import { campaignPersonal } from '../assets/jsonData/json';
import styles from './module/campaignPersonal.module.css';

const CampaignPersonal = () => {
    const [activeEditForm, setactiveEditForm] = React.useState(false);
    const [title, settitle] = React.useState('');
    const [infor, setinfor] = React.useState('');
    const [dateStart, setdateStart] = React.useState('');
    const [dateEnd, setdateEnd] = React.useState('');
    const [target, settarget] = React.useState('');
    const handleUpdate = (id) => {
        setactiveEditForm(true);
        let data = campaignPersonal.find(item => item._id = id);
        settitle(data.name);
        setinfor(data.infor);
        settarget(data.target);
        setdateStart(data.start);
        setdateEnd(data.end);
    }
    const handleCancelForm = () => {
        setactiveEditForm(false);
    }
    return (
        <div className={styles.wrapper}>
            <CardTitle tag='h3' >Thông Tin Các Chiến Dịch Từ Thiện</CardTitle>
            <Table responsive="sm" striped className={styles.table}>
                <thead>
                    <th>STT</th>
                    <th>Tên chiến dịch</th>
                    <th>Thông tin</th>
                    <th>Ngày bắt đầu</th>
                    <th>Dự kiến kết thúc</th>
                    <th>Mục tiêu</th>
                    <th>Trạng thái</th>
                    <th></th>
                </thead>
                <tbody>
                    {
                        campaignPersonal.map((item, index) => {
                            return (
                                <tr key={index}>
                                    <td>{index + 1}</td>
                                    <td>

                                        {item.name}
                                    </td>
                                    <td>
                                        <div>
                                            {item.infor}
                                        </div>
                                    </td>
                                    <td>{item.start}</td>
                                    <td>{item.end}</td>
                                    <td>{item.target} VND</td>
                                    <td>{item.status}</td>
                                    <td>
                                        <Button className={styles.updateBt} onClick={() => handleUpdate(item._id)}>Sửa</Button>
                                        <Button className={styles.deleteBt}>Xóa</Button>
                                    </td>
                                </tr>
                            )
                        })
                    }
                </tbody>
            </Table>
            {
                activeEditForm != false ? (
                    <div className={styles.wrapperForm}>
                        <Form className={styles.formEdit}>
                            <CardTitle tag='h3'>Chỉnh Sửa Thông Tin Gây Quỹ</CardTitle>
                            <FormGroup>
                                <Label>Tên chiến dịch: </Label>
                                <Input name='title' value={title} onChange={(e) => settitle(e.value)} />
                            </FormGroup>
                            <FormGroup>
                                <Label>Thông tin về chiến dịch:</Label>
                                <Input type="textarea" name='infor' value={infor} onChange={(e) => setinfor(e.value)} />
                            </FormGroup>
                            <FormGroup>
                                <Label>Ngày bắt đầu: </Label>
                                <Input name='dateStart' value={dateStart} onChange={(e) => setdateStart(e.value)} />
                            </FormGroup>
                            <FormGroup>
                                <Label>Ngày kết thúc: </Label>
                                <Input name='dateEnd' value={dateEnd} onChange={(e) => setdateEnd(e.value)} />
                            </FormGroup>
                            <FormGroup>
                                <Label>Mục tiêu chiến dịch: </Label>
                                <Input name='target' value={target} onChange={(e) => settarget(e.value)} />
                            </FormGroup>
                            <FormGroup>
                                <Label>Lý do:</Label>
                                <Input type="textarea" name='infor' />
                            </FormGroup>
                            <FormGroup className={styles.buttonGroup}>
                                <Button className={styles.updateBt}>
                                    Gửi yêu cầu chỉnh sửa
                                </Button>
                                <Button className={styles.deleteBt} onClick={() => handleCancelForm()}>
                                    Huỷ
                                </Button>
                            </FormGroup>
                        </Form>
                    </div>
                ) : null
            }
        </div >
    );
}

export default CampaignPersonal;
