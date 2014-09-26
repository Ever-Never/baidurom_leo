.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;
.super Landroid/widget/LinearLayout;
.source "OneKeyWidgetSmall.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$BaiduWidgetView;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BAIDU_WIDGET_ID:I = 0x3

.field private static final NO_PROGRESS_ANIMATION:I = 0x0

.field private static final PROGRESS_ANIMATION_DOWN:I = 0x1

.field private static final PROGRESS_ANIMATION_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OneKeyWidgetSmall"


# instance fields
.field private mCleanAllOperationOver:Z

.field private mContainer:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mMemoryFreeSize:I

.field private mMemoryUsedSize:I

.field private mOldPercent:I

.field private mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

.field private mProgressAnimationStatus:I

.field private mProgressBar:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;

.field private mProgressDeltaInAnimation:I

.field private mProgressInAnimation:I

.field private mProgressText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressAnimationStatus:I

    .line 36
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressDeltaInAnimation:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mCleanAllOperationOver:Z

    .line 56
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressAnimationStatus:I

    .line 36
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressDeltaInAnimation:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mCleanAllOperationOver:Z

    .line 56
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressAnimationStatus:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->updateUIAnimation()V

    return-void
.end method

.method static synthetic access$202(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mCleanAllOperationOver:Z

    return p1
.end method

.method private processOneKeyClear()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->cleanAllApps(Landroid/os/Handler;)V

    .line 123
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->startProgressAnimation()V

    .line 124
    return-void
.end method

.method private showTips(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    return-void
.end method

.method private startProgressAnimation()V
    .locals 6

    .prologue
    const/16 v5, 0x2714

    const/4 v4, 0x0

    .line 127
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressAnimationStatus:I

    if-eqz v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryFreeSize:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mOldPercent:I

    .line 133
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 138
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 139
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mCleanAllOperationOver:Z

    .line 140
    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressAnimationStatus:I

    .line 141
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryFreeSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    goto :goto_0
.end method

.method private stopProgressAnimation()V
    .locals 5

    .prologue
    .line 145
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2714

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mContainer:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 147
    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressAnimationStatus:I

    .line 149
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getReleasedSize()I

    move-result v0

    .line 151
    .local v0, memorySizeReleased:I
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryFreeSize:I

    add-int/2addr v3, v4

    div-int v1, v2, v3

    .line 153
    .local v1, newPercent:I
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mOldPercent:I

    if-ne v2, v1, :cond_1

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0154

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->showTips(Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0152

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0153

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDataAndUI()V
    .locals 5

    .prologue
    .line 202
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressAnimationStatus:I

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryFreeSize:I

    .line 205
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemTotalSize()J

    move-result-wide v1

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryFreeSize:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    .line 207
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryFreeSize:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .line 208
    .local v0, progress:I
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->updateProgressText(I)V

    .line 209
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->updateProgressBar(I)V

    .line 211
    .end local v0           #progress:I
    :cond_0
    return-void
.end method

.method private updateProgressBar(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressBar:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;->setProgress(I)V

    .line 215
    return-void
.end method

.method private updateProgressText(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method private updateUIAnimation()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 168
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressAnimationStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 169
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressDeltaInAnimation:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    .line 171
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    if-gez v1, :cond_0

    .line 172
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    .line 173
    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressAnimationStatus:I

    .line 176
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->updateProgressText(I)V

    .line 177
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->updateProgressBar(I)V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressAnimationStatus:I

    if-ne v1, v3, :cond_1

    .line 180
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressDeltaInAnimation:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    .line 182
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryFreeSize:I

    .line 183
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemTotalSize()J

    move-result-wide v1

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryFreeSize:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    .line 185
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryUsedSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mMemoryFreeSize:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .line 187
    .local v0, newProgress:I
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    if-le v1, v0, :cond_3

    .line 188
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    .line 190
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mCleanAllOperationOver:Z

    if-eqz v1, :cond_3

    .line 191
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->stopProgressAnimation()V

    goto :goto_0

    .line 196
    :cond_3
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->updateProgressText(I)V

    .line 197
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->updateProgressBar(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 93
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->onOneKeyWidgetAdd()V

    .line 94
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->processOneKeyClear()V

    .line 119
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetManager;->onOneKeyWidgetRemove()V

    .line 100
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 106
    const v0, 0x7f08027c

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mContainer:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f08027d

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressText:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f080227

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressBar:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CircleProgressBar;

    .line 112
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    .line 113
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->updateDataAndUI()V

    .line 114
    return-void
.end method

.method public update(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 224
    const-string v1, "com.baidu.launcher.memoryInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 226
    const-string v1, "OneKeyWidgetSmall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " update bundle == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->updateDataAndUI()V

    goto :goto_0
.end method
