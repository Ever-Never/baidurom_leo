.class final Lcom/baidu/launcher/ui/animation/ValueAnimator$3;
.super Ljava/lang/ThreadLocal;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator$3;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
