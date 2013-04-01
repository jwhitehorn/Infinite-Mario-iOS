//
//  Shader.fsh
//  Infinite Mario
//
//  Created by Jason Whitehorn on 3/31/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
