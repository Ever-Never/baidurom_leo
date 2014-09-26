.class public Lcom/android/camera/PanoramaActivity;
.super Lcom/android/camera/ActivityBase;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/android/camera/ModePicker$OnModeChangeListener;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;,
        Lcom/android/camera/PanoramaActivity$MosaicJpeg;
    }
.end annotation


# static fields
.field private static final CAPTURE_STATE_MOSAIC:I = 0x1

.field private static final CAPTURE_STATE_VIEWFINDER:I = 0x0

.field public static final DEFAULT_BLEND_MODE:I = 0x3

.field public static final DEFAULT_CAPTURE_PIXELS:I = 0xa8c00

.field public static final DEFAULT_SWEEP_ANGLE:I = 0xa0

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x5

.field private static final MSG_GENERATE_FINAL_MOSAIC_ERROR:I = 0x3

.field private static final MSG_LOW_RES_FINAL_MOSAIC_READY:I = 0x1

.field private static final MSG_RESET_TO_PREVIEW:I = 0x4

.field private static final MSG_RESET_TO_PREVIEW_WITH_THUMBNAIL:I = 0x2

.field private static final NS2S:F = 1.0E-9f

.field private static final PANNING_SPEED_THRESHOLD:F = 20.0f

.field private static final PREVIEW_ACTIVE:I = 0x1

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "PanoramaActivity"


# instance fields
.field private mCameraOrientation:I

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCameraState:I

.field private mCancelComputation:Z

.field private mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mCaptureLayout:Landroid/view/View;

.field private mCaptureState:I

.field private mCompassThreshold:I

.field private mCompassValueX:F

.field private mCompassValueXStart:F

.field private mCompassValueXStartBuffer:F

.field private mCompassValueY:F

.field private mCompassValueYStart:F

.field private mCompassValueYStartBuffer:F

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mFastIndicationBorder:Landroid/view/View;

.field private mHorizontalViewAngle:F

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mLeftIndicator:Landroid/view/View;

.field private mMainHandler:Landroid/os/Handler;

.field private mModePicker:Lcom/android/camera/ModePicker;

.field private mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

.field private mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

.field private mPanoLayout:Landroid/view/View;

.field private mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPausing:Z

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mReview:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSharePopup:Lcom/android/camera/ui/SharePopup;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mThumbnail:Lcom/android/camera/Thumbnail;

.field private mThumbnailView:Lcom/android/camera/ui/RotateImageView;

.field private mTimeTaken:J

.field private mTimestamp:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mTransformMatrix:[F

.field private mTraversedAngleX:I

.field private mTraversedAngleY:I

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    .line 171
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->resetToPreview()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/camera/PanoramaActivity;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->startCameraPreview()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/PanoramaActivity;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/camera/PanoramaActivity;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/PanoramaActivity;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/PanoramaActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PanoramaActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/PanoramaActivity;FFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaActivity;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/PanoramaActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->showDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicFrameProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/PanoramaActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoramaActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/PanoProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/PanoramaActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientationAtCapture:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/PanoramaActivity;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaActivity;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/PanoramaActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/PanoramaActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPausing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->saveThumbnailToFile()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/ui/SharePopup;)Lcom/android/camera/ui/SharePopup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    return-object p1
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 256
    const/4 v0, 0x0

    new-instance v1, Lcom/android/camera/PanoramaActivity$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaActivity$1;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-static {p1, v0, v1}, Lcom/android/camera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 261
    const/4 v0, 0x1

    new-instance v1, Lcom/android/camera/PanoramaActivity$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaActivity$2;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-static {p1, v0, v1}, Lcom/android/camera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    .line 893
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 895
    monitor-exit v1

    .line 896
    return-void

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPausing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    goto :goto_0
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 440
    return-void
.end method

.method private createContentView()V
    .locals 13

    .prologue
    const v12, 0x7f090011

    const v11, 0x7f09000f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 680
    const v6, 0x7f04001e

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->setContentView(I)V

    .line 682
    iput v8, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 684
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 686
    .local v0, appRes:Landroid/content/res/Resources;
    const v6, 0x7f0f0042

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    .line 687
    const v6, 0x7f0f0046

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/PanoProgressBar;

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 688
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 689
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const v7, 0x7f090010

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 690
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    .line 691
    const v6, 0x7f090012

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColorFast:I

    .line 692
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v7, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v6, v7}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 693
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    new-instance v7, Lcom/android/camera/PanoramaActivity$9;

    invoke-direct {v7, p0}, Lcom/android/camera/PanoramaActivity$9;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 703
    const v6, 0x7f0f0047

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    .line 704
    const v6, 0x7f0f0048

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    .line 705
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 706
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 707
    const v6, 0x7f0f004e

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    .line 708
    const v6, 0x7f0f004a

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    .line 710
    const v6, 0x7f0f0053

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/PanoProgressBar;

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 711
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 712
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 713
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 714
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 716
    const v6, 0x7f0f004c

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/RotateLayout;

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 718
    const v6, 0x7f0f0082

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/RotateImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 719
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v6, v8}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 721
    const v6, 0x7f0f004f

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    .line 722
    const v6, 0x7f0f0055

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    .line 723
    const v6, 0x7f0f0049

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/MosaicRendererSurfaceView;

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    .line 724
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v6}, Lcom/android/camera/MosaicRendererSurfaceView;->getRenderer()Lcom/android/camera/MosaicRendererSurfaceViewRenderer;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/camera/MosaicRendererSurfaceViewRenderer;->setMosaicSurfaceCreateListener(Lcom/android/camera/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;)V

    .line 726
    const v6, 0x7f0f0035

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ModePicker;

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    .line 727
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v6, v8}, Lcom/android/camera/ModePicker;->setVisibility(I)V

    .line 728
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v6, p0}, Lcom/android/camera/ModePicker;->setOnModeChangeListener(Lcom/android/camera/ModePicker$OnModeChangeListener;)V

    .line 729
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v6, v10}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    .line 731
    const v6, 0x7f0f000e

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ShutterButton;

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 732
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v7, 0x7f02002e

    invoke-virtual {v6, v7}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 733
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v6, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 735
    const v6, 0x7f0f0059

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mPanoLayout:Landroid/view/View;

    .line 737
    new-instance v6, Lcom/android/camera/RotateDialogController;

    const v7, 0x7f040036

    invoke-direct {v6, p0, v7}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v6, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 739
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getRequestedOrientation()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 740
    const/16 v6, 0xa

    new-array v5, v6, [Lcom/android/camera/ui/Rotatable;

    const v6, 0x7f0f0045

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/Rotatable;

    aput-object v6, v5, v8

    const v6, 0x7f0f004d

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/Rotatable;

    aput-object v6, v5, v9

    const v6, 0x7f0f0050

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/Rotatable;

    aput-object v6, v5, v10

    const/4 v7, 0x3

    const v6, 0x7f0f0052

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/Rotatable;

    aput-object v6, v5, v7

    const/4 v7, 0x4

    const v6, 0x7f0f0057

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/Rotatable;

    aput-object v6, v5, v7

    const/4 v7, 0x5

    const v6, 0x7f0f0054

    invoke-virtual {p0, v6}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/Rotatable;

    aput-object v6, v5, v7

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v7, v5, v6

    .line 751
    .local v5, rotateLayout:[Lcom/android/camera/ui/Rotatable;
    move-object v1, v5

    .local v1, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 752
    .local v4, r:Lcom/android/camera/ui/Rotatable;
    const/16 v6, 0x10e

    invoke-interface {v4, v6}, Lcom/android/camera/ui/Rotatable;->setOrientation(I)V

    .line 751
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 755
    .end local v1           #arr$:[Lcom/android/camera/ui/Rotatable;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #r:Lcom/android/camera/ui/Rotatable;
    .end local v5           #rotateLayout:[Lcom/android/camera/ui/Rotatable;
    :cond_0
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .parameter
    .parameter "need4To3"
    .parameter "needSmaller"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v4, 0xa8c00

    .line 374
    .local v4, pixelsDiff:I
    const/4 v2, 0x0

    .line 375
    .local v2, hasFound:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 376
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 377
    .local v1, h:I
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    .line 379
    .local v6, w:I
    const v7, 0xa8c00

    mul-int v8, v1, v6

    sub-int v0, v7, v8

    .line 380
    .local v0, d:I
    if-eqz p3, :cond_1

    if-ltz v0, :cond_0

    .line 383
    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v6, 0x3

    if-ne v7, v8, :cond_0

    .line 386
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 387
    if-ge v0, v4, :cond_0

    .line 388
    iput v6, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    .line 389
    iput v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    .line 390
    move v4, v0

    .line 391
    const/4 v2, 0x1

    goto :goto_0

    .line 394
    .end local v0           #d:I
    .end local v1           #h:I
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #w:I
    :cond_3
    return v2
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 975
    sparse-switch p0, :sswitch_data_0

    .line 985
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 977
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 983
    :goto_0
    return-object v0

    .line 979
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 981
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 983
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 975
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 540
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 651
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 654
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 656
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    if-nez v0, :cond_2

    .line 998
    new-instance v0, Lcom/android/camera/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getPreviewBufSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/MosaicFrameProcessor;-><init>(III)V

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 1001
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->initialize()V

    goto :goto_0
.end method

.method private initThumbnailButton()V
    .locals 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "last_thumb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/Thumbnail;->loadFrom(Ljava/io/File;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 813
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->updateThumbnailButton()V

    .line 814
    return-void
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1168
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1169
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1161
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1162
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1164
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    .line 888
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 889
    return-void
.end method

.method private openCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 367
    .local v0, backCameraId:I
    invoke-static {p0, v0}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    .line 368
    invoke-static {v0}, Lcom/android/camera/Util;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraOrientation:I

    .line 369
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 359
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 360
    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    .line 363
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 923
    iput v2, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 925
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 927
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 931
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 932
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1157
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1158
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 935
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->reset()V

    .line 936
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/MosaicRendererSurfaceView;->onPause()V

    .line 938
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/MosaicRendererSurfaceView;->onResume()V

    .line 939
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->startCameraPreview()V

    .line 941
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    .line 883
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 884
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 13
    .parameter "jpegData"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 952
    if-eqz p1, :cond_1

    .line 953
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    invoke-static {v0, v2, v3}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    const/4 v4, 0x0

    move/from16 v5, p4

    move-object v6, p1

    move v7, p2

    move/from16 v8, p3

    invoke-static/range {v0 .. v8}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v12

    .line 957
    .local v12, uri:Landroid/net/Uri;
    if-eqz v12, :cond_0

    if-eqz p4, :cond_0

    .line 958
    invoke-static {v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 961
    .local v11, filepath:Ljava/lang/String;
    :try_start_0
    new-instance v10, Landroid/media/ExifInterface;

    invoke-direct {v10, v11}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 962
    .local v10, exif:Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    invoke-static/range {p4 .. p4}, Lcom/android/camera/PanoramaActivity;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-virtual {v10}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    .end local v1           #filename:Ljava/lang/String;
    .end local v10           #exif:Landroid/media/ExifInterface;
    .end local v11           #filepath:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v12

    .line 965
    .restart local v1       #filename:Ljava/lang/String;
    .restart local v11       #filepath:Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 966
    .local v9, e:Ljava/io/IOException;
    const-string v0, "PanoramaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot set exif data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 971
    .end local v1           #filename:Ljava/lang/String;
    .end local v9           #e:Ljava/io/IOException;
    .end local v11           #filepath:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private saveThumbnailToFile()V
    .locals 4

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "last_thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Thumbnail;->saveTo(Ljava/io/File;)V

    .line 833
    :cond_0
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SharePopup;->setOrientation(I)V

    .line 231
    :cond_0
    return-void
.end method

.method private setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surface"

    .prologue
    .line 1104
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->releaseCamera()V

    .line 1107
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewTexture failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->openCamera()V

    .line 351
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 352
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 353
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 354
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 399
    .local v5, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5, v10, v10}, Lcom/android/camera/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 400
    const-string v6, "PanoramaActivity"

    const-string v7, "No 4:3 ratio preview size supported."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0, v5, v9, v10}, Lcom/android/camera/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 402
    const-string v6, "PanoramaActivity"

    const-string v7, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0, v5, v9, v9}, Lcom/android/camera/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 406
    :cond_0
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v6, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 409
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 410
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 411
    .local v1, last:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 412
    .local v3, minFps:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v2, v6, v10

    .line 413
    .local v2, maxFps:I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 414
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 417
    .local v4, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 418
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 425
    :goto_0
    invoke-virtual {p1, v9}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 427
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F

    .line 428
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F

    .line 429
    return-void

    .line 421
    :cond_1
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDirectionIndicators(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 545
    packed-switch p1, :pswitch_data_0

    .line 559
    :goto_0
    return-void

    .line 547
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 551
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 555
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 944
    if-eqz p1, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 949
    return-void
.end method

.method private showSharePopup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 911
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v0, :cond_0

    .line 920
    :goto_0
    return-void

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 913
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/SharePopup;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 915
    :cond_1
    new-instance v0, Lcom/android/camera/ui/SharePopup;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PanoramaActivity;->mOrientationCompensation:I

    const v1, 0x7f0f0043

    invoke-virtual {p0, v1}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/SharePopup;-><init>(Landroid/app/Activity;Landroid/net/Uri;Landroid/graphics/Bitmap;ILandroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1, v6, v6, v6}, Lcom/android/camera/ui/SharePopup;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 643
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mFastIndicationBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 647
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 648
    return-void
.end method

.method private startCameraPreview()V
    .locals 3

    .prologue
    .line 1114
    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->stopCameraPreview()V

    .line 1119
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1121
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaActivity;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1124
    :try_start_0
    const-string v1, "PanoramaActivity"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    .line 1131
    return-void

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->releaseCamera()V

    .line 1128
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1135
    const-string v0, "PanoramaActivity"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1138
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    .line 1139
    return-void
.end method

.method private stopCapture(Z)V
    .locals 4
    .parameter "aborted"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 607
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 608
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 609
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->hideTooFastIndication()V

    .line 610
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->hideDirectionIndicators()V

    .line 611
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 613
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, v3}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 614
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->stopCameraPreview()V

    .line 616
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 618
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 620
    new-instance v0, Lcom/android/camera/PanoramaActivity$8;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$8;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModePicker;->setEnabled(Z)V

    .line 639
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V

    .line 640
    return-void
.end method

.method private switchToOtherMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 448
    :goto_0
    return v0

    .line 446
    :cond_0
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->finish()V

    .line 448
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateProgress(FFFF)V
    .locals 3
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"

    .prologue
    const/high16 v2, 0x41a0

    .line 660
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/MosaicRendererSurfaceView;->setReady()V

    .line 661
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/MosaicRendererSurfaceView;->requestRender()V

    .line 666
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 668
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->showTooFastIndication()V

    .line 672
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    float-to-int v0, p3

    .line 676
    .local v0, angleInMajorDirection:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 677
    return-void

    .line 670
    .end local v0           #angleInMajorDirection:I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->hideTooFastIndication()V

    goto :goto_0

    .line 672
    :cond_2
    float-to-int v0, p4

    goto :goto_1
.end method

.method private updateThumbnailButton()V
    .locals 3

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 819
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 820
    :cond_0
    invoke-static {v0}, Lcom/android/camera/Thumbnail;->getLastThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 822
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v1, :cond_2

    .line 823
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 827
    :goto_0
    return-void

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected doOnResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1029
    iput-boolean v2, p0, Lcom/android/camera/PanoramaActivity;->mPausing:Z

    .line 1030
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->enable()V

    .line 1032
    iput v2, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 1034
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->setupCamera()V

    .line 1038
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->initMosaicFrameProcessorIfNeeded()V

    .line 1039
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/MosaicRendererSurfaceView;->onResume()V

    .line 1041
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->initThumbnailButton()V

    .line 1042
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1051
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1052
    :goto_0
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    const v1, 0x7f0b0001

    invoke-static {p0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1046
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1047
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    const v1, 0x7f0b0002

    invoke-static {p0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public generateFinalMosaic(Z)Lcom/android/camera/PanoramaActivity$MosaicJpeg;
    .locals 13
    .parameter "highRes"

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 1063
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v2, p1}, Lcom/android/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v8

    .line 1064
    .local v8, mosaicReturnCode:I
    const/4 v2, -0x2

    if-ne v8, v2, :cond_0

    .line 1099
    :goto_0
    return-object v5

    .line 1066
    :cond_0
    const/4 v2, -0x1

    if-ne v8, v2, :cond_1

    .line 1067
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 1070
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v2}, Lcom/android/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1071
    .local v1, imageData:[B
    if-nez v1, :cond_2

    .line 1072
    const-string v2, "PanoramaActivity"

    const-string v5, "getFinalMosaicNV21() returned null."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 1076
    :cond_2
    array-length v2, v1

    add-int/lit8 v7, v2, -0x8

    .line 1077
    .local v7, len:I
    add-int/lit8 v2, v7, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v3, v2, v10

    .line 1079
    .local v3, width:I
    add-int/lit8 v2, v7, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x6

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x7

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v4, v2, v10

    .line 1081
    .local v4, height:I
    const-string v2, "PanoramaActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ImLength = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", W = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", H = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1085
    :cond_3
    const-string v2, "PanoramaActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "width|height <= 0!!, len = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", W = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", H = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto/16 :goto_0

    .line 1090
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1091
    .local v0, yuvimage:Landroid/graphics/YuvImage;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1092
    .local v9, out:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1094
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;[BII)V

    goto/16 :goto_0

    .line 1095
    :catch_0
    move-exception v6

    .line 1096
    .local v6, e:Ljava/lang/Exception;
    const-string v2, "PanoramaActivity"

    const-string v5, "Exception in storing final mosaic"

    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1097
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto/16 :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 432
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 433
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 435
    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1151
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1152
    :cond_0
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->cancelHighResComputation()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 273
    .local v1, window:Landroid/view/Window;
    invoke-static {v1}, Lcom/android/camera/Util;->enterLightsOutMode(Landroid/view/Window;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 276
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->createContentView()V

    .line 278
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/camera/PanoramaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 279
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    .line 280
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mSensor:Landroid/hardware/Sensor;

    .line 283
    :cond_0
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/camera/PanoramaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 284
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "Panorama"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 286
    new-instance v2, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-direct {v2, p0, p0}, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;-><init>(Lcom/android/camera/PanoramaActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    .line 288
    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mTransformMatrix:[F

    .line 290
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mDialogOkString:Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 296
    new-instance v2, Landroid/media/MediaActionSound;

    invoke-direct {v2}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    .line 298
    new-instance v2, Lcom/android/camera/PanoramaActivity$3;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaActivity$3;-><init>(Lcom/android/camera/PanoramaActivity;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    .line 347
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 237
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPausing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 537
    :goto_0
    monitor-exit p0

    return-void

    .line 522
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    new-instance v1, Lcom/android/camera/PanoramaActivity$6;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaActivity$6;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 532
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    if-nez v0, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->runViewFinder()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 535
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->runMosaicCapture()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onModeChanged(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 452
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 453
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->switchToOtherMode(I)Z

    move-result v0

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onMosaicSurfaceChanged()V
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lcom/android/camera/PanoramaActivity$4;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$4;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 473
    return-void
.end method

.method public onMosaicSurfaceCreated(I)V
    .locals 1
    .parameter "textureID"

    .prologue
    .line 477
    new-instance v0, Lcom/android/camera/PanoramaActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/PanoramaActivity$5;-><init>(Lcom/android/camera/PanoramaActivity;I)V

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1006
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 1008
    iput-boolean v1, p0, Lcom/android/camera/PanoramaActivity;->mPausing:Z

    .line 1010
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    if-ne v0, v1, :cond_0

    .line 1011
    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    .line 1012
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->reset()V

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSharePopup:Lcom/android/camera/ui/SharePopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/SharePopup;->dismiss()V

    .line 1016
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->saveThumbnailToFile()V

    .line 1018
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->releaseCamera()V

    .line 1019
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/MosaicRendererSurfaceView;->onPause()V

    .line 1020
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    .line 1021
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->disable()V

    .line 1022
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->resetScreenOn()V

    .line 1023
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1024
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1025
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 243
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 245
    iget v4, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v4, :cond_0

    move v1, v3

    .line 246
    .local v1, idle:Z
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 247
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 248
    .local v2, item:Landroid/view/MenuItem;
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 249
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    .end local v0           #i:I
    .end local v1           #idle:Z
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 252
    .restart local v0       #i:I
    .restart local v1       #idle:Z
    :cond_1
    return v3
.end method

.method public onShutterButtonClick()V
    .locals 2

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 766
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 767
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->startCapture()V

    goto :goto_0

    .line 770
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 771
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    goto :goto_0

    .line 764
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 777
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->showSharePopup()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1143
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 1144
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1145
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 780
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 781
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 782
    new-instance v0, Lcom/android/camera/PanoramaActivity$10;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$10;-><init>(Lcom/android/camera/PanoramaActivity;)V

    .line 805
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 806
    return-void
.end method

.method public runMosaicCapture()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicRendererSurfaceView;->setWarping(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicRendererSurfaceView;->preprocess([F)V

    .line 505
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/MosaicRendererSurfaceView;->lockPreviewReadyFlag()V

    .line 507
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/MosaicRendererSurfaceView;->transferGPUtoCPU()V

    .line 509
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/MosaicRendererSurfaceView;->waitUntilPreviewReady()V

    .line 510
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->processFrame()V

    .line 511
    return-void
.end method

.method public runViewFinder()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicRendererSurfaceView;->setWarping(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicRendererSurfaceView;->preprocess([F)V

    .line 495
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/MosaicRendererSurfaceView;->setReady()V

    .line 496
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicView:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/MosaicRendererSurfaceView;->requestRender()V

    .line 497
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 1

    .prologue
    .line 836
    new-instance v0, Lcom/android/camera/PanoramaActivity$11;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$11;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 878
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->reportProgress()V

    .line 879
    return-void
.end method

.method public startCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    iput-boolean v2, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    .line 565
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 566
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 567
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 568
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaActivity;->showDirectionIndicators(I)V

    .line 569
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 571
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCompassValueXStartBuffer:F

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCompassValueXStart:F

    .line 572
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCompassValueYStartBuffer:F

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCompassValueYStart:F

    .line 573
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PanoramaActivity;->mTimestamp:J

    .line 575
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    new-instance v1, Lcom/android/camera/PanoramaActivity$7;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaActivity$7;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 594
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModePicker;->setEnabled(Z)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 599
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 600
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 601
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 602
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientationAtCapture:I

    .line 603
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOn()V

    .line 604
    return-void
.end method
