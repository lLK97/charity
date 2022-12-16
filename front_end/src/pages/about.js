import React from 'react';
import { CardTitle } from 'reactstrap';
import background from '../assets/image/about.webp';
import BannerHeadPage from '../components/bannerHeadPage';
import styles from './module/about.module.css';

const About = () => {
    return (
        <div className='wrapperPage'>

            <BannerHeadPage
                background={background}
            />
            <div className={styles.title}>
                <CardTitle tag='h3'>
                    Nền tảng quyên góp từ thiện dễ dàng, nhanh chóng
                </CardTitle>
            </div>
            <div className={styles.content}>
                <strong>HopeHome</strong>  lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum tellus elit, id accumsan mauris ultricies non. Cras tempus fringilla est elementum rhoncus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec sodales eros risus, eu laoreet lorem mattis eget. Etiam vel ipsum ultricies, pretium sapien et, volutpat ipsum. In a leo eu mauris ultricies fringilla. In hac habitasse platea dictumst. In nec viverra orci, non suscipit mi. Integer pulvinar pellentesque lorem rhoncus vulputate. Suspendisse non tincidunt libero, ut suscipit risus. Donec ac ipsum eget velit eleifend varius at sed sapien. Sed enim orci, accumsan in malesuada eu, rhoncus vitae tellus. Suspendisse pulvinar congue ipsum, eu imperdiet turpis viverra blandit.<br />

                Suspendisse potenti. Proin varius nibh quis purus interdum, sit amet ullamcorper augue aliquet. Integer pellentesque, nulla a imperdiet consectetur, erat urna scelerisque dui, a tempus odio dui at sapien. Pellentesque pretium quis libero vel vestibulum. Mauris finibus tincidunt porttitor. Pellentesque gravida eu sapien eu ultrices. Vestibulum nec massa id nunc ornare accumsan. Nullam posuere, lacus ut ultrices malesuada, leo nisl fringilla odio, eget tincidunt tortor ex vitae augue. Suspendisse sed nunc in purus sagittis euismod. Integer eu nisl et velit pellentesque vestibulum. Morbi purus purus, mollis eget diam ut, viverra dapibus diam. Nunc maximus nisi nibh, vel sodales elit vestibulum at. Cras non suscipit purus, a blandit ante. Vivamus ante lectus, varius vel iaculis sit amet, commodo in tortor. Nunc pretium nibh vel ex varius posuere.<br />

                In arcu risus, ullamcorper ac porta in, condimentum aliquet quam. Donec rhoncus est sed massa dictum volutpat. Nam vestibulum pulvinar eleifend. Etiam in arcu eu urna tempus vestibulum. Nunc iaculis vestibulum elit. Praesent vel lobortis turpis. Aliquam sem neque, interdum id dignissim id, ultrices eget sem. Nunc ac nunc arcu. Maecenas eleifend odio posuere consequat pellentesque. Vestibulum lobortis diam ac massa hendrerit lacinia. Curabitur at fermentum metus, vel dictum dolor. Etiam at ex feugiat, ultrices ligula vitae, placerat arcu. Nullam sagittis consequat sapien, eu mattis urna vestibulum at. Donec odio justo, efficitur at euismod ac, imperdiet sit amet enim.<br />
                Vestibulum lacus tortor, vehicula at nibh id, placerat egestas dui. Aliquam a erat vel elit venenatis placerat eu vitae velit. Suspendisse vitae scelerisque tortor, id lacinia dui. Maecenas blandit dapibus sapien, id venenatis dui vestibulum non. Nam eu dapibus neque. Fusce arcu turpis, malesuada vel justo a, maximus efficitur erat. Vivamus ut sem arcu. Quisque lorem dolor, gravida a purus sed, commodo consectetur orci. Pellentesque dignissim metus vel dignissim semper. Suspendisse vel dui posuere nibh viverra sagittis sed et mauris. Phasellus ut mauris dui. Donec suscipit libero id ligula finibus, non rutrum sem tincidunt. Maecenas odio tortor, convallis at placerat quis, suscipit et velit. In sollicitudin ipsum eu turpis blandit aliquet.<br />
            </div>
        </div>
    );
}

export default About;
