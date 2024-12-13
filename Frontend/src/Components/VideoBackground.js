import React from 'react';
import './VideoBackground.css';

function VideoBackground() {
    return (
        <div className="video-background">
            <video className="video" autoPlay loop muted>
                <source src="https://videocdn.cdnpk.net/videos/d780777b-8bc7-5db4-aeb9-93da28cd4258/horizontal/previews/clear/large.mp4?token=exp=1734006062~hmac=4bc01291cb499d4f7a329628b1ef4f3c5b980aaf065697b2925c6f72a142f998" type="video/mp4" /> 
            </video>
        </div>
    );
}

export default VideoBackground;