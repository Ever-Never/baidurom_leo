.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;
.super Landroid/widget/LinearLayout;
.source "OneKeyWidgetMedium.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$BaiduWidgetView;


# static fields
.field public static final BAIDU_WIDGET_ID:I = 0x2

.field private static final NO_PROGRESS_ANIMATION:I = 0x0

.field private static final PROGRESS_ANIMATION_DOWN:I = 0x1

.field private static final PROGRESS_ANIMATION_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OneKeyWidgetBar"


# instance fields
.field private mAdvancedBtn:Landroid/widget/ImageButton;

.field private mCleanAllOperationOver:Z

.field public mHandler:Landroid/os/Handler;

.field private mMemoryBar:Landroid/widget/ImageView;

.field private mMemoryFreeSize:I

.field private mMemoryUsedSize:I

.field private mOnekeyBtn:Landroid/widget/ImageButton;

.field private mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

.field private mProgressAnimationStatus:I

.field private mProgressBitmap:Landroid/graphics/Bitmap;

.field private mProgressDeltaInAnimation:I

.field private mProgressInAnimation:I

.field private mProgressLayout:Landroid/view/View;

.field private mRemainText:Landroid/widget/TextView;

.field private mShowPercentTips:Z

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTipsText:Landroid/widget/TextView;

.field private mUseText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I

    .line 37
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressDeltaInAnimation:I

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 52
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mCleanAllOperationOver:Z

    .line 53
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mShowPercentTips:Z

    .line 66
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I

    .line 37
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressDeltaInAnimation:I

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 52
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mCleanAllOperationOver:Z

    .line 53
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mShowPercentTips:Z

    .line 66
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I

    .line 37
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressDeltaInAnimation:I

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 52
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mCleanAllOperationOver:Z

    .line 53
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mShowPercentTips:Z

    .line 66
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateUIInAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mShowPercentTips:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateMemoryTips()V

    return-void
.end method

.method static synthetic access$402(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mCleanAllOperationOver:Z

    return p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    return v0
.end method

.method static synthetic access$502(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    return p1
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    return-object v0
.end method

.method static synthetic access$702(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    return p1
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->onInitial()V

    return-void
.end method

.method private onInitial()V
    .locals 5

    .prologue
    .line 147
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    .line 148
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemTotalSize()J

    move-result-wide v1

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    .line 150
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .line 151
    .local v0, rate:I
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateMemoryBar(I)V

    .line 152
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateMemoryTips()V

    .line 153
    return-void
.end method

.method private processOneKeyClear()V
    .locals 4

    .prologue
    const/16 v3, 0x3ed

    .line 189
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 190
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->isSystemClean()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mTipsText:Landroid/widget/TextView;

    const v2, 0x7f0c0155

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 196
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 197
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 205
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 206
    return-void

    .line 200
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mCleanAllOperationOver:Z

    .line 201
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->resetSystemCleanDelayed()V

    .line 202
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->cleanAllApps(Landroid/os/Handler;)V

    .line 203
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->startProgressAnimation()V

    goto :goto_0
.end method

.method private startProgressAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 209
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 210
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x2714

    iput v1, v0, Landroid/os/Message;->what:I

    .line 211
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 213
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOnekeyBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 214
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mUseText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I

    .line 218
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    .line 219
    return-void
.end method

.method private stopProgressAnimation()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 222
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2714

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mUseText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOnekeyBtn:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 228
    iput v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I

    .line 229
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mShowPercentTips:Z

    .line 230
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateMemoryTips()V

    .line 232
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getReleasedSize()I

    move-result v0

    .line 234
    .local v0, memorySizeReleased:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    if-nez v0, :cond_0

    .line 236
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mTipsText:Landroid/widget/TextView;

    const v3, 0x7f0c0154

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 243
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 244
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3ed

    iput v2, v1, Landroid/os/Message;->what:I

    .line 245
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 246
    return-void

    .line 238
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mTipsText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0152

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0153

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateMemoryBar(I)V
    .locals 3
    .parameter "progress"

    .prologue
    const v2, 0x7f0202f1

    .line 285
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressBitmap:Landroid/graphics/Bitmap;

    .line 289
    :cond_0
    const/16 v1, 0x50

    if-ge p1, v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 298
    .local v0, width:I
    int-to-float v1, p1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 299
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 301
    :goto_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 302
    return-void

    .line 291
    .end local v0           #width:I
    :cond_1
    const/16 v1, 0x5a

    if-ge p1, v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryBar:Landroid/widget/ImageView;

    const v2, 0x7f0202f2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryBar:Landroid/widget/ImageView;

    const v2, 0x7f0202f3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 299
    .restart local v0       #width:I
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_1
.end method

.method private updateMemoryTips()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 305
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I

    if-eqz v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mUseText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mUseText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mRemainText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mShowPercentTips:Z

    if-eqz v1, :cond_0

    .line 317
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .line 318
    .local v0, rate:I
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateTipsText(I)V

    goto :goto_0
.end method

.method private updateTipsText(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 324
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0151

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mTipsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method

.method private updateUIInAnimation()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 249
    const/4 v1, 0x1

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I

    if-ne v1, v2, :cond_2

    .line 251
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressDeltaInAnimation:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    .line 253
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    if-gez v1, :cond_0

    .line 254
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    .line 255
    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I

    .line 258
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateTipsText(I)V

    .line 259
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateMemoryBar(I)V

    .line 282
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I

    if-ne v3, v1, :cond_1

    .line 262
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressDeltaInAnimation:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    .line 265
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    .line 266
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemTotalSize()J

    move-result-wide v1

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    .line 268
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .line 270
    .local v0, newProgress:I
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    if-lt v1, v0, :cond_3

    .line 271
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    .line 273
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mCleanAllOperationOver:Z

    if-eqz v1, :cond_3

    .line 274
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->stopProgressAnimation()V

    goto :goto_0

    .line 279
    :cond_3
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateTipsText(I)V

    .line 280
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateMemoryBar(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->onOneKeyWidgetAdd()V

    .line 132
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 143
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->processOneKeyClear()V

    goto :goto_0

    .line 113
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "com.baidu.launcher.memoryUsedSize"

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string v2, "com.baidu.launcher.memoryFreeSize"

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mContext:Landroid/content/Context;

    const-class v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x7f080275
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 159
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->onOneKeyWidgetRemove()V

    .line 160
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 165
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 166
    const v0, 0x7f080277

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mTipsText:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mTipsText:Landroid/widget/TextView;

    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    const v0, 0x7f080279

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryBar:Landroid/widget/ImageView;

    .line 170
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryBar:Landroid/widget/ImageView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 172
    const v0, 0x7f08027a

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mUseText:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mUseText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    const v0, 0x7f08027b

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mRemainText:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    const v0, 0x7f080275

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOnekeyBtn:Landroid/widget/ImageButton;

    .line 179
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOnekeyBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f080276

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mAdvancedBtn:Landroid/widget/ImageButton;

    .line 181
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mAdvancedBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v0, 0x7f080278

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressLayout:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    .line 185
    return-void
.end method

.method public update(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 330
    const-string v2, "com.baidu.launcher.memoryInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 332
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 333
    const-string v2, "OneKeyWidgetBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update bundle == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    const-string v2, "com.baidu.launcher.memoryUsedSize"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    .line 338
    const-string v2, "com.baidu.launcher.memoryFreeSize"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    .line 340
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I

    if-nez v2, :cond_0

    .line 341
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I

    add-int/2addr v3, v4

    div-int v1, v2, v3

    .line 342
    .local v1, rate:I
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateMemoryBar(I)V

    .line 343
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateMemoryTips()V

    goto :goto_0
.end method
