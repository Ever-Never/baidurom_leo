.class public Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;
.super Landroid/widget/RelativeLayout;
.source "CameraWidget.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;
    }
.end annotation


# static fields
.field private static final AUTO_FOCUS_FINISH:I = 0x4

.field public static final CAMERA_WIDGET:Ljava/lang/String; = "camera_widget"

.field public static final CURR_CAMREA_ID:Ljava/lang/String; = "curr_camreaId"

.field public static final DELAY_MILLIS:I = 0x3e8

.field private static final FOCUSED:I = 0x0

.field private static final FOCUSED_FAILD:I = 0x1

.field public static final INIT_PHOTO:I = 0x1

.field private static final INVALIDATE_PREVIEW:I = 0x9

.field private static final ON_PAUSE:I = 0xa

.field private static final PHOTO_UPDATE:I = 0x6

.field private static final RESET_WORKING_FLAG:I = 0x8

.field public static final SAVE_COMPELET:I = 0x3

.field private static final STOP_CAMERA:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CameraWidget_tag"

.field public static final TIME_STOP_CAMERA:I = 0x15f90

.field private static final UPDATE_WORKING_STATE:I = 0x7


# instance fields
.field private currPhoto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private isCanUpdate:Z

.field private isRegist:Z

.field private mAutoFocusView:Landroid/widget/ImageView;

.field private mBumpScrollView:Landroid/widget/ScrollView;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraOrientation:I

.field private mCanShut:Z

.field private mCurrCameraId:I

.field private mDispalayPreviewSize:Landroid/hardware/Camera$Size;

.field private mEmptyPhoto:Landroid/view/View;

.field private mGotoGallery:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mLauncher:Lcom/baidu/launcher/app/Launcher;

.field private mOpenCamera:Landroid/widget/ImageView;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPhotoContainer:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

.field private mPhotoFileObserver:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;

.field private mPictureSize:Landroid/hardware/Camera$Size;

.field private mPreview:Landroid/view/TextureView;

.field private mPreviewContainer:Landroid/widget/FrameLayout;

.field private mPreviewRealHeight:I

.field private mPreviewRealWidth:I

.field private mRatio:F

.field private mScreen:I

.field private mScrollContainer:Landroid/view/View;

.field private mStopButton:Landroid/widget/ImageView;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSwitchCameraButton:Landroid/widget/ImageView;

.field private mTempImageView:Landroid/widget/ImageView;

.field private mTempImageViewRealWidth:I

.field private final mTimeEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;

.field private mToastView:Landroid/view/View;

.field private mTopView:Landroid/view/View;

.field private mWorkingDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingFlag:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 176
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCanShut:Z

    .line 76
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    .line 171
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->isCanUpdate:Z

    .line 731
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$7;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$7;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTimeEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCanShut:Z

    .line 76
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    .line 171
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->isCanUpdate:Z

    .line 731
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$7;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$7;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTimeEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCanShut:Z

    .line 76
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    .line 171
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->isCanUpdate:Z

    .line 731
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$7;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$7;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTimeEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    return-void
.end method

.method static synthetic access$002(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->currPhoto:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->isCanUpdate:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCamera()V

    return-void
.end method

.method static synthetic access$102(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->isCanUpdate:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageViewRealWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCanShut:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mBumpScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateTimeView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraOnMainThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updatePhotoContainer()V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateNewPhoto()V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mAutoFocusView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingFlag:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/view/TextureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreview:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPhotoContainer:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

    return-object v0
.end method

.method private getCameraId()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 315
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "camera_widget"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 316
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "curr_camreaId"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 317
    .local v0, currId:I
    return v0
.end method

.method private getMaxPictureSize(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, supportedPictureSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 362
    .local v1, result:Landroid/hardware/Camera$Size;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 363
    .local v2, size:Landroid/hardware/Camera$Size;
    if-nez v1, :cond_1

    .line 364
    move-object v1, v2

    .line 366
    :cond_1
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    if-ge v3, v4, :cond_0

    .line 367
    move-object v1, v2

    goto :goto_0

    .line 370
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_2
    return-object v1
.end method

.method private initCamera(I)Z
    .locals 9
    .parameter "cameraFace"

    .prologue
    .line 257
    const/4 v4, 0x0

    .line 258
    .local v4, result:Z
    const/4 v0, 0x0

    .line 259
    .local v0, cameraId:I
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 261
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateCameraCount()I

    move-result v3

    .line 263
    .local v3, numberOfCameras:I
    const-string v6, "CameraWidget_tag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "numberOfCameras = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 265
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 266
    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, p1, :cond_4

    .line 269
    :cond_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    if-eqz v6, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCamera()V

    .line 272
    :cond_1
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    .line 273
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCurrCameraId:I

    .line 274
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->saveCameraId()V

    .line 275
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    if-eqz v6, :cond_3

    .line 276
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 277
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreviewRealWidth:I

    .line 278
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreviewRealHeight:I

    .line 279
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateCameraSize()V

    .line 280
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPictureSize:Landroid/hardware/Camera$Size;

    .line 281
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    iget v7, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreviewRealWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mRatio:F

    .line 283
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    .line 284
    .local v5, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "continuous-picture"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 285
    .local v1, contains:Z
    if-eqz v1, :cond_2

    .line 286
    if-nez p1, :cond_5

    .line 287
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "continuous-picture"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 293
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 294
    const/4 v4, 0x1

    .line 296
    .end local v1           #contains:Z
    .end local v5           #supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return v4

    .line 264
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 289
    .restart local v1       #contains:Z
    .restart local v5       #supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "infinity"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized initPreview(Landroid/graphics/SurfaceTexture;)V
    .locals 8
    .parameter "surfaceTexture"

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 402
    .local v2, transform:Landroid/graphics/Matrix;
    const-string v3, "CameraWidget_tag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pictureSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPreviewRealWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreviewRealWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPreviewRealHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreviewRealHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v3}, Lcom/baidu/launcher/app/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 406
    .local v1, rotation:I
    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCurrCameraId:I

    invoke-static {v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->getDisplayOrientation(II)I

    move-result v0

    .line 407
    .local v0, displayOrientation:I
    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCurrCameraId:I

    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->getCameraOrientation(I)I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCameraOrientation:I

    .line 408
    const-string v3, "CameraWidget_tag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cameraOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCameraOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 410
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreview:Landroid/view/TextureView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mDispalayPreviewSize:Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mDispalayPreviewSize:Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->width:I

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mDispalayPreviewSize:Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :try_start_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v3, v2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 420
    const-string v3, "ST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSurfaceTextureAvailable(): Transform: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 401
    .end local v0           #displayOrientation:I
    .end local v1           #rotation:I
    .end local v2           #transform:Landroid/graphics/Matrix;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 416
    .restart local v0       #displayOrientation:I
    .restart local v1       #rotation:I
    .restart local v2       #transform:Landroid/graphics/Matrix;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initWorkingImages()V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingDrawables:Ljava/util/ArrayList;

    .line 225
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingDrawables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingDrawables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingDrawables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingDrawables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageViewRealWidth:I

    .line 231
    return-void
.end method

.method private declared-synchronized openCamera(I)Landroid/hardware/Camera;
    .locals 3
    .parameter "cameraId"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 375
    monitor-enter p0

    const/4 v0, 0x0

    .line 377
    .local v0, camera:Landroid/hardware/Camera;
    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 382
    :try_start_1
    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 384
    :goto_0
    monitor-exit p0

    return-object v2

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 375
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private registPhotoObserver()V
    .locals 4

    .prologue
    .line 234
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPhotoFileObserver:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;

    .line 235
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPhotoFileObserver:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 236
    return-void
.end method

.method private saveCameraId()V
    .locals 4

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_widget"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 311
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "curr_camreaId"

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCurrCameraId:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    return-void
.end method

.method private showToast()V
    .locals 6

    .prologue
    .line 554
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mToastView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 555
    .local v0, toastAlpha:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 556
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 569
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 570
    return-void
.end method

.method private startPhotoAnim(Landroid/graphics/Bitmap;)V
    .locals 25
    .parameter "imageBitmap"

    .prologue
    .line 604
    const-string v18, "CameraWidget_tag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "imageBitmap.height() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/high16 v19, 0x7f0b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 606
    .local v6, offset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageViewRealWidth:I

    move/from16 v18, v0

    sub-int v10, v18, v6

    .line 607
    .local v10, scaleWidth:I
    const/16 v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v10, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 608
    .local v7, scale:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0003

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 609
    .local v15, tempTranslationY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 614
    .local v16, tempViewRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 615
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 616
    .local v13, scollRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mScrollContainer:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPhotoContainer:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->getFirstViewRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 618
    .local v5, firstViewRect:Landroid/graphics/Rect;
    const-string v18, "CameraWidget_tag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mtempimageview = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string v19, "translationY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v22

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 621
    .local v17, translationY:Landroid/animation/ObjectAnimator;
    const/16 v3, 0x15e

    .line 622
    .local v3, durationTranslationY:I
    const/16 v4, 0x258

    .line 623
    .local v4, durationXyAnim:I
    int-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 625
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageViewRealWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v9, v18, v19

    .line 626
    .local v9, scaleValue:F
    const-string v18, "ScaleX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v9, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 627
    .local v11, scaleX:Landroid/animation/PropertyValuesHolder;
    const-string v18, "scaleY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v9, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 628
    .local v12, scaleY:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    const/16 v20, 0x1

    aput-object v12, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 629
    .local v8, scaleAnim:Landroid/animation/ObjectAnimator;
    const/16 v2, 0xc8

    .line 630
    .local v2, durationScale:I
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 632
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 633
    .local v14, set:Landroid/animation/AnimatorSet;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 634
    new-instance v18, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v15}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;II)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    .line 667
    const/16 v18, 0x41a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->startWorkingAnim(I)V

    .line 668
    return-void
.end method

.method private startWorkingAnim(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 671
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$6;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$6;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;I)V

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$6;->start()V

    .line 696
    return-void
.end method

.method private declared-synchronized stopCamera()V
    .locals 1

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 536
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCanShut:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :cond_0
    monitor-exit p0

    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopCameraInOtherThread()V
    .locals 1

    .prologue
    .line 525
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$2;->start()V

    .line 531
    return-void
.end method

.method private stopCameraOnMainThread()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 847
    return-void
.end method

.method private takePicture()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCanShut:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0, p0, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCanShut:Z

    .line 522
    :cond_0
    return-void
.end method

.method private unRegistPhotoObsever()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPhotoFileObserver:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPhotoFileObserver:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 242
    :cond_0
    return-void
.end method

.method private updateCameraAndPreview(I)Z
    .locals 5
    .parameter "cameraId"

    .prologue
    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, result:Z
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->initCamera(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->showToast()V

    .line 546
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->initPreview(Landroid/graphics/SurfaceTexture;)V

    .line 547
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 548
    const/4 v0, 0x1

    .line 550
    :cond_0
    return v0
.end method

.method private updateCameraCount()I
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 301
    .local v0, numberOfCameras:I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mSwitchCameraButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :goto_0
    return v0

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mSwitchCameraButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCameraSize()V
    .locals 13

    .prologue
    const v11, 0x1e8480

    .line 321
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    .line 322
    .local v6, supportedPictureSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    .line 323
    .local v7, supportedPreviewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v3, 0x0

    .line 324
    .local v3, pictrueSize:Landroid/hardware/Camera$Size;
    const/4 v4, 0x0

    .line 325
    .local v4, previewSize:Landroid/hardware/Camera$Size;
    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getMaxPictureSize(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 326
    .local v1, maxPictureSize:Landroid/hardware/Camera$Size;
    iget v8, v1, Landroid/hardware/Camera$Size;->width:I

    iget v9, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v8, v9

    if-ge v8, v11, :cond_3

    .line 327
    move-object v3, v1

    .line 338
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 339
    move-object v3, v1

    .line 341
    :cond_1
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    iget v9, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v9, v9

    iget v11, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-static {v8, v7, v9, v10}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 342
    const-string v8, "CameraWidget_tag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "origin previewSize.height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " previewSize.width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-eqz v3, :cond_2

    .line 344
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v9, v3, Landroid/hardware/Camera$Size;->width:I

    iget v10, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9, v10}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 345
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 347
    :cond_2
    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateDispalaySize(Landroid/hardware/Camera$Size;)V

    .line 348
    const-string v8, "CameraWidget_tag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "camerasize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " previewSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void

    .line 329
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 330
    .local v5, size:Landroid/hardware/Camera$Size;
    const-string v8, "CameraWidget_tag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v8, v9

    sub-int v8, v11, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 332
    .local v2, offset:I
    const v8, 0x7a120

    if-ge v2, v8, :cond_4

    .line 333
    move-object v3, v5

    .line 334
    goto/16 :goto_0
.end method

.method private updateDefultFace()V
    .locals 3

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    move-result-object v1

    .line 773
    .local v1, instance:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->getDefultFace()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 774
    .local v0, defultFace:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 775
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 777
    :cond_0
    return-void
.end method

.method private updateDispalaySize(Landroid/hardware/Camera$Size;)V
    .locals 5
    .parameter "previewSize"

    .prologue
    .line 352
    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreviewRealWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 353
    .local v1, scale:F
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreviewRealWidth:I

    .line 354
    .local v0, height:I
    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v2, v3

    .line 355
    .local v2, width:I
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mDispalayPreviewSize:Landroid/hardware/Camera$Size;

    .line 356
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mDispalayPreviewSize:Landroid/hardware/Camera$Size;

    iput v0, v3, Landroid/hardware/Camera$Size;->height:I

    .line 357
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mDispalayPreviewSize:Landroid/hardware/Camera$Size;

    iput v2, v3, Landroid/hardware/Camera$Size;->width:I

    .line 358
    return-void
.end method

.method private updateNewPhoto()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->getAllPhotoInBackGround(Landroid/os/Handler;Landroid/content/Context;Z)V

    .line 254
    return-void
.end method

.method private updatePhotoContainer()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPhotoContainer:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->removeAllViews()V

    .line 144
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->currPhoto:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->currPhoto:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mGotoGallery:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mEmptyPhoto:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPhotoContainer:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->currPhoto:Ljava/util/List;

    const v2, 0x7f0300bb

    invoke-virtual {v0, v1, v2, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->addAllImages(Ljava/util/List;ILcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    .line 152
    const-string v0, "BumpListView"

    const-string v1, "INIT_PHOTO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mGotoGallery:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mEmptyPhoto:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePhotos()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->getAllPhotoInBackGround(Landroid/os/Handler;Landroid/content/Context;Z)V

    .line 250
    return-void
.end method

.method private updateTimeView()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTimeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setTime(J)V

    .line 246
    return-void
.end method


# virtual methods
.method public getImageRatio()F
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mRatio:F

    return v0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "b"
    .parameter "camera"

    .prologue
    .line 728
    const-string v0, "CameraWidget_tag"

    const-string v1, "onAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void
.end method

.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 5
    .parameter "b"
    .parameter "camera"

    .prologue
    const/4 v2, 0x0

    .line 707
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mAutoFocusView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v2

    .line 709
    if-eqz p1, :cond_0

    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mAutoFocusView:Landroid/widget/ImageView;

    const v3, 0x7f0201c2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 711
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 713
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 714
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 722
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    const-string v1, "CameraWidget_tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAutoFocusMoving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void

    .line 716
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mAutoFocusView:Landroid/widget/ImageView;

    const v3, 0x7f0201c3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 717
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 718
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 719
    .restart local v0       #message:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 720
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 722
    .end local v0           #message:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 502
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0x15f90

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 504
    return-void

    .line 458
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    monitor-enter v3

    .line 459
    :try_start_0
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->checkSdState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreview:Landroid/view/TextureView;

    if-eqz v2, :cond_1

    .line 461
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->takePicture()V

    .line 466
    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 464
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c02ff

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 470
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraAndHidePreview()V

    .line 471
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateDefultFace()V

    goto :goto_0

    .line 475
    :pswitch_3
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCurrCameraId:I

    if-nez v2, :cond_3

    .line 476
    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateCameraAndPreview(I)Z

    goto :goto_0

    .line 478
    :cond_3
    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateCameraAndPreview(I)Z

    goto :goto_0

    .line 483
    :pswitch_4
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreview:Landroid/view/TextureView;

    if-eqz v2, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateCameraAndPreview(I)Z

    move-result v1

    .line 485
    .local v1, updateCamera:Z
    if-eqz v1, :cond_4

    .line 486
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateCameraCount()I

    .line 487
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 488
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTimeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setVisibility(I)V

    goto :goto_0

    .line 490
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c02ec

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 497
    .end local v1           #updateCamera:Z
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.baidu.gallery.action.LOCAL_ALBUM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x7f080247
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestory()V
    .locals 0

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraOnMainThread()V

    .line 809
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 700
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 701
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopTime(Landroid/content/Context;)V

    .line 702
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->unRegistPhotoObsever()V

    .line 703
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 190
    const-string v0, "CameraWidget_tag"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    .line 192
    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTopView:Landroid/view/View;

    .line 193
    const v0, 0x7f080249

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 194
    const v0, 0x7f080253

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPhotoContainer:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

    .line 195
    const v0, 0x7f08024d

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mSwitchCameraButton:Landroid/widget/ImageView;

    .line 196
    const v0, 0x7f08024b

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreview:Landroid/view/TextureView;

    .line 197
    const v0, 0x7f08024a

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mOpenCamera:Landroid/widget/ImageView;

    .line 198
    const v0, 0x7f080255

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;

    .line 199
    const v0, 0x7f08024c

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mStopButton:Landroid/widget/ImageView;

    .line 200
    const v0, 0x7f080247

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mGotoGallery:Landroid/view/View;

    .line 201
    const v0, 0x7f08024e

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTimeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;

    .line 202
    const v0, 0x7f080252

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mBumpScrollView:Landroid/widget/ScrollView;

    .line 203
    const v0, 0x7f08024f

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mAutoFocusView:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f080251

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mScrollContainer:Landroid/view/View;

    .line 205
    const v0, 0x7f080250

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mToastView:Landroid/view/View;

    .line 206
    const v0, 0x7f080254

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingFlag:Landroid/widget/ImageView;

    .line 207
    const v0, 0x7f080256

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mEmptyPhoto:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mOpenCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mSwitchCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mGotoGallery:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 214
    invoke-virtual {p0, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 215
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateTimeView()V

    .line 216
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateUI()V

    .line 217
    const-string v0, "CameraWidget_tag"

    const-string v1, "onFinishInflate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->startTime(Landroid/content/Context;)V

    .line 219
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->registPhotoObserver()V

    .line 220
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->initWorkingImages()V

    .line 221
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surfaceTexture"

    .prologue
    .line 398
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraOnMainThread()V

    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraOnMainThread()V

    .line 852
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 853
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .parameter "bytes"
    .parameter "camera"

    .prologue
    const/4 v7, 0x0

    .line 574
    const-string v4, "CameraWidget_tag"

    const-string v5, "onPictureTaken"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 577
    const v4, 0x4c4b40

    invoke-static {p1, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 579
    :cond_0
    if-eqz v0, :cond_1

    .line 580
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCameraOrientation:I

    invoke-static {v0, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreviewRealHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mRatio:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 582
    .local v3, y:I
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreviewRealHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mRatio:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 583
    .local v1, height:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v0, v7, v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 584
    .local v2, imageBitmap:Landroid/graphics/Bitmap;
    const-string v4, "CameraWidget_tag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmap.getWidth() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mRatio = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iput-boolean v7, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->isCanUpdate:Z

    .line 586
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v2, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->saveBitmap(Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;J)V

    .line 587
    monitor-enter p0

    .line 588
    :try_start_0
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$4;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$4;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    const-wide/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 598
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->startPhotoAnim(Landroid/graphics/Bitmap;)V

    .line 601
    .end local v1           #height:I
    .end local v2           #imageBitmap:Landroid/graphics/Bitmap;
    .end local v3           #y:I
    :cond_1
    return-void

    .line 598
    .restart local v1       #height:I
    .restart local v2       #imageBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #y:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0
    .parameter "bytes"
    .parameter "camera"

    .prologue
    .line 452
    return-void
.end method

.method public onScroll(Z)V
    .locals 3
    .parameter "scrolling"

    .prologue
    .line 800
    const-string v0, "CameraWidget_tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrolling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraOnMainThread()V

    .line 804
    :cond_0
    return-void
.end method

.method public onShutter()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public onSnapTo(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 832
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mScreen:I

    if-eq p1, v0, :cond_0

    .line 833
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraOnMainThread()V

    .line 834
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 843
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter "surfaceTexture"
    .parameter "i"
    .parameter "i2"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 390
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->initPreview(Landroid/graphics/SurfaceTexture;)V

    .line 393
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraInOtherThread()V

    .line 437
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surfaceTexture"
    .parameter "i"
    .parameter "i2"

    .prologue
    .line 430
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surfaceTexture"

    .prologue
    .line 443
    return-void
.end method

.method public onWhichScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 857
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mScreen:I

    .line 858
    return-void
.end method

.method public onWidgetAdded()V
    .locals 0

    .prologue
    .line 786
    return-void
.end method

.method public onWidgetBinded()V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method public onWidgetRemoved()V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraOnMainThread()V

    .line 796
    return-void
.end method

.method public startTime(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 749
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 750
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTimeEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 755
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->isRegist:Z

    .line 756
    return-void
.end method

.method public stopCameraAndHidePreview()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 507
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraInOtherThread()V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mSwitchCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTimeView:Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/TimeView;->setVisibility(I)V

    .line 515
    return-void
.end method

.method public stopTime(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTimeEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->isRegist:Z

    if-eqz v0, :cond_0

    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTimeEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 762
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateUI()V
    .locals 0

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateDefultFace()V

    .line 768
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updatePhotos()V

    .line 769
    return-void
.end method
