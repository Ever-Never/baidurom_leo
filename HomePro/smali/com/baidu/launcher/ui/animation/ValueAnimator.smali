.class public Lcom/baidu/launcher/ui/animation/ValueAnimator;
.super Lcom/baidu/launcher/ui/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;,
        Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimationHandler;
    }
.end annotation


# static fields
.field static final ANIMATION_FRAME:I = 0x1

.field static final ANIMATION_START:I = 0x0

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field private static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDelayedAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sEndingAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sFloatEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

.field private static sFrameDelay:J

.field private static final sIntEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

.field private static final sPendingAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sReadyAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mRunning:Z

.field mSeekTime:J

.field private mStartDelay:J

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 105
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator$1;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator$1;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    .line 114
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator$2;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator$2;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    .line 126
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator$3;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator$3;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    .line 134
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator$4;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator$4;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    .line 142
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator$5;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator$5;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    .line 151
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    new-instance v0, Lcom/baidu/launcher/ui/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/IntEvaluator;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sIntEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    .line 156
    new-instance v0, Lcom/baidu/launcher/ui/animation/FloatEvaluator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sFloatEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    .line 229
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/Animator;-><init>()V

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mSeekTime:J

    .line 162
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 168
    iput v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mCurrentIteration:I

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mCurrentFraction:F

    .line 178
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartedDelay:Z

    .line 194
    iput v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    .line 204
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRunning:Z

    .line 210
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStarted:Z

    .line 216
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInitialized:Z

    .line 223
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mDuration:J

    .line 226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartDelay:J

    .line 233
    iput v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRepeatCount:I

    .line 240
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRepeatMode:I

    .line 247
    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 291
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1000()J
    .locals 2

    .prologue
    .line 50
    sget-wide v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/animation/ValueAnimator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/animation/ValueAnimator;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/baidu/launcher/ui/animation/ValueAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method public static clearAllAnimations()V
    .locals 1

    .prologue
    .line 1256
    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1257
    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1258
    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1259
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 5
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x1

    .line 1078
    iget-boolean v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v3, :cond_1

    .line 1079
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartedDelay:Z

    .line 1080
    iput-wide p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mDelayStartTime:J

    .line 1091
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1082
    :cond_1
    iget-wide v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v3

    .line 1083
    .local v0, deltaTime:J
    iget-wide v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartDelay:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 1086
    iget-wide v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartDelay:J

    sub-long v3, v0, v3

    sub-long v3, p1, v3

    iput-wide v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartTime:J

    .line 1087
    iput v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    goto :goto_0
.end method

.method private endAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1032
    sget-object v3, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1033
    sget-object v3, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1034
    sget-object v3, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1035
    iput v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    .line 1036
    iget-boolean v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1037
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1039
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1040
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1041
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1044
    .end local v0           #i:I
    .end local v1           #numListeners:I
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    :cond_0
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRunning:Z

    .line 1045
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStarted:Z

    .line 1046
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    .prologue
    .line 1246
    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 722
    sget-wide v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method public static varargs ofFloat([F)Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 322
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    .line 323
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setFloatValues([F)V

    .line 324
    return-object v0
.end method

.method public static varargs ofInt([I)Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 305
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    .line 306
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setIntValues([I)V

    .line 307
    return-object v0
.end method

.method public static varargs ofObject(Lcom/baidu/launcher/ui/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .locals 1
    .parameter "evaluator"
    .parameter "values"

    .prologue
    .line 359
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    .line 360
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 361
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setEvaluator(Lcom/baidu/launcher/ui/animation/TypeEvaluator;)V

    .line 362
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 336
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    .line 337
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V

    .line 338
    return-object v0
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .parameter "frameDelay"

    .prologue
    .line 735
    sput-wide p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sFrameDelay:J

    .line 736
    return-void
.end method

.method private start(Z)V
    .locals 10
    .parameter "playBackwards"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 924
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 925
    new-instance v4, Landroid/util/AndroidRuntimeException;

    const-string v5, "Animators may only be run on Looper threads"

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 927
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 928
    iput v8, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mCurrentIteration:I

    .line 929
    iput v8, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    .line 930
    iput-boolean v9, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStarted:Z

    .line 931
    iput-boolean v8, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartedDelay:Z

    .line 932
    sget-object v4, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    iget-wide v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 935
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 936
    iput v8, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    .line 937
    iput-boolean v9, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRunning:Z

    .line 939
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 940
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 942
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 943
    .local v2, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 944
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/baidu/launcher/ui/animation/Animator;)V

    .line 943
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 948
    .end local v1           #i:I
    .end local v2           #numListeners:I
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    :cond_1
    sget-object v4, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimationHandler;

    .line 949
    .local v0, animationHandler:Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimationHandler;
    if-nez v0, :cond_2

    .line 950
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimationHandler;

    .end local v0           #animationHandler:Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimationHandler;
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimationHandler;-><init>(Lcom/baidu/launcher/ui/animation/ValueAnimator$1;)V

    .line 951
    .restart local v0       #animationHandler:Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimationHandler;
    sget-object v4, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 953
    :cond_2
    invoke-virtual {v0, v8}, Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    .line 954
    return-void
.end method

.method private startAnimation()V
    .locals 7

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->initAnimation()V

    .line 1054
    sget-object v3, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-wide v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1058
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1060
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1061
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1062
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/baidu/launcher/ui/animation/Animator;)V

    .line 1061
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1065
    .end local v0           #i:I
    .end local v1           #numListeners:I
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    return-void
.end method

.method animateValue(F)V
    .locals 4
    .parameter "fraction"

    .prologue
    .line 1176
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 1177
    iput p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mCurrentFraction:F

    .line 1178
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1179
    .local v2, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1180
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1182
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1183
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1184
    .local v1, numListeners:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1185
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1188
    .end local v1           #numListeners:I
    :cond_1
    return-void
.end method

.method animationFrame(J)Z
    .locals 11
    .parameter "currentTime"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    .line 1107
    const/4 v0, 0x0

    .line 1109
    .local v0, done:Z
    iget v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    .line 1110
    iput v5, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    .line 1111
    iget-wide v7, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mSeekTime:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_1

    .line 1112
    iput-wide p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartTime:J

    .line 1119
    :cond_0
    :goto_0
    iget v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    packed-switch v4, :pswitch_data_0

    .line 1150
    :goto_1
    return v0

    .line 1114
    :cond_1
    iget-wide v7, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mSeekTime:J

    sub-long v7, p1, v7

    iput-wide v7, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartTime:J

    .line 1116
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mSeekTime:J

    goto :goto_0

    .line 1122
    :pswitch_0
    iget-wide v7, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mDuration:J

    cmp-long v4, v7, v9

    if-lez v4, :cond_3

    iget-wide v7, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartTime:J

    sub-long v7, p1, v7

    long-to-float v4, v7

    iget-wide v7, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mDuration:J

    long-to-float v7, v7

    div-float v1, v4, v7

    .line 1123
    .local v1, fraction:F
    :goto_2
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_6

    .line 1124
    iget v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mCurrentIteration:I

    iget v7, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRepeatCount:I

    if-lt v4, v7, :cond_2

    iget v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRepeatCount:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_9

    .line 1126
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 1127
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1128
    .local v3, numListeners:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v3, :cond_4

    .line 1129
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/baidu/launcher/ui/animation/Animator;)V

    .line 1128
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1           #fraction:F
    .end local v2           #i:I
    .end local v3           #numListeners:I
    :cond_3
    move v1, v6

    .line 1122
    goto :goto_2

    .line 1132
    .restart local v1       #fraction:F
    :cond_4
    iget v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRepeatMode:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    .line 1133
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1135
    :cond_5
    iget v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mCurrentIteration:I

    .line 1136
    rem-float/2addr v1, v6

    .line 1137
    iget-wide v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartTime:J

    iget-wide v7, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mDuration:J

    add-long/2addr v4, v7

    iput-wide v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartTime:J

    .line 1143
    :cond_6
    :goto_5
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_7

    .line 1144
    sub-float v1, v6, v1

    .line 1146
    :cond_7
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1

    :cond_8
    move v4, v5

    .line 1133
    goto :goto_4

    .line 1139
    :cond_9
    const/4 v0, 0x1

    .line 1140
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5

    .line 1119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 965
    iget v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    if-nez v3, :cond_0

    sget-object v3, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 968
    :cond_0
    iget-boolean v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 969
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 971
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    .line 972
    .local v1, listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/baidu/launcher/ui/animation/Animator;)V

    goto :goto_0

    .line 975
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    :cond_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->endAnimation()V

    .line 977
    :cond_2
    return-void
.end method

.method public bridge synthetic clone()Lcom/baidu/launcher/ui/animation/Animator;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->clone()Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1192
    invoke-super {p0}, Lcom/baidu/launcher/ui/animation/Animator;->clone()Lcom/baidu/launcher/ui/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 1193
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    iget-object v7, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 1194
    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1195
    .local v5, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1196
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1197
    .local v3, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1198
    iget-object v7, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1201
    .end local v1           #i:I
    .end local v3           #numListeners:I
    .end local v5           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;>;"
    :cond_0
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mSeekTime:J

    .line 1202
    iput-boolean v9, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1203
    iput v9, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mCurrentIteration:I

    .line 1204
    iput-boolean v9, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInitialized:Z

    .line 1205
    iput v9, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    .line 1206
    iput-boolean v9, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartedDelay:Z

    .line 1207
    iget-object v6, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    .line 1208
    .local v6, oldValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    if-eqz v6, :cond_1

    .line 1209
    array-length v4, v6

    .line 1210
    .local v4, numValues:I
    new-array v7, v4, [Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    iput-object v7, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    .line 1211
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1212
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 1213
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1214
    .local v2, newValuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    iget-object v7, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aput-object v2, v7, v1

    .line 1215
    iget-object v7, v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1218
    .end local v1           #i:I
    .end local v2           #newValuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .end local v4           #numValues:I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->clone()Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 2

    .prologue
    .line 981
    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartedDelay:Z

    .line 984
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->startAnimation()V

    .line 990
    :cond_0
    :goto_0
    iget v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRepeatCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRepeatCount:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 991
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->animateValue(F)V

    .line 995
    :goto_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->endAnimation()V

    .line 996
    return-void

    .line 985
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    .line 993
    :cond_2
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 1160
    iget v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 755
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyName"

    .prologue
    .line 769
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    .line 770
    .local v0, valuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 774
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    .line 564
    :cond_0
    const-wide/16 v0, 0x0

    .line 566
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 531
    iget-wide v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 699
    iget-wide v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getValues()[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 497
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 498
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 499
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 500
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->init()V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInitialized:Z

    .line 504
    .end local v0           #i:I
    .end local v1           #numValues:I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1000
    iget v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 855
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 856
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public reverse()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1016
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1017
    iget v6, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    if-ne v6, v7, :cond_1

    .line 1018
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1019
    .local v2, currentTime:J
    iget-wide v6, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v6

    .line 1020
    .local v0, currentPlayTime:J
    iget-wide v6, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mDuration:J

    sub-long v4, v6, v0

    .line 1021
    .local v4, timeLeft:J
    sub-long v6, v2, v4

    iput-wide v6, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartTime:J

    .line 1025
    .end local v0           #currentPlayTime:J
    .end local v2           #currentTime:J
    .end local v4           #timeLeft:J
    :goto_1
    return-void

    .line 1016
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1023
    :cond_1
    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start(Z)V

    goto :goto_1
.end method

.method public setCurrentPlayTime(J)V
    .locals 4
    .parameter "playTime"

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->initAnimation()V

    .line 546
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 547
    .local v0, currentTime:J
    iget v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 548
    iput-wide p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mSeekTime:J

    .line 549
    const/4 v2, 0x2

    iput v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mPlayingState:I

    .line 551
    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartTime:J

    .line 552
    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->animationFrame(J)Z

    .line 553
    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/baidu/launcher/ui/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .locals 3
    .parameter "duration"

    .prologue
    .line 517
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_0
    iput-wide p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mDuration:J

    .line 522
    return-object p0
.end method

.method public setEvaluator(Lcom/baidu/launcher/ui/animation/TypeEvaluator;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 905
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setEvaluator(Lcom/baidu/launcher/ui/animation/TypeEvaluator;)V

    .line 908
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 408
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 412
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V

    .line 418
    :goto_1
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 414
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 415
    .local v0, valuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 380
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 384
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V

    .line 390
    :goto_1
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 387
    .local v0, valuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 872
    if-eqz p1, :cond_0

    .line 873
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 877
    :goto_0
    return-void

    .line 875
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 440
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 444
    :cond_2
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    const-string v3, ""

    const/4 v1, 0x0

    check-cast v1, Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    invoke-static {v3, v1, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V

    .line 451
    :goto_1
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 447
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v0, v1, v4

    .line 448
    .local v0, valuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatCount(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 787
    iput p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRepeatCount:I

    .line 788
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 807
    iput p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mRepeatMode:I

    .line 808
    return-void
.end method

.method public setStartDelay(J)V
    .locals 0
    .parameter "startDelay"

    .prologue
    .line 709
    iput-wide p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mStartDelay:J

    .line 710
    return-void
.end method

.method public varargs setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 463
    array-length v1, p1

    .line 464
    .local v1, numValues:I
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    .line 465
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 466
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 467
    aget-object v2, p1, v0

    .line 468
    .local v2, valuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v2           #valuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mInitialized:Z

    .line 472
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start(Z)V

    .line 959
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1264
    .local v1, returnVal:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 1265
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ValueAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1269
    .end local v0           #i:I
    :cond_0
    return-object v1
.end method
