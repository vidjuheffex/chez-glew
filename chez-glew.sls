;; -*- mode: scheme; coding: utf-8 -*-
;; Copyright (c) 2020 Julian Herrera
;; SPDX-License-Identifier: MIT
#!r6rs

(library (glew)
  (export glewInit
          glewGetErrorString
          glewIsSupported
          GLEW_OK
          GLEW_NO_ERROR
          GLEW_ERROR_NO_GL_VERSION  ;; missing GL vers
          GLEW_ERROR_GL_VERSION_10_ONLY ;; Need at least OpenGL 
          GLEW_ERROR_GLX_VERSION_11_ONLY ;; Need at least GLX 
          GLEW_VERSION
          GLEW_VERSION_MAJOR
          GLEW_VERSION_MINOR
          GLEW_VERSION_MICRO
          glAttachShader
          ;; GL_VERSION_1_1
          GL_ZERO 
          GL_FALSE 
          GL_LOGIC_OP 
          GL_NONE 
          GL_TEXTURE_COMPONENTS 
          GL_NO_ERROR 
          GL_POINTS 
          GL_CURRENT_BIT 
          GL_TRUE 
          GL_ONE 
          GL_CLIENT_PIXEL_STORE_BIT 
          GL_LINES 
          GL_LINE_LOOP 
          GL_POINT_BIT 
          GL_CLIENT_VERTEX_ARRAY_BIT 
          GL_LINE_STRIP 
          GL_LINE_BIT 
          GL_TRIANGLES 
          GL_TRIANGLE_STRIP 
          GL_TRIANGLE_FAN 
          GL_QUADS 
          GL_QUAD_STRIP 
          GL_POLYGON_BIT 
          GL_POLYGON 
          GL_POLYGON_STIPPLE_BIT 
          GL_PIXEL_MODE_BIT 
          GL_LIGHTING_BIT 
          GL_FOG_BIT 
          GL_DEPTH_BUFFER_BIT 
          GL_ACCUM 
          GL_LOAD 
          GL_RETURN 
          GL_MULT 
          GL_ADD 
          GL_NEVER 
          GL_ACCUM_BUFFER_BIT 
          GL_LESS 
          GL_EQUAL 
          GL_LEQUAL 
          GL_GREATER 
          GL_NOTEQUAL 
          GL_GEQUAL 
          GL_ALWAYS 
          GL_SRC_COLOR 
          GL_ONE_MINUS_SRC_COLOR 
          GL_SRC_ALPHA 
          GL_ONE_MINUS_SRC_ALPHA 
          GL_DST_ALPHA 
          GL_ONE_MINUS_DST_ALPHA 
          GL_DST_COLOR 
          GL_ONE_MINUS_DST_COLOR 
          GL_SRC_ALPHA_SATURATE 
          GL_STENCIL_BUFFER_BIT 
          GL_FRONT_LEFT 
          GL_FRONT_RIGHT 
          GL_BACK_LEFT 
          GL_BACK_RIGHT 
          GL_FRONT 
          GL_BACK 
          GL_LEFT 
          GL_RIGHT 
          GL_FRONT_AND_BACK 
          GL_AUX0 
          GL_AUX1 
          GL_AUX2 
          GL_AUX3 
          GL_INVALID_ENUM 
          GL_INVALID_VALUE 
          GL_INVALID_OPERATION 
          GL_STACK_OVERFLOW 
          GL_STACK_UNDERFLOW 
          GL_OUT_OF_MEMORY 
          GL_2D 
          GL_3D 
          GL_3D_COLOR 
          GL_3D_COLOR_TEXTURE 
          GL_4D_COLOR_TEXTURE 
          GL_PASS_THROUGH_TOKEN 
          GL_POINT_TOKEN 
          GL_LINE_TOKEN 
          GL_POLYGON_TOKEN 
          GL_BITMAP_TOKEN 
          GL_DRAW_PIXEL_TOKEN 
          GL_COPY_PIXEL_TOKEN 
          GL_LINE_RESET_TOKEN 
          GL_EXP 
          GL_VIEWPORT_BIT 
          GL_EXP2 
          GL_CW 
          GL_CCW 
          GL_COEFF 
          GL_ORDER 
          GL_DOMAIN 
          GL_CURRENT_COLOR 
          GL_CURRENT_INDEX 
          GL_CURRENT_NORMAL 
          GL_CURRENT_TEXTURE_COORDS 
          GL_CURRENT_RASTER_COLOR 
          GL_CURRENT_RASTER_INDEX 
          GL_CURRENT_RASTER_TEXTURE_COORDS 
          GL_CURRENT_RASTER_POSITION 
          GL_CURRENT_RASTER_POSITION_VALID 
          GL_CURRENT_RASTER_DISTANCE 
          GL_POINT_SMOOTH 
          GL_POINT_SIZE 
          GL_POINT_SIZE_RANGE 
          GL_POINT_SIZE_GRANULARITY 
          GL_LINE_SMOOTH 
          GL_LINE_WIDTH 
          GL_LINE_WIDTH_RANGE 
          GL_LINE_WIDTH_GRANULARITY 
          GL_LINE_STIPPLE 
          GL_LINE_STIPPLE_PATTERN 
          GL_LINE_STIPPLE_REPEAT 
          GL_LIST_MODE 
          GL_MAX_LIST_NESTING 
          GL_LIST_BASE 
          GL_LIST_INDEX 
          GL_POLYGON_MODE 
          GL_POLYGON_SMOOTH 
          GL_POLYGON_STIPPLE 
          GL_EDGE_FLAG 
          GL_CULL_FACE 
          GL_CULL_FACE_MODE 
          GL_FRONT_FACE 
          GL_LIGHTING 
          GL_LIGHT_MODEL_LOCAL_VIEWER 
          GL_LIGHT_MODEL_TWO_SIDE 
          GL_LIGHT_MODEL_AMBIENT 
          GL_SHADE_MODEL 
          GL_COLOR_MATERIAL_FACE 
          GL_COLOR_MATERIAL_PARAMETER 
          GL_COLOR_MATERIAL 
          GL_FOG 
          GL_FOG_INDEX 
          GL_FOG_DENSITY 
          GL_FOG_START 
          GL_FOG_END 
          GL_FOG_MODE 
          GL_FOG_COLOR 
          GL_DEPTH_RANGE 
          GL_DEPTH_TEST 
          GL_DEPTH_WRITEMASK 
          GL_DEPTH_CLEAR_VALUE 
          GL_DEPTH_FUNC 
          GL_ACCUM_CLEAR_VALUE 
          GL_STENCIL_TEST 
          GL_STENCIL_CLEAR_VALUE 
          GL_STENCIL_FUNC 
          GL_STENCIL_VALUE_MASK 
          GL_STENCIL_FAIL 
          GL_STENCIL_PASS_DEPTH_FAIL 
          GL_STENCIL_PASS_DEPTH_PASS 
          GL_STENCIL_REF 
          GL_STENCIL_WRITEMASK 
          GL_MATRIX_MODE 
          GL_NORMALIZE 
          GL_VIEWPORT 
          GL_MODELVIEW_STACK_DEPTH 
          GL_PROJECTION_STACK_DEPTH 
          GL_TEXTURE_STACK_DEPTH 
          GL_MODELVIEW_MATRIX 
          GL_PROJECTION_MATRIX 
          GL_TEXTURE_MATRIX 
          GL_ATTRIB_STACK_DEPTH 
          GL_CLIENT_ATTRIB_STACK_DEPTH 
          GL_ALPHA_TEST 
          GL_ALPHA_TEST_FUNC 
          GL_ALPHA_TEST_REF 
          GL_DITHER 
          GL_BLEND_DST 
          GL_BLEND_SRC 
          GL_BLEND 
          GL_LOGIC_OP_MODE 
          GL_INDEX_LOGIC_OP 
          GL_COLOR_LOGIC_OP 
          GL_AUX_BUFFERS 
          GL_DRAW_BUFFER 
          GL_READ_BUFFER 
          GL_SCISSOR_BOX 
          GL_SCISSOR_TEST 
          GL_INDEX_CLEAR_VALUE 
          GL_INDEX_WRITEMASK 
          GL_COLOR_CLEAR_VALUE 
          GL_COLOR_WRITEMASK 
          GL_INDEX_MODE 
          GL_RGBA_MODE 
          GL_DOUBLEBUFFER 
          GL_STEREO 
          GL_RENDER_MODE 
          GL_PERSPECTIVE_CORRECTION_HINT 
          GL_POINT_SMOOTH_HINT 
          GL_LINE_SMOOTH_HINT 
          GL_POLYGON_SMOOTH_HINT 
          GL_FOG_HINT 
          GL_TEXTURE_GEN_S 
          GL_TEXTURE_GEN_T 
          GL_TEXTURE_GEN_R 
          GL_TEXTURE_GEN_Q 
          GL_PIXEL_MAP_I_TO_I 
          GL_PIXEL_MAP_S_TO_S 
          GL_PIXEL_MAP_I_TO_R 
          GL_PIXEL_MAP_I_TO_G 
          GL_PIXEL_MAP_I_TO_B 
          GL_PIXEL_MAP_I_TO_A 
          GL_PIXEL_MAP_R_TO_R 
          GL_PIXEL_MAP_G_TO_G 
          GL_PIXEL_MAP_B_TO_B 
          GL_PIXEL_MAP_A_TO_A 
          GL_PIXEL_MAP_I_TO_I_SIZE 
          GL_PIXEL_MAP_S_TO_S_SIZE 
          GL_PIXEL_MAP_I_TO_R_SIZE 
          GL_PIXEL_MAP_I_TO_G_SIZE 
          GL_PIXEL_MAP_I_TO_B_SIZE 
          GL_PIXEL_MAP_I_TO_A_SIZE 
          GL_PIXEL_MAP_R_TO_R_SIZE 
          GL_PIXEL_MAP_G_TO_G_SIZE 
          GL_PIXEL_MAP_B_TO_B_SIZE 
          GL_PIXEL_MAP_A_TO_A_SIZE 
          GL_UNPACK_SWAP_BYTES 
          GL_UNPACK_LSB_FIRST 
          GL_UNPACK_ROW_LENGTH 
          GL_UNPACK_SKIP_ROWS 
          GL_UNPACK_SKIP_PIXELS 
          GL_UNPACK_ALIGNMENT 
          GL_PACK_SWAP_BYTES 
          GL_PACK_LSB_FIRST 
          GL_PACK_ROW_LENGTH 
          GL_PACK_SKIP_ROWS 
          GL_PACK_SKIP_PIXELS 
          GL_PACK_ALIGNMENT 
          GL_MAP_COLOR 
          GL_MAP_STENCIL 
          GL_INDEX_SHIFT 
          GL_INDEX_OFFSET 
          GL_RED_SCALE 
          GL_RED_BIAS 
          GL_ZOOM_X 
          GL_ZOOM_Y 
          GL_GREEN_SCALE 
          GL_GREEN_BIAS 
          GL_BLUE_SCALE 
          GL_BLUE_BIAS 
          GL_ALPHA_SCALE 
          GL_ALPHA_BIAS 
          GL_DEPTH_SCALE 
          GL_DEPTH_BIAS 
          GL_MAX_EVAL_ORDER 
          GL_MAX_LIGHTS 
          GL_MAX_CLIP_PLANES 
          GL_MAX_TEXTURE_SIZE 
          GL_MAX_PIXEL_MAP_TABLE 
          GL_MAX_ATTRIB_STACK_DEPTH 
          GL_MAX_MODELVIEW_STACK_DEPTH 
          GL_MAX_NAME_STACK_DEPTH 
          GL_MAX_PROJECTION_STACK_DEPTH 
          GL_MAX_TEXTURE_STACK_DEPTH 
          GL_MAX_VIEWPORT_DIMS 
          GL_MAX_CLIENT_ATTRIB_STACK_DEPTH 
          GL_SUBPIXEL_BITS 
          GL_INDEX_BITS 
          GL_RED_BITS 
          GL_GREEN_BITS 
          GL_BLUE_BITS 
          GL_ALPHA_BITS 
          GL_DEPTH_BITS 
          GL_STENCIL_BITS 
          GL_ACCUM_RED_BITS 
          GL_ACCUM_GREEN_BITS 
          GL_ACCUM_BLUE_BITS 
          GL_ACCUM_ALPHA_BITS 
          GL_NAME_STACK_DEPTH 
          GL_AUTO_NORMAL 
          GL_MAP1_COLOR_4 
          GL_MAP1_INDEX 
          GL_MAP1_NORMAL 
          GL_MAP1_TEXTURE_COORD_1 
          GL_MAP1_TEXTURE_COORD_2 
          GL_MAP1_TEXTURE_COORD_3 
          GL_MAP1_TEXTURE_COORD_4 
          GL_MAP1_VERTEX_3 
          GL_MAP1_VERTEX_4 
          GL_MAP2_COLOR_4 
          GL_MAP2_INDEX 
          GL_MAP2_NORMAL 
          GL_MAP2_TEXTURE_COORD_1 
          GL_MAP2_TEXTURE_COORD_2 
          GL_MAP2_TEXTURE_COORD_3 
          GL_MAP2_TEXTURE_COORD_4 
          GL_MAP2_VERTEX_3 
          GL_MAP2_VERTEX_4 
          GL_MAP1_GRID_DOMAIN 
          GL_MAP1_GRID_SEGMENTS 
          GL_MAP2_GRID_DOMAIN 
          GL_MAP2_GRID_SEGMENTS 
          GL_TEXTURE_1D 
          GL_TEXTURE_2D 
          GL_FEEDBACK_BUFFER_POINTER 
          GL_FEEDBACK_BUFFER_SIZE 
          GL_FEEDBACK_BUFFER_TYPE 
          GL_SELECTION_BUFFER_POINTER 
          GL_SELECTION_BUFFER_SIZE 
          GL_TEXTURE_WIDTH 
          GL_TRANSFORM_BIT 
          GL_TEXTURE_HEIGHT 
          GL_TEXTURE_INTERNAL_FORMAT 
          GL_TEXTURE_BORDER_COLOR 
          GL_TEXTURE_BORDER 
          GL_DONT_CARE 
          GL_FASTEST 
          GL_NICEST 
          GL_AMBIENT 
          GL_DIFFUSE 
          GL_SPECULAR 
          GL_POSITION 
          GL_SPOT_DIRECTION 
          GL_SPOT_EXPONENT 
          GL_SPOT_CUTOFF 
          GL_CONSTANT_ATTENUATION 
          GL_LINEAR_ATTENUATION 
          GL_QUADRATIC_ATTENUATION 
          GL_COMPILE 
          GL_COMPILE_AND_EXECUTE 
          GL_BYTE 
          GL_UNSIGNED_BYTE 
          GL_SHORT 
          GL_UNSIGNED_SHORT 
          GL_INT 
          GL_UNSIGNED_INT 
          GL_FLOAT 
          GL_2_BYTES 
          GL_3_BYTES 
          GL_4_BYTES 
          GL_DOUBLE 
          GL_CLEAR 
          GL_AND 
          GL_AND_REVERSE 
          GL_COPY 
          GL_AND_INVERTED 
          GL_NOOP 
          GL_XOR 
          GL_OR 
          GL_NOR 
          GL_EQUIV 
          GL_INVERT 
          GL_OR_REVERSE 
          GL_COPY_INVERTED 
          GL_OR_INVERTED 
          GL_NAND 
          GL_SET 
          GL_EMISSION 
          GL_SHININESS 
          GL_AMBIENT_AND_DIFFUSE 
          GL_COLOR_INDEXES 
          GL_MODELVIEW 
          GL_PROJECTION 
          GL_TEXTURE 
          GL_COLOR 
          GL_DEPTH 
          GL_STENCIL 
          GL_COLOR_INDEX 
          GL_STENCIL_INDEX 
          GL_DEPTH_COMPONENT 
          GL_RED 
          GL_GREEN 
          GL_BLUE 
          GL_ALPHA 
          GL_RGB 
          GL_RGBA 
          GL_LUMINANCE 
          GL_LUMINANCE_ALPHA 
          GL_BITMAP 
          GL_POINT 
          GL_LINE 
          GL_FILL 
          GL_RENDER 
          GL_FEEDBACK 
          GL_SELECT 
          GL_FLAT 
          GL_SMOOTH 
          GL_KEEP 
          GL_REPLACE 
          GL_INCR 
          GL_DECR 
          GL_VENDOR 
          GL_RENDERER 
          GL_VERSION 
          GL_EXTENSIONS 
          GL_S 
          GL_ENABLE_BIT 
          GL_T 
          GL_R 
          GL_Q 
          GL_MODULATE 
          GL_DECAL 
          GL_TEXTURE_ENV_MODE 
          GL_TEXTURE_ENV_COLOR 
          GL_TEXTURE_ENV 
          GL_EYE_LINEAR 
          GL_OBJECT_LINEAR 
          GL_SPHERE_MAP 
          GL_TEXTURE_GEN_MODE 
          GL_OBJECT_PLANE 
          GL_EYE_PLANE 
          GL_NEAREST 
          GL_LINEAR 
          GL_NEAREST_MIPMAP_NEAREST 
          GL_LINEAR_MIPMAP_NEAREST 
          GL_NEAREST_MIPMAP_LINEAR 
          GL_LINEAR_MIPMAP_LINEAR 
          GL_TEXTURE_MAG_FILTER 
          GL_TEXTURE_MIN_FILTER 
          GL_TEXTURE_WRAP_S 
          GL_TEXTURE_WRAP_T 
          GL_CLAMP 
          GL_REPEAT 
          GL_POLYGON_OFFSET_UNITS 
          GL_POLYGON_OFFSET_POINT 
          GL_POLYGON_OFFSET_LINE 
          GL_R3_G3_B2 
          GL_V2F 
          GL_V3F 
          GL_C4UB_V2F 
          GL_C4UB_V3F 
          GL_C3F_V3F 
          GL_N3F_V3F 
          GL_C4F_N3F_V3F 
          GL_T2F_V3F 
          GL_T4F_V4F 
          GL_T2F_C4UB_V3F 
          GL_T2F_C3F_V3F 
          GL_T2F_N3F_V3F 
          GL_T2F_C4F_N3F_V3F 
          GL_T4F_C4F_N3F_V4F 
          GL_CLIP_PLANE0 
          GL_CLIP_PLANE1 
          GL_CLIP_PLANE2 
          GL_CLIP_PLANE3 
          GL_CLIP_PLANE4 
          GL_CLIP_PLANE5 
          GL_LIGHT0 
          GL_COLOR_BUFFER_BIT 
          GL_LIGHT1 
          GL_LIGHT2 
          GL_LIGHT3 
          GL_LIGHT4 
          GL_LIGHT5 
          GL_LIGHT6 
          GL_LIGHT7 
          GL_HINT_BIT 
          GL_POLYGON_OFFSET_FILL 
          GL_POLYGON_OFFSET_FACTOR 
          GL_ALPHA4 
          GL_ALPHA8 
          GL_ALPHA12 
          GL_ALPHA16 
          GL_LUMINANCE4 
          GL_LUMINANCE8 
          GL_LUMINANCE12 
          GL_LUMINANCE16 
          GL_LUMINANCE4_ALPHA4 
          GL_LUMINANCE6_ALPHA2 
          GL_LUMINANCE8_ALPHA8 
          GL_LUMINANCE12_ALPHA4 
          GL_LUMINANCE12_ALPHA12 
          GL_LUMINANCE16_ALPHA16 
          GL_INTENSITY 
          GL_INTENSITY4 
          GL_INTENSITY8 
          GL_INTENSITY12 
          GL_INTENSITY16 
          GL_RGB4 
          GL_RGB5 
          GL_RGB8 
          GL_RGB10 
          GL_RGB12 
          GL_RGB16 
          GL_RGBA2 
          GL_RGBA4 
          GL_RGB5_A1 
          GL_RGBA8 
          GL_RGB10_A2 
          GL_RGBA12 
          GL_RGBA16 
          GL_TEXTURE_RED_SIZE 
          GL_TEXTURE_GREEN_SIZE 
          GL_TEXTURE_BLUE_SIZE 
          GL_TEXTURE_ALPHA_SIZE 
          GL_TEXTURE_LUMINANCE_SIZE 
          GL_TEXTURE_INTENSITY_SIZE 
          GL_PROXY_TEXTURE_1D 
          GL_PROXY_TEXTURE_2D 
          GL_TEXTURE_PRIORITY 
          GL_TEXTURE_RESIDENT 
          GL_TEXTURE_BINDING_1D 
          GL_TEXTURE_BINDING_2D 
          GL_VERTEX_ARRAY 
          GL_NORMAL_ARRAY 
          GL_COLOR_ARRAY 
          GL_INDEX_ARRAY 
          GL_TEXTURE_COORD_ARRAY 
          GL_EDGE_FLAG_ARRAY 
          GL_VERTEX_ARRAY_SIZE 
          GL_VERTEX_ARRAY_TYPE 
          GL_VERTEX_ARRAY_STRIDE 
          GL_NORMAL_ARRAY_TYPE 
          GL_NORMAL_ARRAY_STRIDE 
          GL_COLOR_ARRAY_SIZE 
          GL_COLOR_ARRAY_TYPE 
          GL_COLOR_ARRAY_STRIDE 
          GL_INDEX_ARRAY_TYPE 
          GL_INDEX_ARRAY_STRIDE 
          GL_TEXTURE_COORD_ARRAY_SIZE 
          GL_TEXTURE_COORD_ARRAY_TYPE 
          GL_TEXTURE_COORD_ARRAY_STRIDE 
          GL_EDGE_FLAG_ARRAY_STRIDE 
          GL_VERTEX_ARRAY_POINTER 
          GL_NORMAL_ARRAY_POINTER 
          GL_COLOR_ARRAY_POINTER 
          GL_INDEX_ARRAY_POINTER 
          GL_TEXTURE_COORD_ARRAY_POINTER 
          GL_EDGE_FLAG_ARRAY_POINTER 
          GL_COLOR_INDEX1_EXT 
          GL_COLOR_INDEX2_EXT 
          GL_COLOR_INDEX4_EXT 
          GL_COLOR_INDEX8_EXT 
          GL_COLOR_INDEX12_EXT 
          GL_COLOR_INDEX16_EXT 
          GL_EVAL_BIT 
          GL_LIST_BIT 
          GL_TEXTURE_BIT 
          GL_SCISSOR_BIT 
          GL_ALL_ATTRIB_BITS 
          GL_CLIENT_ALL_ATTRIB_BITS

          glAccum
          glAlphaFunc
          glAreTexturesResident
          glArrayElement
          glBegin
          glBindTexture
          glBitmap
          glBlendFunc
          glCallList
          glCallLists
          glClear
          glClearAccum
          glClearColor
          glClearDepth
          glClearIndex
          glClearStencil
          glClipPlane
          glColor3b
          glColor3bv
          glColor3d
          glColor3dv
          glColor3f
          glColor3fv
          glColor3i
          glColor3iv
          glColor3s
          glColor3sv
          glColor3ub
          glColor3ubv
          glColor3ui
          glColor3uiv
          glColor3us
          glColor3usv
          glColor4b
          glColor4bv
          glColor4d
          glColor4dv
          glColor4f
          glColor4fv
          glColor4i
          glColor4iv
          glColor4s
          glColor4sv
          glColor4ub
          glColor4ubv
          glColor4ui
          glColor4uiv
          glColor4us
          glColor4usv
          glColorMask
          glColorMaterial
          glColorPointer
          glCopyPixels
          glCopyTexImage1D
          glCopyTexImage2D
          glCopyTexSubImage1D
          glCopyTexSubImage2D
          glCullFace
          glDeleteLists
          glDeleteTextures
          glDepthFunc
          glDepthMask
          glDepthRange
          glDisable
          glDisableClientState
          glDrawArrays
          glDrawBuffer
          glDrawElements
          glDrawPixels
          glEdgeFlag
          glEdgeFlagPointer
          glEdgeFlagv
          glEnable
          glEnableClientState
          glEnd
          glEndList
          glEvalCoord1d
          glEvalCoord1dv
          glEvalCoord1f
          glEvalCoord1fv
          glEvalCoord2d
          glEvalCoord2dv
          glEvalCoord2f
          glEvalCoord2fv
          glEvalMesh1
          glEvalMesh2
          glEvalPoint1
          glEvalPoint2
          glFeedbackBuffer
          glFinish
          glFlush
          glFogf
          glFogfv
          glFogi
          glFogiv
          glFrontFace
          glFrustum
          glGenLists
          glGenTextures
          glGetBooleanv
          glGetClipPlane
          glGetDoublev
          glGetError
          glGetFloatv
          glGetIntegerv
          glGetLightfv
          glGetLightiv
          glGetMapdv
          glGetMapfv
          glGetMapiv
          glGetMaterialfv
          glGetMaterialiv
          glGetPixelMapfv
          glGetPixelMapuiv
          glGetPixelMapusv
          glGetPointerv
          glGetPolygonStipple
          glGetString
          glGetTexEnvfv
          glGetTexEnviv
          glGetTexGendv
          glGetTexGenfv
          glGetTexGeniv
          glGetTexImage
          glGetTexLevelParameterfv
          glGetTexLevelParameteriv
          glGetTexParameterfv
          glGetTexParameteriv
          glHint
          glIndexMask
          glIndexPointer
          glIndexd
          glIndexdv
          glIndexf
          glIndexfv
          glIndexi
          glIndexiv
          glIndexs
          glIndexsv
          glIndexub
          glIndexubv
          glInitNames
          glInterleavedArrays
          glIsEnabled
          glIsList
          glIsTexture
          glLightModelf
          glLightModelfv
          glLightModeli
          glLightModeliv
          glLightf
          glLightfv
          glLighti
          glLightiv
          glLineStipple
          glLineWidth
          glListBase
          glLoadIdentity
          glLoadMatrixd
          glLoadMatrixf
          glLoadName
          glLogicOp
          glMap1d
          glMap1f
          glMap2d
          glMap2f
          glMapGrid1d
          glMapGrid1f
          glMapGrid2d
          glMapGrid2f
          glMaterialf
          glMaterialfv
          glMateriali
          glMaterialiv
          glMatrixMode
          glMultMatrixd
          glMultMatrixf
          glNewList
          glNormal3b
          glNormal3bv
          glNormal3d
          glNormal3dv
          glNormal3f
          glNormal3fv
          glNormal3i
          glNormal3iv
          glNormal3s
          glNormal3sv
          glNormalPointer
          glOrtho
          glPassThrough
          glPixelMapfv
          glPixelMapuiv
          glPixelMapusv
          glPixelStoref
          glPixelStorei
          glPixelTransferf
          glPixelTransferi
          glPixelZoom
          glPointSize
          glPolygonMode
          glPolygonOffset
          glPolygonStipple
          glPopAttrib
          glPopClientAttrib
          glPopMatrix
          glPopName
          glPrioritizeTextures
          glPushAttrib
          glPushClientAttrib
          glPushMatrix
          glPushName
          glRasterPos2d
          glRasterPos2dv
          glRasterPos2f
          glRasterPos2fv
          glRasterPos2i
          glRasterPos2iv
          glRasterPos2s
          glRasterPos2sv
          glRasterPos3d
          glRasterPos3dv
          glRasterPos3f
          glRasterPos3fv
          glRasterPos3i
          glRasterPos3iv
          glRasterPos3s
          glRasterPos3sv
          glRasterPos4d
          glRasterPos4dv
          glRasterPos4f
          glRasterPos4fv
          glRasterPos4i
          glRasterPos4iv
          glRasterPos4s
          glRasterPos4sv
          glReadBuffer
          glReadPixels
          glRectd
          glRectdv
          glRectf
          glRectfv
          glRecti
          glRectiv
          glRects
          glRectsv
          glRenderMode
          glRotated
          glRotatef
          glScaled
          glScalef
          glScissor
          glSelectBuffer
          glShadeModel
          glStencilFunc
          glStencilMask
          glStencilOp
          glTexCoord1d
          glTexCoord1dv
          glTexCoord1f
          glTexCoord1fv
          glTexCoord1i
          glTexCoord1iv
          glTexCoord1s
          glTexCoord1sv
          glTexCoord2d
          glTexCoord2dv
          glTexCoord2f
          glTexCoord2fv
          glTexCoord2i
          glTexCoord2iv
          glTexCoord2s
          glTexCoord2sv
          glTexCoord3d
          glTexCoord3dv
          glTexCoord3f
          glTexCoord3fv
          glTexCoord3i
          glTexCoord3iv
          glTexCoord3s
          glTexCoord3sv
          glTexCoord4d
          glTexCoord4dv
          glTexCoord4f
          glTexCoord4fv
          glTexCoord4i
          glTexCoord4iv
          glTexCoord4s
          glTexCoord4sv
          glTexCoordPointer
          glTexEnvf
          glTexEnvfv
          glTexEnvi
          glTexEnviv
          glTexGend
          glTexGendv
          glTexGenf
          glTexGenfv
          glTexGeni
          glTexGeniv
          glTexImage1D
          glTexImage2D
          glTexParameterf
          glTexParameterfv
          glTexParameteri
          glTexParameteriv
          glTexSubImage1D
          glTexSubImage2D
          glTranslated
          glTranslatef
          glVertex2d
          glVertex2dv
          glVertex2f
          glVertex2fv
          glVertex2i
          glVertex2iv
          glVertex2s
          glVertex2sv
          glVertex3d
          glVertex3dv
          glVertex3f
          glVertex3fv
          glVertex3i
          glVertex3iv
          glVertex3s
          glVertex3sv
          glVertex4d
          glVertex4dv
          glVertex4f
          glVertex4fv
          glVertex4i
          glVertex4iv
          glVertex4s
          glVertex4sv
          glVertexPointer
          glViewport

          ;; Open GL 2.0
          GL_VERSION_2_0 
          GL_BLEND_EQUATION_RGB 
          GL_VERTEX_ATTRIB_ARRAY_ENABLED 
          GL_VERTEX_ATTRIB_ARRAY_SIZE 
          GL_VERTEX_ATTRIB_ARRAY_STRIDE 
          GL_VERTEX_ATTRIB_ARRAY_TYPE 
          GL_CURRENT_VERTEX_ATTRIB 
          GL_VERTEX_PROGRAM_POINT_SIZE 
          GL_VERTEX_PROGRAM_TWO_SIDE 
          GL_VERTEX_ATTRIB_ARRAY_POINTER 
          GL_STENCIL_BACK_FUNC 
          GL_STENCIL_BACK_FAIL 
          GL_STENCIL_BACK_PASS_DEPTH_FAIL 
          GL_STENCIL_BACK_PASS_DEPTH_PASS 
          GL_MAX_DRAW_BUFFERS 
          GL_DRAW_BUFFER0 
          GL_DRAW_BUFFER1 
          GL_DRAW_BUFFER2 
          GL_DRAW_BUFFER3 
          GL_DRAW_BUFFER4 
          GL_DRAW_BUFFER5 
          GL_DRAW_BUFFER6 
          GL_DRAW_BUFFER7 
          GL_DRAW_BUFFER8 
          GL_DRAW_BUFFER9 
          GL_DRAW_BUFFER10 
          GL_DRAW_BUFFER11 
          GL_DRAW_BUFFER12 
          GL_DRAW_BUFFER13 
          GL_DRAW_BUFFER14 
          GL_DRAW_BUFFER15 
          GL_BLEND_EQUATION_ALPHA 
          GL_POINT_SPRITE 
          GL_COORD_REPLACE 
          GL_MAX_VERTEX_ATTRIBS 
          GL_VERTEX_ATTRIB_ARRAY_NORMALIZED 
          GL_MAX_TEXTURE_COORDS 
          GL_MAX_TEXTURE_IMAGE_UNITS 
          GL_FRAGMENT_SHADER 
          GL_VERTEX_SHADER 
          GL_MAX_FRAGMENT_UNIFORM_COMPONENTS 
          GL_MAX_VERTEX_UNIFORM_COMPONENTS 
          GL_MAX_VARYING_FLOATS 
          GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS 
          GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS 
          GL_SHADER_TYPE 
          GL_FLOAT_VEC2 
          GL_FLOAT_VEC3 
          GL_FLOAT_VEC4 
          GL_INT_VEC2 
          GL_INT_VEC3 
          GL_INT_VEC4 
          GL_BOOL 
          GL_BOOL_VEC2 
          GL_BOOL_VEC3 
          GL_BOOL_VEC4 
          GL_FLOAT_MAT2 
          GL_FLOAT_MAT3 
          GL_FLOAT_MAT4 
          GL_SAMPLER_1D 
          GL_SAMPLER_2D 
          GL_SAMPLER_3D 
          GL_SAMPLER_CUBE 
          GL_SAMPLER_1D_SHADOW 
          GL_SAMPLER_2D_SHADOW 
          GL_DELETE_STATUS 
          GL_COMPILE_STATUS 
          GL_LINK_STATUS 
          GL_VALIDATE_STATUS 
          GL_INFO_LOG_LENGTH 
          GL_ATTACHED_SHADERS 
          GL_ACTIVE_UNIFORMS 
          GL_ACTIVE_UNIFORM_MAX_LENGTH 
          GL_SHADER_SOURCE_LENGTH 
          GL_ACTIVE_ATTRIBUTES 
          GL_ACTIVE_ATTRIBUTE_MAX_LENGTH 
          GL_FRAGMENT_SHADER_DERIVATIVE_HINT 
          GL_SHADING_LANGUAGE_VERSION 
          GL_CURRENT_PROGRAM 
          GL_POINT_SPRITE_COORD_ORIGIN 
          GL_LOWER_LEFT 
          GL_UPPER_LEFT 
          GL_STENCIL_BACK_REF 
          GL_STENCIL_BACK_VALUE_MASK 
          GL_STENCIL_BACK_WRITEMASK 

          glAttachShader
          glBindAttribLocation
          glBlendEquationSeparate
          glCompileShader
          glCreateProgram
          glCreateShader
          ;; glDeleteProgram
          ;; glDeleteShader
          ;; glDetachShader
          ;; glDisableVertexAttribArray
          ;; glDrawBuffers
          ;; glEnableVertexAttribArray
          ;; glGetActiveAttrib
          ;; glGetActiveUniform
          ;; glGetAttachedShaders
          ;; glGetAttribLocation
          ;; glGetProgramInfoLog
          ;; glGetProgramiv
          ;; glGetShaderInfoLog
          ;; glGetShaderSource
          ;; glGetShaderiv
          ;; glGetUniformLocation
          ;; glGetUniformfv
          ;; glGetUniformiv
          ;; glGetVertexAttribPointerv
          ;; glGetVertexAttribdv
          ;; glGetVertexAttribfv
          ;; glGetVertexAttribiv
          ;; glIsProgram
          ;; glIsShader
          ;; glLinkProgram
          ;; glShaderSource
          ;; glStencilFuncSeparate
          ;; glStencilMaskSeparate
          ;; glStencilOpSeparate
          ;; glUniform1f
          ;; glUniform1fv
          ;; glUniform1i
          ;; glUniform1iv
          ;; glUniform2f
          ;; glUniform2fv
          ;; glUniform2i
          ;; glUniform2iv
          ;; glUniform3f
          ;; glUniform3fv
          ;; glUniform3i
          ;; glUniform3iv
          ;; glUniform4f
          ;; glUniform4fv
          ;; glUniform4i
          ;; glUniform4iv
          ;; glUniformMatrix2fv
          ;; glUniformMatrix3fv
          ;; glUniformMatrix4fv
          ;; glUseProgram
          ;; glValidateProgram
          ;; glVertexAttrib1d
          ;; glVertexAttrib1dv
          ;; glVertexAttrib1f
          ;; glVertexAttrib1fv
          ;; glVertexAttrib1s
          ;; glVertexAttrib1sv
          ;; glVertexAttrib2d
          ;; glVertexAttrib2dv
          ;; glVertexAttrib2f
          ;; glVertexAttrib2fv
          ;; glVertexAttrib2s
          ;; glVertexAttrib2sv
          ;; glVertexAttrib3d
          ;; glVertexAttrib3dv
          ;; glVertexAttrib3f
          ;; glVertexAttrib3fv
          ;; glVertexAttrib3s
          ;; glVertexAttrib3sv
          ;; glVertexAttrib4Nbv
          ;; glVertexAttrib4Niv
          ;; glVertexAttrib4Nsv
          ;; glVertexAttrib4Nub
          ;; glVertexAttrib4Nubv
          ;; glVertexAttrib4Nuiv
          ;; glVertexAttrib4Nusv
          ;; glVertexAttrib4bv
          ;; glVertexAttrib4d
          ;; glVertexAttrib4dv
          ;; glVertexAttrib4f
          ;; glVertexAttrib4fv
          ;; glVertexAttrib4iv
          ;; glVertexAttrib4s
          ;; glVertexAttrib4sv
          ;; glVertexAttrib4ubv
          ;; glVertexAttrib4uiv
          ;; glVertexAttrib4usv
          ;; glVertexAttribPointer

          ;; GL Arb Imaging
          GL_ARB_imaging 
          GL_CONSTANT_COLOR 
          GL_ONE_MINUS_CONSTANT_COLOR 
          GL_CONSTANT_ALPHA 
          GL_ONE_MINUS_CONSTANT_ALPHA 
          GL_BLEND_COLOR 
          GL_FUNC_ADD 
          GL_MIN 
          GL_MAX 
          GL_BLEND_EQUATION 
          GL_FUNC_SUBTRACT 
          GL_FUNC_REVERSE_SUBTRACT 
          GL_CONVOLUTION_1D 
          GL_CONVOLUTION_2D 
          GL_SEPARABLE_2D 
          GL_CONVOLUTION_BORDER_MODE 
          GL_CONVOLUTION_FILTER_SCALE 
          GL_CONVOLUTION_FILTER_BIAS 
          GL_REDUCE 
          GL_CONVOLUTION_FORMAT 
          GL_CONVOLUTION_WIDTH 
          GL_CONVOLUTION_HEIGHT 
          GL_MAX_CONVOLUTION_WIDTH 
          GL_MAX_CONVOLUTION_HEIGHT 
          GL_POST_CONVOLUTION_RED_SCALE 
          GL_POST_CONVOLUTION_GREEN_SCALE 
          GL_POST_CONVOLUTION_BLUE_SCALE 
          GL_POST_CONVOLUTION_ALPHA_SCALE 
          GL_POST_CONVOLUTION_RED_BIAS 
          GL_POST_CONVOLUTION_GREEN_BIAS 
          GL_POST_CONVOLUTION_BLUE_BIAS 
          GL_POST_CONVOLUTION_ALPHA_BIAS 
          GL_HISTOGRAM 
          GL_PROXY_HISTOGRAM 
          GL_HISTOGRAM_WIDTH 
          GL_HISTOGRAM_FORMAT 
          GL_HISTOGRAM_RED_SIZE 
          GL_HISTOGRAM_GREEN_SIZE 
          GL_HISTOGRAM_BLUE_SIZE 
          GL_HISTOGRAM_ALPHA_SIZE 
          GL_HISTOGRAM_LUMINANCE_SIZE 
          GL_HISTOGRAM_SINK 
          GL_MINMAX 
          GL_MINMAX_FORMAT 
          GL_MINMAX_SINK 
          GL_TABLE_TOO_LARGE 
          GL_COLOR_MATRIX 
          GL_COLOR_MATRIX_STACK_DEPTH 
          GL_MAX_COLOR_MATRIX_STACK_DEPTH 
          GL_POST_COLOR_MATRIX_RED_SCALE 
          GL_POST_COLOR_MATRIX_GREEN_SCALE 
          GL_POST_COLOR_MATRIX_BLUE_SCALE 
          GL_POST_COLOR_MATRIX_ALPHA_SCALE 
          GL_POST_COLOR_MATRIX_RED_BIAS 
          GL_POST_COLOR_MATRIX_GREEN_BIAS 
          GL_POST_COLOR_MATRIX_BLUE_BIAS 
          GL_POST_COLOR_MATRIX_ALPHA_BIAS 
          GL_COLOR_TABLE 
          GL_POST_CONVOLUTION_COLOR_TABLE 
          GL_POST_COLOR_MATRIX_COLOR_TABLE 
          GL_PROXY_COLOR_TABLE 
          GL_PROXY_POST_CONVOLUTION_COLOR_TABLE 
          GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE 
          GL_COLOR_TABLE_SCALE 
          GL_COLOR_TABLE_BIAS 
          GL_COLOR_TABLE_FORMAT 
          GL_COLOR_TABLE_WIDTH 
          GL_COLOR_TABLE_RED_SIZE 
          GL_COLOR_TABLE_GREEN_SIZE 
          GL_COLOR_TABLE_BLUE_SIZE 
          GL_COLOR_TABLE_ALPHA_SIZE 
          GL_COLOR_TABLE_LUMINANCE_SIZE 
          GL_COLOR_TABLE_INTENSITY_SIZE 
          GL_IGNORE_BORDER 
          GL_CONSTANT_BORDER 
          GL_WRAP_BORDER 
          GL_REPLICATE_BORDER 
          GL_CONVOLUTION_BORDER_COLOR 
          )
  (import (chezscheme))

  (define lib-name
    (case (machine-type)
      ((i3le ti3le)      "libGLEW.so")               ; Linux x86
      ((a6le ta6le)      "libGLEW.so")               ; Linux x86_64
      (else
       (assertion-violation #f "can not locate GLEW library, unkonwn operating system"))))

  (define lib (load-shared-object lib-name))

  (define-syntax define-function
    (syntax-rules ()
      ((_ ret name args)
       (define name
         (foreign-procedure (symbol->string 'name) args ret)))))

  ;; GL_VERSION_1_1
  
  (define GL_ZERO 0)
  (define GL_FALSE 0)
  (define GL_LOGIC_OP #x0BF1)
  (define GL_NONE 0)
  (define GL_TEXTURE_COMPONENTS #x1003)
  (define GL_NO_ERROR 0)
  (define GL_POINTS #x0000)
  (define GL_CURRENT_BIT #x00000001)
  (define GL_TRUE 1)
  (define GL_ONE 1)
  (define GL_CLIENT_PIXEL_STORE_BIT #x00000001)
  (define GL_LINES #x0001)
  (define GL_LINE_LOOP #x0002)
  (define GL_POINT_BIT #x00000002)
  (define GL_CLIENT_VERTEX_ARRAY_BIT #x00000002)
  (define GL_LINE_STRIP #x0003)
  (define GL_LINE_BIT #x00000004)
  (define GL_TRIANGLES #x0004)
  (define GL_TRIANGLE_STRIP #x0005)
  (define GL_TRIANGLE_FAN #x0006)
  (define GL_QUADS #x0007)
  (define GL_QUAD_STRIP #x0008)
  (define GL_POLYGON_BIT #x00000008)
  (define GL_POLYGON #x0009)
  (define GL_POLYGON_STIPPLE_BIT #x00000010)
  (define GL_PIXEL_MODE_BIT #x00000020)
  (define GL_LIGHTING_BIT #x00000040)
  (define GL_FOG_BIT #x00000080)
  (define GL_DEPTH_BUFFER_BIT #x00000100)
  (define GL_ACCUM #x0100)
  (define GL_LOAD #x0101)
  (define GL_RETURN #x0102)
  (define GL_MULT #x0103)
  (define GL_ADD #x0104)
  (define GL_NEVER #x0200)
  (define GL_ACCUM_BUFFER_BIT #x00000200)
  (define GL_LESS #x0201)
  (define GL_EQUAL #x0202)
  (define GL_LEQUAL #x0203)
  (define GL_GREATER #x0204)
  (define GL_NOTEQUAL #x0205)
  (define GL_GEQUAL #x0206)
  (define GL_ALWAYS #x0207)
  (define GL_SRC_COLOR #x0300)
  (define GL_ONE_MINUS_SRC_COLOR #x0301)
  (define GL_SRC_ALPHA #x0302)
  (define GL_ONE_MINUS_SRC_ALPHA #x0303)
  (define GL_DST_ALPHA #x0304)
  (define GL_ONE_MINUS_DST_ALPHA #x0305)
  (define GL_DST_COLOR #x0306)
  (define GL_ONE_MINUS_DST_COLOR #x0307)
  (define GL_SRC_ALPHA_SATURATE #x0308)
  (define GL_STENCIL_BUFFER_BIT #x00000400)
  (define GL_FRONT_LEFT #x0400)
  (define GL_FRONT_RIGHT #x0401)
  (define GL_BACK_LEFT #x0402)
  (define GL_BACK_RIGHT #x0403)
  (define GL_FRONT #x0404)
  (define GL_BACK #x0405)
  (define GL_LEFT #x0406)
  (define GL_RIGHT #x0407)
  (define GL_FRONT_AND_BACK #x0408)
  (define GL_AUX0 #x0409)
  (define GL_AUX1 #x040A)
  (define GL_AUX2 #x040B)
  (define GL_AUX3 #x040C)
  (define GL_INVALID_ENUM #x0500)
  (define GL_INVALID_VALUE #x0501)
  (define GL_INVALID_OPERATION #x0502)
  (define GL_STACK_OVERFLOW #x0503)
  (define GL_STACK_UNDERFLOW #x0504)
  (define GL_OUT_OF_MEMORY #x0505)
  (define GL_2D #x0600)
  (define GL_3D #x0601)
  (define GL_3D_COLOR #x0602)
  (define GL_3D_COLOR_TEXTURE #x0603)
  (define GL_4D_COLOR_TEXTURE #x0604)
  (define GL_PASS_THROUGH_TOKEN #x0700)
  (define GL_POINT_TOKEN #x0701)
  (define GL_LINE_TOKEN #x0702)
  (define GL_POLYGON_TOKEN #x0703)
  (define GL_BITMAP_TOKEN #x0704)
  (define GL_DRAW_PIXEL_TOKEN #x0705)
  (define GL_COPY_PIXEL_TOKEN #x0706)
  (define GL_LINE_RESET_TOKEN #x0707)
  (define GL_EXP #x0800)
  (define GL_VIEWPORT_BIT #x00000800)
  (define GL_EXP2 #x0801)
  (define GL_CW #x0900)
  (define GL_CCW #x0901)
  (define GL_COEFF #x0A00)
  (define GL_ORDER #x0A01)
  (define GL_DOMAIN #x0A02)
  (define GL_CURRENT_COLOR #x0B00)
  (define GL_CURRENT_INDEX #x0B01)
  (define GL_CURRENT_NORMAL #x0B02)
  (define GL_CURRENT_TEXTURE_COORDS #x0B03)
  (define GL_CURRENT_RASTER_COLOR #x0B04)
  (define GL_CURRENT_RASTER_INDEX #x0B05)
  (define GL_CURRENT_RASTER_TEXTURE_COORDS #x0B06)
  (define GL_CURRENT_RASTER_POSITION #x0B07)
  (define GL_CURRENT_RASTER_POSITION_VALID #x0B08)
  (define GL_CURRENT_RASTER_DISTANCE #x0B09)
  (define GL_POINT_SMOOTH #x0B10)
  (define GL_POINT_SIZE #x0B11)
  (define GL_POINT_SIZE_RANGE #x0B12)
  (define GL_POINT_SIZE_GRANULARITY #x0B13)
  (define GL_LINE_SMOOTH #x0B20)
  (define GL_LINE_WIDTH #x0B21)
  (define GL_LINE_WIDTH_RANGE #x0B22)
  (define GL_LINE_WIDTH_GRANULARITY #x0B23)
  (define GL_LINE_STIPPLE #x0B24)
  (define GL_LINE_STIPPLE_PATTERN #x0B25)
  (define GL_LINE_STIPPLE_REPEAT #x0B26)
  (define GL_LIST_MODE #x0B30)
  (define GL_MAX_LIST_NESTING #x0B31)
  (define GL_LIST_BASE #x0B32)
  (define GL_LIST_INDEX #x0B33)
  (define GL_POLYGON_MODE #x0B40)
  (define GL_POLYGON_SMOOTH #x0B41)
  (define GL_POLYGON_STIPPLE #x0B42)
  (define GL_EDGE_FLAG #x0B43)
  (define GL_CULL_FACE #x0B44)
  (define GL_CULL_FACE_MODE #x0B45)
  (define GL_FRONT_FACE #x0B46)
  (define GL_LIGHTING #x0B50)
  (define GL_LIGHT_MODEL_LOCAL_VIEWER #x0B51)
  (define GL_LIGHT_MODEL_TWO_SIDE #x0B52)
  (define GL_LIGHT_MODEL_AMBIENT #x0B53)
  (define GL_SHADE_MODEL #x0B54)
  (define GL_COLOR_MATERIAL_FACE #x0B55)
  (define GL_COLOR_MATERIAL_PARAMETER #x0B56)
  (define GL_COLOR_MATERIAL #x0B57)
  (define GL_FOG #x0B60)
  (define GL_FOG_INDEX #x0B61)
  (define GL_FOG_DENSITY #x0B62)
  (define GL_FOG_START #x0B63)
  (define GL_FOG_END #x0B64)
  (define GL_FOG_MODE #x0B65)
  (define GL_FOG_COLOR #x0B66)
  (define GL_DEPTH_RANGE #x0B70)
  (define GL_DEPTH_TEST #x0B71)
  (define GL_DEPTH_WRITEMASK #x0B72)
  (define GL_DEPTH_CLEAR_VALUE #x0B73)
  (define GL_DEPTH_FUNC #x0B74)
  (define GL_ACCUM_CLEAR_VALUE #x0B80)
  (define GL_STENCIL_TEST #x0B90)
  (define GL_STENCIL_CLEAR_VALUE #x0B91)
  (define GL_STENCIL_FUNC #x0B92)
  (define GL_STENCIL_VALUE_MASK #x0B93)
  (define GL_STENCIL_FAIL #x0B94)
  (define GL_STENCIL_PASS_DEPTH_FAIL #x0B95)
  (define GL_STENCIL_PASS_DEPTH_PASS #x0B96)
  (define GL_STENCIL_REF #x0B97)
  (define GL_STENCIL_WRITEMASK #x0B98)
  (define GL_MATRIX_MODE #x0BA0)
  (define GL_NORMALIZE #x0BA1)
  (define GL_VIEWPORT #x0BA2)
  (define GL_MODELVIEW_STACK_DEPTH #x0BA3)
  (define GL_PROJECTION_STACK_DEPTH #x0BA4)
  (define GL_TEXTURE_STACK_DEPTH #x0BA5)
  (define GL_MODELVIEW_MATRIX #x0BA6)
  (define GL_PROJECTION_MATRIX #x0BA7)
  (define GL_TEXTURE_MATRIX #x0BA8)
  (define GL_ATTRIB_STACK_DEPTH #x0BB0)
  (define GL_CLIENT_ATTRIB_STACK_DEPTH #x0BB1)
  (define GL_ALPHA_TEST #x0BC0)
  (define GL_ALPHA_TEST_FUNC #x0BC1)
  (define GL_ALPHA_TEST_REF #x0BC2)
  (define GL_DITHER #x0BD0)
  (define GL_BLEND_DST #x0BE0)
  (define GL_BLEND_SRC #x0BE1)
  (define GL_BLEND #x0BE2)
  (define GL_LOGIC_OP_MODE #x0BF0)
  (define GL_INDEX_LOGIC_OP #x0BF1)
  (define GL_COLOR_LOGIC_OP #x0BF2)
  (define GL_AUX_BUFFERS #x0C00)
  (define GL_DRAW_BUFFER #x0C01)
  (define GL_READ_BUFFER #x0C02)
  (define GL_SCISSOR_BOX #x0C10)
  (define GL_SCISSOR_TEST #x0C11)
  (define GL_INDEX_CLEAR_VALUE #x0C20)
  (define GL_INDEX_WRITEMASK #x0C21)
  (define GL_COLOR_CLEAR_VALUE #x0C22)
  (define GL_COLOR_WRITEMASK #x0C23)
  (define GL_INDEX_MODE #x0C30)
  (define GL_RGBA_MODE #x0C31)
  (define GL_DOUBLEBUFFER #x0C32)
  (define GL_STEREO #x0C33)
  (define GL_RENDER_MODE #x0C40)
  (define GL_PERSPECTIVE_CORRECTION_HINT #x0C50)
  (define GL_POINT_SMOOTH_HINT #x0C51)
  (define GL_LINE_SMOOTH_HINT #x0C52)
  (define GL_POLYGON_SMOOTH_HINT #x0C53)
  (define GL_FOG_HINT #x0C54)
  (define GL_TEXTURE_GEN_S #x0C60)
  (define GL_TEXTURE_GEN_T #x0C61)
  (define GL_TEXTURE_GEN_R #x0C62)
  (define GL_TEXTURE_GEN_Q #x0C63)
  (define GL_PIXEL_MAP_I_TO_I #x0C70)
  (define GL_PIXEL_MAP_S_TO_S #x0C71)
  (define GL_PIXEL_MAP_I_TO_R #x0C72)
  (define GL_PIXEL_MAP_I_TO_G #x0C73)
  (define GL_PIXEL_MAP_I_TO_B #x0C74)
  (define GL_PIXEL_MAP_I_TO_A #x0C75)
  (define GL_PIXEL_MAP_R_TO_R #x0C76)
  (define GL_PIXEL_MAP_G_TO_G #x0C77)
  (define GL_PIXEL_MAP_B_TO_B #x0C78)
  (define GL_PIXEL_MAP_A_TO_A #x0C79)
  (define GL_PIXEL_MAP_I_TO_I_SIZE #x0CB0)
  (define GL_PIXEL_MAP_S_TO_S_SIZE #x0CB1)
  (define GL_PIXEL_MAP_I_TO_R_SIZE #x0CB2)
  (define GL_PIXEL_MAP_I_TO_G_SIZE #x0CB3)
  (define GL_PIXEL_MAP_I_TO_B_SIZE #x0CB4)
  (define GL_PIXEL_MAP_I_TO_A_SIZE #x0CB5)
  (define GL_PIXEL_MAP_R_TO_R_SIZE #x0CB6)
  (define GL_PIXEL_MAP_G_TO_G_SIZE #x0CB7)
  (define GL_PIXEL_MAP_B_TO_B_SIZE #x0CB8)
  (define GL_PIXEL_MAP_A_TO_A_SIZE #x0CB9)
  (define GL_UNPACK_SWAP_BYTES #x0CF0)
  (define GL_UNPACK_LSB_FIRST #x0CF1)
  (define GL_UNPACK_ROW_LENGTH #x0CF2)
  (define GL_UNPACK_SKIP_ROWS #x0CF3)
  (define GL_UNPACK_SKIP_PIXELS #x0CF4)
  (define GL_UNPACK_ALIGNMENT #x0CF5)
  (define GL_PACK_SWAP_BYTES #x0D00)
  (define GL_PACK_LSB_FIRST #x0D01)
  (define GL_PACK_ROW_LENGTH #x0D02)
  (define GL_PACK_SKIP_ROWS #x0D03)
  (define GL_PACK_SKIP_PIXELS #x0D04)
  (define GL_PACK_ALIGNMENT #x0D05)
  (define GL_MAP_COLOR #x0D10)
  (define GL_MAP_STENCIL #x0D11)
  (define GL_INDEX_SHIFT #x0D12)
  (define GL_INDEX_OFFSET #x0D13)
  (define GL_RED_SCALE #x0D14)
  (define GL_RED_BIAS #x0D15)
  (define GL_ZOOM_X #x0D16)
  (define GL_ZOOM_Y #x0D17)
  (define GL_GREEN_SCALE #x0D18)
  (define GL_GREEN_BIAS #x0D19)
  (define GL_BLUE_SCALE #x0D1A)
  (define GL_BLUE_BIAS #x0D1B)
  (define GL_ALPHA_SCALE #x0D1C)
  (define GL_ALPHA_BIAS #x0D1D)
  (define GL_DEPTH_SCALE #x0D1E)
  (define GL_DEPTH_BIAS #x0D1F)
  (define GL_MAX_EVAL_ORDER #x0D30)
  (define GL_MAX_LIGHTS #x0D31)
  (define GL_MAX_CLIP_PLANES #x0D32)
  (define GL_MAX_TEXTURE_SIZE #x0D33)
  (define GL_MAX_PIXEL_MAP_TABLE #x0D34)
  (define GL_MAX_ATTRIB_STACK_DEPTH #x0D35)
  (define GL_MAX_MODELVIEW_STACK_DEPTH #x0D36)
  (define GL_MAX_NAME_STACK_DEPTH #x0D37)
  (define GL_MAX_PROJECTION_STACK_DEPTH #x0D38)
  (define GL_MAX_TEXTURE_STACK_DEPTH #x0D39)
  (define GL_MAX_VIEWPORT_DIMS #x0D3A)
  (define GL_MAX_CLIENT_ATTRIB_STACK_DEPTH #x0D3B)
  (define GL_SUBPIXEL_BITS #x0D50)
  (define GL_INDEX_BITS #x0D51)
  (define GL_RED_BITS #x0D52)
  (define GL_GREEN_BITS #x0D53)
  (define GL_BLUE_BITS #x0D54)
  (define GL_ALPHA_BITS #x0D55)
  (define GL_DEPTH_BITS #x0D56)
  (define GL_STENCIL_BITS #x0D57)
  (define GL_ACCUM_RED_BITS #x0D58)
  (define GL_ACCUM_GREEN_BITS #x0D59)
  (define GL_ACCUM_BLUE_BITS #x0D5A)
  (define GL_ACCUM_ALPHA_BITS #x0D5B)
  (define GL_NAME_STACK_DEPTH #x0D70)
  (define GL_AUTO_NORMAL #x0D80)
  (define GL_MAP1_COLOR_4 #x0D90)
  (define GL_MAP1_INDEX #x0D91)
  (define GL_MAP1_NORMAL #x0D92)
  (define GL_MAP1_TEXTURE_COORD_1 #x0D93)
  (define GL_MAP1_TEXTURE_COORD_2 #x0D94)
  (define GL_MAP1_TEXTURE_COORD_3 #x0D95)
  (define GL_MAP1_TEXTURE_COORD_4 #x0D96)
  (define GL_MAP1_VERTEX_3 #x0D97)
  (define GL_MAP1_VERTEX_4 #x0D98)
  (define GL_MAP2_COLOR_4 #x0DB0)
  (define GL_MAP2_INDEX #x0DB1)
  (define GL_MAP2_NORMAL #x0DB2)
  (define GL_MAP2_TEXTURE_COORD_1 #x0DB3)
  (define GL_MAP2_TEXTURE_COORD_2 #x0DB4)
  (define GL_MAP2_TEXTURE_COORD_3 #x0DB5)
  (define GL_MAP2_TEXTURE_COORD_4 #x0DB6)
  (define GL_MAP2_VERTEX_3 #x0DB7)
  (define GL_MAP2_VERTEX_4 #x0DB8)
  (define GL_MAP1_GRID_DOMAIN #x0DD0)
  (define GL_MAP1_GRID_SEGMENTS #x0DD1)
  (define GL_MAP2_GRID_DOMAIN #x0DD2)
  (define GL_MAP2_GRID_SEGMENTS #x0DD3)
  (define GL_TEXTURE_1D #x0DE0)
  (define GL_TEXTURE_2D #x0DE1)
  (define GL_FEEDBACK_BUFFER_POINTER #x0DF0)
  (define GL_FEEDBACK_BUFFER_SIZE #x0DF1)
  (define GL_FEEDBACK_BUFFER_TYPE #x0DF2)
  (define GL_SELECTION_BUFFER_POINTER #x0DF3)
  (define GL_SELECTION_BUFFER_SIZE #x0DF4)
  (define GL_TEXTURE_WIDTH #x1000)
  (define GL_TRANSFORM_BIT #x00001000)
  (define GL_TEXTURE_HEIGHT #x1001)
  (define GL_TEXTURE_INTERNAL_FORMAT #x1003)
  (define GL_TEXTURE_BORDER_COLOR #x1004)
  (define GL_TEXTURE_BORDER #x1005)
  (define GL_DONT_CARE #x1100)
  (define GL_FASTEST #x1101)
  (define GL_NICEST #x1102)
  (define GL_AMBIENT #x1200)
  (define GL_DIFFUSE #x1201)
  (define GL_SPECULAR #x1202)
  (define GL_POSITION #x1203)
  (define GL_SPOT_DIRECTION #x1204)
  (define GL_SPOT_EXPONENT #x1205)
  (define GL_SPOT_CUTOFF #x1206)
  (define GL_CONSTANT_ATTENUATION #x1207)
  (define GL_LINEAR_ATTENUATION #x1208)
  (define GL_QUADRATIC_ATTENUATION #x1209)
  (define GL_COMPILE #x1300)
  (define GL_COMPILE_AND_EXECUTE #x1301)
  (define GL_BYTE #x1400)
  (define GL_UNSIGNED_BYTE #x1401)
  (define GL_SHORT #x1402)
  (define GL_UNSIGNED_SHORT #x1403)
  (define GL_INT #x1404)
  (define GL_UNSIGNED_INT #x1405)
  (define GL_FLOAT #x1406)
  (define GL_2_BYTES #x1407)
  (define GL_3_BYTES #x1408)
  (define GL_4_BYTES #x1409)
  (define GL_DOUBLE #x140A)
  (define GL_CLEAR #x1500)
  (define GL_AND #x1501)
  (define GL_AND_REVERSE #x1502)
  (define GL_COPY #x1503)
  (define GL_AND_INVERTED #x1504)
  (define GL_NOOP #x1505)
  (define GL_XOR #x1506)
  (define GL_OR #x1507)
  (define GL_NOR #x1508)
  (define GL_EQUIV #x1509)
  (define GL_INVERT #x150A)
  (define GL_OR_REVERSE #x150B)
  (define GL_COPY_INVERTED #x150C)
  (define GL_OR_INVERTED #x150D)
  (define GL_NAND #x150E)
  (define GL_SET #x150F)
  (define GL_EMISSION #x1600)
  (define GL_SHININESS #x1601)
  (define GL_AMBIENT_AND_DIFFUSE #x1602)
  (define GL_COLOR_INDEXES #x1603)
  (define GL_MODELVIEW #x1700)
  (define GL_PROJECTION #x1701)
  (define GL_TEXTURE #x1702)
  (define GL_COLOR #x1800)
  (define GL_DEPTH #x1801)
  (define GL_STENCIL #x1802)
  (define GL_COLOR_INDEX #x1900)
  (define GL_STENCIL_INDEX #x1901)
  (define GL_DEPTH_COMPONENT #x1902)
  (define GL_RED #x1903)
  (define GL_GREEN #x1904)
  (define GL_BLUE #x1905)
  (define GL_ALPHA #x1906)
  (define GL_RGB #x1907)
  (define GL_RGBA #x1908)
  (define GL_LUMINANCE #x1909)
  (define GL_LUMINANCE_ALPHA #x190A)
  (define GL_BITMAP #x1A00)
  (define GL_POINT #x1B00)
  (define GL_LINE #x1B01)
  (define GL_FILL #x1B02)
  (define GL_RENDER #x1C00)
  (define GL_FEEDBACK #x1C01)
  (define GL_SELECT #x1C02)
  (define GL_FLAT #x1D00)
  (define GL_SMOOTH #x1D01)
  (define GL_KEEP #x1E00)
  (define GL_REPLACE #x1E01)
  (define GL_INCR #x1E02)
  (define GL_DECR #x1E03)
  (define GL_VENDOR #x1F00)
  (define GL_RENDERER #x1F01)
  (define GL_VERSION #x1F02)
  (define GL_EXTENSIONS #x1F03)
  (define GL_S #x2000)
  (define GL_ENABLE_BIT #x00002000)
  (define GL_T #x2001)
  (define GL_R #x2002)
  (define GL_Q #x2003)
  (define GL_MODULATE #x2100)
  (define GL_DECAL #x2101)
  (define GL_TEXTURE_ENV_MODE #x2200)
  (define GL_TEXTURE_ENV_COLOR #x2201)
  (define GL_TEXTURE_ENV #x2300)
  (define GL_EYE_LINEAR #x2400)
  (define GL_OBJECT_LINEAR #x2401)
  (define GL_SPHERE_MAP #x2402)
  (define GL_TEXTURE_GEN_MODE #x2500)
  (define GL_OBJECT_PLANE #x2501)
  (define GL_EYE_PLANE #x2502)
  (define GL_NEAREST #x2600)
  (define GL_LINEAR #x2601)
  (define GL_NEAREST_MIPMAP_NEAREST #x2700)
  (define GL_LINEAR_MIPMAP_NEAREST #x2701)
  (define GL_NEAREST_MIPMAP_LINEAR #x2702)
  (define GL_LINEAR_MIPMAP_LINEAR #x2703)
  (define GL_TEXTURE_MAG_FILTER #x2800)
  (define GL_TEXTURE_MIN_FILTER #x2801)
  (define GL_TEXTURE_WRAP_S #x2802)
  (define GL_TEXTURE_WRAP_T #x2803)
  (define GL_CLAMP #x2900)
  (define GL_REPEAT #x2901)
  (define GL_POLYGON_OFFSET_UNITS #x2A00)
  (define GL_POLYGON_OFFSET_POINT #x2A01)
  (define GL_POLYGON_OFFSET_LINE #x2A02)
  (define GL_R3_G3_B2 #x2A10)
  (define GL_V2F #x2A20)
  (define GL_V3F #x2A21)
  (define GL_C4UB_V2F #x2A22)
  (define GL_C4UB_V3F #x2A23)
  (define GL_C3F_V3F #x2A24)
  (define GL_N3F_V3F #x2A25)
  (define GL_C4F_N3F_V3F #x2A26)
  (define GL_T2F_V3F #x2A27)
  (define GL_T4F_V4F #x2A28)
  (define GL_T2F_C4UB_V3F #x2A29)
  (define GL_T2F_C3F_V3F #x2A2A)
  (define GL_T2F_N3F_V3F #x2A2B)
  (define GL_T2F_C4F_N3F_V3F #x2A2C)
  (define GL_T4F_C4F_N3F_V4F #x2A2D)
  (define GL_CLIP_PLANE0 #x3000)
  (define GL_CLIP_PLANE1 #x3001)
  (define GL_CLIP_PLANE2 #x3002)
  (define GL_CLIP_PLANE3 #x3003)
  (define GL_CLIP_PLANE4 #x3004)
  (define GL_CLIP_PLANE5 #x3005)
  (define GL_LIGHT0 #x4000)
  (define GL_COLOR_BUFFER_BIT #x00004000)
  (define GL_LIGHT1 #x4001)
  (define GL_LIGHT2 #x4002)
  (define GL_LIGHT3 #x4003)
  (define GL_LIGHT4 #x4004)
  (define GL_LIGHT5 #x4005)
  (define GL_LIGHT6 #x4006)
  (define GL_LIGHT7 #x4007)
  (define GL_HINT_BIT #x00008000)
  (define GL_POLYGON_OFFSET_FILL #x8037)
  (define GL_POLYGON_OFFSET_FACTOR #x8038)
  (define GL_ALPHA4 #x803B)
  (define GL_ALPHA8 #x803C)
  (define GL_ALPHA12 #x803D)
  (define GL_ALPHA16 #x803E)
  (define GL_LUMINANCE4 #x803F)
  (define GL_LUMINANCE8 #x8040)
  (define GL_LUMINANCE12 #x8041)
  (define GL_LUMINANCE16 #x8042)
  (define GL_LUMINANCE4_ALPHA4 #x8043)
  (define GL_LUMINANCE6_ALPHA2 #x8044)
  (define GL_LUMINANCE8_ALPHA8 #x8045)
  (define GL_LUMINANCE12_ALPHA4 #x8046)
  (define GL_LUMINANCE12_ALPHA12 #x8047)
  (define GL_LUMINANCE16_ALPHA16 #x8048)
  (define GL_INTENSITY #x8049)
  (define GL_INTENSITY4 #x804A)
  (define GL_INTENSITY8 #x804B)
  (define GL_INTENSITY12 #x804C)
  (define GL_INTENSITY16 #x804D)
  (define GL_RGB4 #x804F)
  (define GL_RGB5 #x8050)
  (define GL_RGB8 #x8051)
  (define GL_RGB10 #x8052)
  (define GL_RGB12 #x8053)
  (define GL_RGB16 #x8054)
  (define GL_RGBA2 #x8055)
  (define GL_RGBA4 #x8056)
  (define GL_RGB5_A1 #x8057)
  (define GL_RGBA8 #x8058)
  (define GL_RGB10_A2 #x8059)
  (define GL_RGBA12 #x805A)
  (define GL_RGBA16 #x805B)
  (define GL_TEXTURE_RED_SIZE #x805C)
  (define GL_TEXTURE_GREEN_SIZE #x805D)
  (define GL_TEXTURE_BLUE_SIZE #x805E)
  (define GL_TEXTURE_ALPHA_SIZE #x805F)
  (define GL_TEXTURE_LUMINANCE_SIZE #x8060)
  (define GL_TEXTURE_INTENSITY_SIZE #x8061)
  (define GL_PROXY_TEXTURE_1D #x8063)
  (define GL_PROXY_TEXTURE_2D #x8064)
  (define GL_TEXTURE_PRIORITY #x8066)
  (define GL_TEXTURE_RESIDENT #x8067)
  (define GL_TEXTURE_BINDING_1D #x8068)
  (define GL_TEXTURE_BINDING_2D #x8069)
  (define GL_VERTEX_ARRAY #x8074)
  (define GL_NORMAL_ARRAY #x8075)
  (define GL_COLOR_ARRAY #x8076)
  (define GL_INDEX_ARRAY #x8077)
  (define GL_TEXTURE_COORD_ARRAY #x8078)
  (define GL_EDGE_FLAG_ARRAY #x8079)
  (define GL_VERTEX_ARRAY_SIZE #x807A)
  (define GL_VERTEX_ARRAY_TYPE #x807B)
  (define GL_VERTEX_ARRAY_STRIDE #x807C)
  (define GL_NORMAL_ARRAY_TYPE #x807E)
  (define GL_NORMAL_ARRAY_STRIDE #x807F)
  (define GL_COLOR_ARRAY_SIZE #x8081)
  (define GL_COLOR_ARRAY_TYPE #x8082)
  (define GL_COLOR_ARRAY_STRIDE #x8083)
  (define GL_INDEX_ARRAY_TYPE #x8085)
  (define GL_INDEX_ARRAY_STRIDE #x8086)
  (define GL_TEXTURE_COORD_ARRAY_SIZE #x8088)
  (define GL_TEXTURE_COORD_ARRAY_TYPE #x8089)
  (define GL_TEXTURE_COORD_ARRAY_STRIDE #x808A)
  (define GL_EDGE_FLAG_ARRAY_STRIDE #x808C)
  (define GL_VERTEX_ARRAY_POINTER #x808E)
  (define GL_NORMAL_ARRAY_POINTER #x808F)
  (define GL_COLOR_ARRAY_POINTER #x8090)
  (define GL_INDEX_ARRAY_POINTER #x8091)
  (define GL_TEXTURE_COORD_ARRAY_POINTER #x8092)
  (define GL_EDGE_FLAG_ARRAY_POINTER #x8093)
  (define GL_COLOR_INDEX1_EXT #x80E2)
  (define GL_COLOR_INDEX2_EXT #x80E3)
  (define GL_COLOR_INDEX4_EXT #x80E4)
  (define GL_COLOR_INDEX8_EXT #x80E5)
  (define GL_COLOR_INDEX12_EXT #x80E6)
  (define GL_COLOR_INDEX16_EXT #x80E7)
  (define GL_EVAL_BIT #x00010000)
  (define GL_LIST_BIT #x00020000)
  (define GL_TEXTURE_BIT #x00040000)
  (define GL_SCISSOR_BIT #x00080000)
  (define GL_ALL_ATTRIB_BITS #x000fffff)
  (define GL_CLIENT_ALL_ATTRIB_BITS #xffffffff)

  (define-function void glAccum (int float))
  (define-function void glAlphaFunc (int float))
  (define-function int glAreTexturesResident (int int int))
  (define-function void glArrayElement (int))
  (define-function void glBegin (int))
  (define-function void glBindTexture (int int))
  (define-function void glBitmap (int int   float float float int))
  (define-function void glBlendFunc (int int))
  (define-function void glCallList (int))
  ;;(define-function void glCallLists (int int const void *lists))
  ;;(define-function void glClear (GLbitfield mask))
  (define-function void glClearAccum (float float float float))
  (define-function void glClearColor (float float float float))
  (define-function void glClearDepth (double))
  (define-function void glClearIndex (float))
  (define-function void glClearStencil (int))
  (define-function void glClipPlane (int double))
  (define-function void glColor3b (int int int))
  (define-function void glColor3bv (int))
  (define-function void glColor3d (double double double))
  (define-function void glColor3dv (double))
  (define-function void glColor3f (float float float))
  (define-function void glColor3fv (float))
  (define-function void glColor3i (int int int))
  (define-function void glColor3iv (int))
  (define-function void glColor3s (int int int))
  (define-function void glColor3sv (int))
  (define-function void glColor3ub (int int int))
  (define-function void glColor3ubv (int))
  (define-function void glColor3ui (int int int))
  (define-function void glColor3uiv (int))
  (define-function void glColor3us (int int int))
  (define-function void glColor3usv (int))
  (define-function void glColor4b (int int int int))
  (define-function void glColor4bv (int))
  (define-function void glColor4d (double double double double))
  (define-function void glColor4dv (double))
  (define-function void glColor4f (float float float float))
  (define-function void glColor4fv (float))
  (define-function void glColor4i (int int int int))
  (define-function void glColor4iv (int))
  (define-function void glColor4s (int int int int))
  (define-function void glColor4sv (int))
  (define-function void glColor4ub (int int int int))
  (define-function void glColor4ubv (int))
  (define-function void glColor4ui (int int int int))
  (define-function void glColor4uiv (int))
  (define-function void glColor4us (int int int int))
  (define-function void glColor4usv (int))
  (define-function void glColorMask (int int int int))
  (define-function void glColorMaterial (int int))
  ;; (define-function void glColorPointer (int int int const void *pointer))
  (define-function void glCopyPixels (int int int int int))
  (define-function void glCopyTexImage1D (int int int int int int int))
  (define-function void glCopyTexImage2D (int int int int int int int int))
  (define-function void glCopyTexSubImage1D (int int int int int int))
  (define-function void glCopyTexSubImage2D (int int int int int int int int))
  (define-function void glCullFace (int))
  (define-function void glDeleteLists (int int))
  ;;(define-function void glDeleteTextures (int const GLuint *textures))
  (define-function void glDepthFunc (int))
  (define-function void glDepthMask (GLboolean flag))
  (define-function void glDepthRange (double double))
  (define-function void glDisable (int))
  (define-function void glDisableClientState (int))
  (define-function void glDrawArrays (int int int))
  (define-function void glDrawBuffer (int))
  ;;(define-function void glDrawElements (int int int const void *indices))
  ;;(define-function void glDrawPixels (int int int int const void *pixels))
  (define-function void glEdgeFlag (GLboolean flag))
  ;;(define-function void glEdgeFlagPointer (int const void *pointer))
  ;;(define-function void glEdgeFlagv (const GLboolean *flag))
  (define-function void glEnable (int))
  (define-function void glEnableClientState (int))
  (define-function void glEnd (void))
  (define-function void glEndList (void))
  (define-function void glEvalCoord1d (double))
  (define-function void glEvalCoord1dv (double))
  (define-function void glEvalCoord1f (float))
  (define-function void glEvalCoord1fv (float))
  (define-function void glEvalCoord2d (double double))
  (define-function void glEvalCoord2dv (double))
  (define-function void glEvalCoord2f (float float))
  (define-function void glEvalCoord2fv (float))
  (define-function void glEvalMesh1 (int int int))
  (define-function void glEvalMesh2 (int int int int int))
  (define-function void glEvalPoint1 (int))
  (define-function void glEvalPoint2 (int int))
  (define-function void glFeedbackBuffer (int int float))
  (define-function void glFinish (void))
  (define-function void glFlush (void))
  (define-function void glFogf (int float))
  (define-function void glFogfv (int float))
  (define-function void glFogi (int int))
  ;; (define-function void glFogiv (int const GLint *params))
  (define-function void glFrontFace (int))
  (define-function void glFrustum (double double double double double double))
  (define-function  GLAPIENTRY glGenLists (int))
  ;; (define-function void glGenTextures (int GLuint *textures))
  ;; (define-function void glGetBooleanv (int GLboolean *params))
  (define-function void glGetClipPlane (int double))
  (define-function void glGetDoublev (int double))
  ;;(define-function   glGetError (void))
  (define-function void glGetFloatv (int float))
  ;;(define-function void glGetIntegerv (int GLint *params))
  (define-function void glGetLightfv (int int float))
  ;;(define-function void glGetLightiv (int int GLint *params))
  (define-function void glGetMapdv (int int double))
  (define-function void glGetMapfv (int int float))
  ;;(define-function void glGetMapiv (int int GLint *v))
  (define-function void glGetMaterialfv (int int float))
  ;;(define-function void glGetMaterialiv (int int GLint *params))
  (define-function void glGetPixelMapfv (int float))
  ;;(define-function void glGetPixelMapuiv (int GLuint *values))
  (define-function void glGetPixelMapusv (int int))
  ;;(define-function void glGetPointerv (int void* *params))
  (define-function void glGetPolygonStipple (int))
  (define-function int glGetString (int))
  (define-function void glGetTexEnvfv (int int float))
  (define-function void glGetTexEnviv (int int int))
  (define-function void glGetTexGendv (int int double))
  (define-function void glGetTexGenfv (int int float))
  (define-function void glGetTexGeniv (int int int))
  ;;(define-function void glGetTexImage (int int int int void *pixels))
  (define-function void glGetTexLevelParameterfv (int int int float))
  ;;(define-function void glGetTexLevelParameteriv (int int int GLint *params))
  (define-function void glGetTexParameterfv (int int float))
  ;;(define-function void glGetTexParameteriv (int int GLint *params))
  (define-function void glHint (int int))
  (define-function void glIndexMask (int))
  ;;(define-function void glIndexPointer (int int const void *pointer))
  (define-function void glIndexd (double))
  (define-function void glIndexdv (double))
  (define-function void glIndexf (float))
  (define-function void glIndexfv (float))
  (define-function void glIndexi (int))
  (define-function void glIndexiv (int))
  (define-function void glIndexs (int))
  (define-function void glIndexsv (int))
  (define-function void glIndexub (int))
  (define-function void glIndexubv (int))
  (define-function void glInitNames (void))
  ;;(define-function void glInterleavedArrays (int int const void *pointer))
  (define-function  GLAPIENTRY glIsEnabled (int))
  (define-function  GLAPIENTRY glIsList (int))
  (define-function  GLAPIENTRY glIsTexture (int))
  (define-function void glLightModelf (int float))
  (define-function void glLightModelfv (int float))
  (define-function void glLightModeli (int int))
  (define-function void glLightModeliv (int int))
  (define-function void glLightf (int int float))
  (define-function void glLightfv (int int float))
  (define-function void glLighti (int int int))
  (define-function void glLightiv (int int int))
  (define-function void glLineStipple (int int))
  (define-function void glLineWidth (float))
  (define-function void glListBase (int))
  (define-function void glLoadIdentity (void))
  (define-function void glLoadMatrixd (double))
  (define-function void glLoadMatrixf (float))
  (define-function void glLoadName (int))
  (define-function void glLogicOp (int))
  (define-function void glMap1d (int double double int int double))
  (define-function void glMap1f (int float float int int float))
  (define-function void glMap2d (int double double int int double double int int double))
  (define-function void glMap2f (int float float int int float float int int float))
  (define-function void glMapGrid1d (int double double))
  (define-function void glMapGrid1f (int float float))
  (define-function void glMapGrid2d (int double double int double double))
  (define-function void glMapGrid2f (int float float int float float))
  (define-function void glMaterialf (int int float))
  (define-function void glMaterialfv (int int float))
  (define-function void glMateriali (int int int))
  (define-function void glMaterialiv (int int int))
  (define-function void glMatrixMode (int))
  (define-function void glMultMatrixd (double))
  (define-function void glMultMatrixf (float))
  (define-function void glNewList (int int))
  (define-function void glNormal3b (int int int))
  (define-function void glNormal3bv (int))
  (define-function void glNormal3d (double double double))
  (define-function void glNormal3dv (double))
  (define-function void glNormal3f (float float float))
  (define-function void glNormal3fv (float))
  (define-function void glNormal3i (int int int))
  (define-function void glNormal3iv (int))
  (define-function void glNormal3s (int int int))
  (define-function void glNormal3sv (int))
  ;;(define-function void glNormalPointer (int int const void *pointer))
  (define-function void glOrtho (double double double double double double))
  (define-function void glPassThrough (float))
  (define-function void glPixelMapfv (int int float))
  (define-function void glPixelMapuiv (int int intalues))
  (define-function void glPixelMapusv (int int int))
  (define-function void glPixelStoref (int float))
  (define-function void glPixelStorei (int int))
  (define-function void glPixelTransferf (int float))
  (define-function void glPixelTransferi (int int))
  (define-function void glPixelZoom (float float))
  (define-function void glPointSize (float))
  (define-function void glPolygonMode (int int))
  (define-function void glPolygonOffset (float float))
  (define-function void glPolygonStipple (int))
  (define-function void glPopAttrib (void))
  (define-function void glPopClientAttrib (void))
  (define-function void glPopMatrix (void))
  (define-function void glPopName (void))
  (define-function void glPrioritizeTextures (int int float))
  (define-function void glPushAttrib (GLbitfield mask))
  (define-function void glPushClientAttrib (GLbitfield mask))
  (define-function void glPushMatrix (void))
  (define-function void glPushName (int))
  (define-function void glRasterPos2d (double double))
  (define-function void glRasterPos2dv (double))
  (define-function void glRasterPos2f (float float))
  (define-function void glRasterPos2fv (float))
  (define-function void glRasterPos2i (int int))
  (define-function void glRasterPos2iv (int))
  (define-function void glRasterPos2s (int int))
  (define-function void glRasterPos2sv (int))
  (define-function void glRasterPos3d (double double double))
  (define-function void glRasterPos3dv (double))
  (define-function void glRasterPos3f (float float float))
  (define-function void glRasterPos3fv (float))
  (define-function void glRasterPos3i (int int int))
  (define-function void glRasterPos3iv (int))
  (define-function void glRasterPos3s (int int int))
  (define-function void glRasterPos3sv (int))
  (define-function void glRasterPos4d (double double double double))
  (define-function void glRasterPos4dv (double))
  (define-function void glRasterPos4f (float float float float))
  (define-function void glRasterPos4fv (float))
  (define-function void glRasterPos4i (int int int int))
  (define-function void glRasterPos4iv (int))
  (define-function void glRasterPos4s (int int int int))
  (define-function void glRasterPos4sv (int))
  (define-function void glReadBuffer (int))
  ;;(define-function void glReadPixels (int int int int int int void *pixels))
  (define-function void glRectd (double double double double))
  (define-function void glRectdv (double double))
  (define-function void glRectf (float float float float))
  (define-function void glRectfv (float float))
  (define-function void glRecti (int int int int))
  (define-function void glRectiv (int int))
  (define-function void glRects (int int int int))
  (define-function void glRectsv (int int))
  (define-function  GLAPIENTRY glRenderMode (int))
  (define-function void glRotated (double double double double))
  (define-function void glRotatef (float float float float))
  (define-function void glScaled (double double double))
  (define-function void glScalef (float float float))
  (define-function void glScissor (int int int int))
  (define-function void glSelectBuffer (int int))
  (define-function void glShadeModel (int))
  (define-function void glStencilFunc (int int int))
  (define-function void glStencilMask (int))
  (define-function void glStencilOp (int int int))
  (define-function void glTexCoord1d (double))
  (define-function void glTexCoord1dv (double))
  (define-function void glTexCoord1f (float))
  (define-function void glTexCoord1fv (float))
  (define-function void glTexCoord1i (int))
  (define-function void glTexCoord1iv (int))
  (define-function void glTexCoord1s (int))
  (define-function void glTexCoord1sv (int))
  (define-function void glTexCoord2d (double double))
  (define-function void glTexCoord2dv (double))
  (define-function void glTexCoord2f (float float))
  (define-function void glTexCoord2fv (float))
  (define-function void glTexCoord2i (int int))
  (define-function void glTexCoord2iv (int))
  (define-function void glTexCoord2s (int int))
  (define-function void glTexCoord2sv (int))
  (define-function void glTexCoord3d (double double double))
  (define-function void glTexCoord3dv (double))
  (define-function void glTexCoord3f (float float float))
  (define-function void glTexCoord3fv (float))
  (define-function void glTexCoord3i (int int int))
  (define-function void glTexCoord3iv (int))
  (define-function void glTexCoord3s (int int int))
  (define-function void glTexCoord3sv (int))
  (define-function void glTexCoord4d (double double double double))
  (define-function void glTexCoord4dv (double))
  (define-function void glTexCoord4f (float float float float))
  (define-function void glTexCoord4fv (float))
  (define-function void glTexCoord4i (int int int int))
  (define-function void glTexCoord4iv (int))
  (define-function void glTexCoord4s (int int int int))
  (define-function void glTexCoord4sv (int))
  ;;(define-function void glTexCoordPointer (int int int const void *pointer))
  (define-function void glTexEnvf (int int float))
  (define-function void glTexEnvfv (int int float))
  (define-function void glTexEnvi (int int int))
  (define-function void glTexEnviv (int int int))
  (define-function void glTexGend (int int double))
  (define-function void glTexGendv (int int double))
  (define-function void glTexGenf (int int float))
  (define-function void glTexGenfv (int int float))
  (define-function void glTexGeni (int int int))
  (define-function void glTexGeniv (int int int))
  ;;(define-function void glTexImage1D (int int int int int int int const void *pixels))
  ;;(define-function void glTexImage2D (int int int int int int int int const void *pixels))
  (define-function void glTexParameterf (int int float))
  (define-function void glTexParameterfv (int int float))
  (define-function void glTexParameteri (int int int))
  ;;(define-function void glTexParameteriv (int int const GLint *params))
  ;;(define-function void glTexSubImage1D (int int int int int int const void *pixels))
  ;;(define-function void glTexSubImage2D (int int int int int int int int const void *pixels))
  (define-function void glTranslated (double double double))
  (define-function void glTranslatef (float float float))
  (define-function void glVertex2d (double double))
  (define-function void glVertex2dv (double))
  (define-function void glVertex2f (float float))
  (define-function void glVertex2fv (float))
  (define-function void glVertex2i (int int))
  (define-function void glVertex2iv (int))
  (define-function void glVertex2s (int int))
  (define-function void glVertex2sv (int))
  (define-function void glVertex3d (double double double))
  (define-function void glVertex3dv (double))
  (define-function void glVertex3f (float float float))
  (define-function void glVertex3fv (float))
  (define-function void glVertex3i (int int int))
  (define-function void glVertex3iv (int))
  (define-function void glVertex3s (int int int))
  (define-function void glVertex3sv (int))
  (define-function void glVertex4d (double double double double))
  (define-function void glVertex4dv (double))
  (define-function void glVertex4f (float float float float))
  (define-function void glVertex4fv (float))
  (define-function void glVertex4i (int int int int))
  (define-function void glVertex4iv (int))
  (define-function void glVertex4s (int int int int))
  (define-function void glVertex4sv (int))
  ;;(define-function void glVertexPointer (int int int const void *pointer))
  (define-function void glViewport (int int int int))


  ;; GL_ARB_Imaging
  (define GL_ARB_imaging 1)

  (define GL_CONSTANT_COLOR #x8001)
  (define GL_ONE_MINUS_CONSTANT_COLOR #x8002)
  (define GL_CONSTANT_ALPHA #x8003)
  (define GL_ONE_MINUS_CONSTANT_ALPHA #x8004)
  (define GL_BLEND_COLOR #x8005)
  (define GL_FUNC_ADD #x8006)
  (define GL_MIN #x8007)
  (define GL_MAX #x8008)
  (define GL_BLEND_EQUATION #x8009)
  (define GL_FUNC_SUBTRACT #x800A)
  (define GL_FUNC_REVERSE_SUBTRACT #x800B)
  (define GL_CONVOLUTION_1D #x8010)
  (define GL_CONVOLUTION_2D #x8011)
  (define GL_SEPARABLE_2D #x8012)
  (define GL_CONVOLUTION_BORDER_MODE #x8013)
  (define GL_CONVOLUTION_FILTER_SCALE #x8014)
  (define GL_CONVOLUTION_FILTER_BIAS #x8015)
  (define GL_REDUCE #x8016)
  (define GL_CONVOLUTION_FORMAT #x8017)
  (define GL_CONVOLUTION_WIDTH #x8018)
  (define GL_CONVOLUTION_HEIGHT #x8019)
  (define GL_MAX_CONVOLUTION_WIDTH #x801A)
  (define GL_MAX_CONVOLUTION_HEIGHT #x801B)
  (define GL_POST_CONVOLUTION_RED_SCALE #x801C)
  (define GL_POST_CONVOLUTION_GREEN_SCALE #x801D)
  (define GL_POST_CONVOLUTION_BLUE_SCALE #x801E)
  (define GL_POST_CONVOLUTION_ALPHA_SCALE #x801F)
  (define GL_POST_CONVOLUTION_RED_BIAS #x8020)
  (define GL_POST_CONVOLUTION_GREEN_BIAS #x8021)
  (define GL_POST_CONVOLUTION_BLUE_BIAS #x8022)
  (define GL_POST_CONVOLUTION_ALPHA_BIAS #x8023)
  (define GL_HISTOGRAM #x8024)
  (define GL_PROXY_HISTOGRAM #x8025)
  (define GL_HISTOGRAM_WIDTH #x8026)
  (define GL_HISTOGRAM_FORMAT #x8027)
  (define GL_HISTOGRAM_RED_SIZE #x8028)
  (define GL_HISTOGRAM_GREEN_SIZE #x8029)
  (define GL_HISTOGRAM_BLUE_SIZE #x802A)
  (define GL_HISTOGRAM_ALPHA_SIZE #x802B)
  (define GL_HISTOGRAM_LUMINANCE_SIZE #x802C)
  (define GL_HISTOGRAM_SINK #x802D)
  (define GL_MINMAX #x802E)
  (define GL_MINMAX_FORMAT #x802F)
  (define GL_MINMAX_SINK #x8030)
  (define GL_TABLE_TOO_LARGE #x8031)
  (define GL_COLOR_MATRIX #x80B1)
  (define GL_COLOR_MATRIX_STACK_DEPTH #x80B2)
  (define GL_MAX_COLOR_MATRIX_STACK_DEPTH #x80B3)
  (define GL_POST_COLOR_MATRIX_RED_SCALE #x80B4)
  (define GL_POST_COLOR_MATRIX_GREEN_SCALE #x80B5)
  (define GL_POST_COLOR_MATRIX_BLUE_SCALE #x80B6)
  (define GL_POST_COLOR_MATRIX_ALPHA_SCALE #x80B7)
  (define GL_POST_COLOR_MATRIX_RED_BIAS #x80B8)
  (define GL_POST_COLOR_MATRIX_GREEN_BIAS #x80B9)
  (define GL_POST_COLOR_MATRIX_BLUE_BIAS #x80BA)
  (define GL_POST_COLOR_MATRIX_ALPHA_BIAS #x80BB)
  (define GL_COLOR_TABLE #x80D0)
  (define GL_POST_CONVOLUTION_COLOR_TABLE #x80D1)
  (define GL_POST_COLOR_MATRIX_COLOR_TABLE #x80D2)
  (define GL_PROXY_COLOR_TABLE #x80D3)
  (define GL_PROXY_POST_CONVOLUTION_COLOR_TABLE #x80D4)
  (define GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE #x80D5)
  (define GL_COLOR_TABLE_SCALE #x80D6)
  (define GL_COLOR_TABLE_BIAS #x80D7)
  (define GL_COLOR_TABLE_FORMAT #x80D8)
  (define GL_COLOR_TABLE_WIDTH #x80D9)
  (define GL_COLOR_TABLE_RED_SIZE #x80DA)
  (define GL_COLOR_TABLE_GREEN_SIZE #x80DB)
  (define GL_COLOR_TABLE_BLUE_SIZE #x80DC)
  (define GL_COLOR_TABLE_ALPHA_SIZE #x80DD)
  (define GL_COLOR_TABLE_LUMINANCE_SIZE #x80DE)
  (define GL_COLOR_TABLE_INTENSITY_SIZE #x80DF)
  (define GL_IGNORE_BORDER #x8150)
  (define GL_CONSTANT_BORDER #x8151)
  (define GL_WRAP_BORDER #x8152)
  (define GL_REPLICATE_BORDER #x8153)
  (define GL_CONVOLUTION_BORDER_COLOR #x8154)

  ;; GL_VERSION_1_2
  

  ;; GL_VERSION_2_0
  (define GL_VERSION_2_0 1)
  
  (define GL_BLEND_EQUATION_RGB GL_BLEND_EQUATION)
  (define GL_VERTEX_ATTRIB_ARRAY_ENABLED #x8622)
  (define GL_VERTEX_ATTRIB_ARRAY_SIZE #x8623)
  (define GL_VERTEX_ATTRIB_ARRAY_STRIDE #x8624)
  (define GL_VERTEX_ATTRIB_ARRAY_TYPE #x8625)
  (define GL_CURRENT_VERTEX_ATTRIB #x8626)
  (define GL_VERTEX_PROGRAM_POINT_SIZE #x8642)
  (define GL_VERTEX_PROGRAM_TWO_SIDE #x8643)
  (define GL_VERTEX_ATTRIB_ARRAY_POINTER #x8645)
  (define GL_STENCIL_BACK_FUNC #x8800)
  (define GL_STENCIL_BACK_FAIL #x8801)
  (define GL_STENCIL_BACK_PASS_DEPTH_FAIL #x8802)
  (define GL_STENCIL_BACK_PASS_DEPTH_PASS #x8803)
  (define GL_MAX_DRAW_BUFFERS #x8824)
  (define GL_DRAW_BUFFER0 #x8825)
  (define GL_DRAW_BUFFER1 #x8826)
  (define GL_DRAW_BUFFER2 #x8827)
  (define GL_DRAW_BUFFER3 #x8828)
  (define GL_DRAW_BUFFER4 #x8829)
  (define GL_DRAW_BUFFER5 #x882A)
  (define GL_DRAW_BUFFER6 #x882B)
  (define GL_DRAW_BUFFER7 #x882C)
  (define GL_DRAW_BUFFER8 #x882D)
  (define GL_DRAW_BUFFER9 #x882E)
  (define GL_DRAW_BUFFER10 #x882F)
  (define GL_DRAW_BUFFER11 #x8830)
  (define GL_DRAW_BUFFER12 #x8831)
  (define GL_DRAW_BUFFER13 #x8832)
  (define GL_DRAW_BUFFER14 #x8833)
  (define GL_DRAW_BUFFER15 #x8834)
  (define GL_BLEND_EQUATION_ALPHA #x883D)
  (define GL_POINT_SPRITE #x8861)
  (define GL_COORD_REPLACE #x8862)
  (define GL_MAX_VERTEX_ATTRIBS #x8869)
  (define GL_VERTEX_ATTRIB_ARRAY_NORMALIZED #x886A)
  (define GL_MAX_TEXTURE_COORDS #x8871)
  (define GL_MAX_TEXTURE_IMAGE_UNITS #x8872)
  (define GL_FRAGMENT_SHADER #x8B30)
  (define GL_VERTEX_SHADER #x8B31)
  (define GL_MAX_FRAGMENT_UNIFORM_COMPONENTS #x8B49)
  (define GL_MAX_VERTEX_UNIFORM_COMPONENTS #x8B4A)
  (define GL_MAX_VARYING_FLOATS #x8B4B)
  (define GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS #x8B4C)
  (define GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS #x8B4D)
  (define GL_SHADER_TYPE #x8B4F)
  (define GL_FLOAT_VEC2 #x8B50)
  (define GL_FLOAT_VEC3 #x8B51)
  (define GL_FLOAT_VEC4 #x8B52)
  (define GL_INT_VEC2 #x8B53)
  (define GL_INT_VEC3 #x8B54)
  (define GL_INT_VEC4 #x8B55)
  (define GL_BOOL #x8B56)
  (define GL_BOOL_VEC2 #x8B57)
  (define GL_BOOL_VEC3 #x8B58)
  (define GL_BOOL_VEC4 #x8B59)
  (define GL_FLOAT_MAT2 #x8B5A)
  (define GL_FLOAT_MAT3 #x8B5B)
  (define GL_FLOAT_MAT4 #x8B5C)
  (define GL_SAMPLER_1D #x8B5D)
  (define GL_SAMPLER_2D #x8B5E)
  (define GL_SAMPLER_3D #x8B5F)
  (define GL_SAMPLER_CUBE #x8B60)
  (define GL_SAMPLER_1D_SHADOW #x8B61)
  (define GL_SAMPLER_2D_SHADOW #x8B62)
  (define GL_DELETE_STATUS #x8B80)
  (define GL_COMPILE_STATUS #x8B81)
  (define GL_LINK_STATUS #x8B82)
  (define GL_VALIDATE_STATUS #x8B83)
  (define GL_INFO_LOG_LENGTH #x8B84)
  (define GL_ATTACHED_SHADERS #x8B85)
  (define GL_ACTIVE_UNIFORMS #x8B86)
  (define GL_ACTIVE_UNIFORM_MAX_LENGTH #x8B87)
  (define GL_SHADER_SOURCE_LENGTH #x8B88)
  (define GL_ACTIVE_ATTRIBUTES #x8B89)
  (define GL_ACTIVE_ATTRIBUTE_MAX_LENGTH #x8B8A)
  (define GL_FRAGMENT_SHADER_DERIVATIVE_HINT #x8B8B)
  (define GL_SHADING_LANGUAGE_VERSION #x8B8C)
  (define GL_CURRENT_PROGRAM #x8B8D)
  (define GL_POINT_SPRITE_COORD_ORIGIN #x8CA0)
  (define GL_LOWER_LEFT #x8CA1)
  (define GL_UPPER_LEFT #x8CA2)
  (define GL_STENCIL_BACK_REF #x8CA3)
  (define GL_STENCIL_BACK_VALUE_MASK #x8CA4)
  (define GL_STENCIL_BACK_WRITEMASK #x8CA5)

  (define-function void glAttachShader (int))
  (define-function void glBindAttribLocation (int int string))
  (define-function void glBlendEquationSeparate (int int))
  (define-function void glCompileShader (int))
  (define-function int glCreateProgram ())
  (define-function int glCreateShader (int))
  ;; (define-function glDeleteProgram GLEW_GET_FUN(__glewDeleteProgram))
  ;; (define-function glDeleteShader GLEW_GET_FUN(__glewDeleteShader))
  ;; (define-function glDetachShader GLEW_GET_FUN(__glewDetachShader))
  ;; (define-function glDisableVertexAttribArray GLEW_GET_FUN(__glewDisableVertexAttribArray))
  ;; (define-function glDrawBuffers GLEW_GET_FUN(__glewDrawBuffers))
  ;; (define-function glEnableVertexAttribArray GLEW_GET_FUN(__glewEnableVertexAttribArray))
  ;; (define-function glGetActiveAttrib GLEW_GET_FUN(__glewGetActiveAttrib))
  ;; (define-function glGetActiveUniform GLEW_GET_FUN(__glewGetActiveUniform))
  ;; (define-function glGetAttachedShaders GLEW_GET_FUN(__glewGetAttachedShaders))
  ;; (define-function glGetAttribLocation GLEW_GET_FUN(__glewGetAttribLocation))
  ;; (define-function glGetProgramInfoLog GLEW_GET_FUN(__glewGetProgramInfoLog))
  ;; (define-function glGetProgramiv GLEW_GET_FUN(__glewGetProgramiv))
  ;; (define-function glGetShaderInfoLog GLEW_GET_FUN(__glewGetShaderInfoLog))
  ;; (define-function glGetShaderSource GLEW_GET_FUN(__glewGetShaderSource))
  ;; (define-function glGetShaderiv GLEW_GET_FUN(__glewGetShaderiv))
  ;; (define-function glGetUniformLocation GLEW_GET_FUN(__glewGetUniformLocation))
  ;; (define-function glGetUniformfv GLEW_GET_FUN(__glewGetUniformfv))
  ;; (define-function glGetUniformiv GLEW_GET_FUN(__glewGetUniformiv))
  ;; (define-function glGetVertexAttribPointerv GLEW_GET_FUN(__glewGetVertexAttribPointerv))
  ;; (define-function glGetVertexAttribdv GLEW_GET_FUN(__glewGetVertexAttribdv))
  ;; (define-function glGetVertexAttribfv GLEW_GET_FUN(__glewGetVertexAttribfv))
  ;; (define-function glGetVertexAttribiv GLEW_GET_FUN(__glewGetVertexAttribiv))
  ;; (define-function glIsProgram GLEW_GET_FUN(__glewIsProgram))
  ;; (define-function glIsShader GLEW_GET_FUN(__glewIsShader))
  ;; (define-function glLinkProgram GLEW_GET_FUN(__glewLinkProgram))
  ;; (define-function glShaderSource GLEW_GET_FUN(__glewShaderSource))
  ;; (define-function glStencilFuncSeparate GLEW_GET_FUN(__glewStencilFuncSeparate))
  ;; (define-function glStencilMaskSeparate GLEW_GET_FUN(__glewStencilMaskSeparate))
  ;; (define-function glStencilOpSeparate GLEW_GET_FUN(__glewStencilOpSeparate))
  ;; (define-function glUniform1f GLEW_GET_FUN(__glewUniform1f))
  ;; (define-function glUniform1fv GLEW_GET_FUN(__glewUniform1fv))
  ;; (define-function glUniform1i GLEW_GET_FUN(__glewUniform1i))
  ;; (define-function glUniform1iv GLEW_GET_FUN(__glewUniform1iv))
  ;; (define-function glUniform2f GLEW_GET_FUN(__glewUniform2f))
  ;; (define-function glUniform2fv GLEW_GET_FUN(__glewUniform2fv))
  ;; (define-function glUniform2i GLEW_GET_FUN(__glewUniform2i))
  ;; (define-function glUniform2iv GLEW_GET_FUN(__glewUniform2iv))
  ;; (define-function glUniform3f GLEW_GET_FUN(__glewUniform3f))
  ;; (define-function glUniform3fv GLEW_GET_FUN(__glewUniform3fv))
  ;; (define-function glUniform3i GLEW_GET_FUN(__glewUniform3i))
  ;; (define-function glUniform3iv GLEW_GET_FUN(__glewUniform3iv))
  ;; (define-function glUniform4f GLEW_GET_FUN(__glewUniform4f))
  ;; (define-function glUniform4fv GLEW_GET_FUN(__glewUniform4fv))
  ;; (define-function glUniform4i GLEW_GET_FUN(__glewUniform4i))
  ;; (define-function glUniform4iv GLEW_GET_FUN(__glewUniform4iv))
  ;; (define-function glUniformMatrix2fv GLEW_GET_FUN(__glewUniformMatrix2fv))
  ;; (define-function glUniformMatrix3fv GLEW_GET_FUN(__glewUniformMatrix3fv))
  ;; (define-function glUniformMatrix4fv GLEW_GET_FUN(__glewUniformMatrix4fv))
  ;; (define-function glUseProgram GLEW_GET_FUN(__glewUseProgram))
  ;; (define-function glValidateProgram GLEW_GET_FUN(__glewValidateProgram))
  ;; (define-function glVertexAttrib1d GLEW_GET_FUN(__glewVertexAttrib1d))
  ;; (define-function glVertexAttrib1dv GLEW_GET_FUN(__glewVertexAttrib1dv))
  ;; (define-function glVertexAttrib1f GLEW_GET_FUN(__glewVertexAttrib1f))
  ;; (define-function glVertexAttrib1fv GLEW_GET_FUN(__glewVertexAttrib1fv))
  ;; (define-function glVertexAttrib1s GLEW_GET_FUN(__glewVertexAttrib1s))
  ;; (define-function glVertexAttrib1sv GLEW_GET_FUN(__glewVertexAttrib1sv))
  ;; (define-function glVertexAttrib2d GLEW_GET_FUN(__glewVertexAttrib2d))
  ;; (define-function glVertexAttrib2dv GLEW_GET_FUN(__glewVertexAttrib2dv))
  ;; (define-function glVertexAttrib2f GLEW_GET_FUN(__glewVertexAttrib2f))
  ;; (define-function glVertexAttrib2fv GLEW_GET_FUN(__glewVertexAttrib2fv))
  ;; (define-function glVertexAttrib2s GLEW_GET_FUN(__glewVertexAttrib2s))
  ;; (define-function glVertexAttrib2sv GLEW_GET_FUN(__glewVertexAttrib2sv))
  ;; (define-function glVertexAttrib3d GLEW_GET_FUN(__glewVertexAttrib3d))
  ;; (define-function glVertexAttrib3dv GLEW_GET_FUN(__glewVertexAttrib3dv))
  ;; (define-function glVertexAttrib3f GLEW_GET_FUN(__glewVertexAttrib3f))
  ;; (define-function glVertexAttrib3fv GLEW_GET_FUN(__glewVertexAttrib3fv))
  ;; (define-function glVertexAttrib3s GLEW_GET_FUN(__glewVertexAttrib3s))
  ;; (define-function glVertexAttrib3sv GLEW_GET_FUN(__glewVertexAttrib3sv))
  ;; (define-function glVertexAttrib4Nbv GLEW_GET_FUN(__glewVertexAttrib4Nbv))
  ;; (define-function glVertexAttrib4Niv GLEW_GET_FUN(__glewVertexAttrib4Niv))
  ;; (define-function glVertexAttrib4Nsv GLEW_GET_FUN(__glewVertexAttrib4Nsv))
  ;; (define-function glVertexAttrib4Nub GLEW_GET_FUN(__glewVertexAttrib4Nub))
  ;; (define-function glVertexAttrib4Nubv GLEW_GET_FUN(__glewVertexAttrib4Nubv))
  ;; (define-function glVertexAttrib4Nuiv GLEW_GET_FUN(__glewVertexAttrib4Nuiv))
  ;; (define-function glVertexAttrib4Nusv GLEW_GET_FUN(__glewVertexAttrib4Nusv))
  ;; (define-function glVertexAttrib4bv GLEW_GET_FUN(__glewVertexAttrib4bv))
  ;; (define-function glVertexAttrib4d GLEW_GET_FUN(__glewVertexAttrib4d))
  ;; (define-function glVertexAttrib4dv GLEW_GET_FUN(__glewVertexAttrib4dv))
  ;; (define-function glVertexAttrib4f GLEW_GET_FUN(__glewVertexAttrib4f))
  ;; (define-function glVertexAttrib4fv GLEW_GET_FUN(__glewVertexAttrib4fv))
  ;; (define-function glVertexAttrib4iv GLEW_GET_FUN(__glewVertexAttrib4iv))
  ;; (define-function glVertexAttrib4s GLEW_GET_FUN(__glewVertexAttrib4s))
  ;; (define-function glVertexAttrib4sv GLEW_GET_FUN(__glewVertexAttrib4sv))
  ;; (define-function glVertexAttrib4ubv GLEW_GET_FUN(__glewVertexAttrib4ubv))
  ;; (define-function glVertexAttrib4uiv GLEW_GET_FUN(__glewVertexAttrib4uiv))
  ;; (define-function glVertexAttrib4usv GLEW_GET_FUN(__glewVertexAttrib4usv))
  ;; (define-function glVertexAttribPointer GLEW_GET_FUN(__glewVertexAttribPointer))


  

;;;; Error Codes
  (define GLEW_OK 0)
  (define GLEW_NO_ERROR 0)
  (define GLEW_ERROR_NO_GL_VERSION 1)  ;; missing GL version
  (define GLEW_ERROR_GL_VERSION_10_ONLY 2) ;; Need at least OpenGL 1.1
  (define GLEW_ERROR_GLX_VERSION_11_ONLY 3) ;; Need at least GLX 1.2

;;;: String Codes
  (define GLEW_VERSION 1)
  (define GLEW_VERSION_MAJOR 2)
  (define GLEW_VERSION_MINOR 3)
  (define GLEW_VERSION_MICRO 4)
  

  
  (define-function int glewInit ())
  (define-function string glewGetErrorString (int))
  (define-function int glewIsSupported (string)))
