.class public abstract Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;
.super Ljava/lang/Object;
.source "CellDynamic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Effect"
.end annotation


# static fields
.field private static final TRANSPARENCE_ALPHA:F = 0.3f


# instance fields
.field private mEffectedView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;->mEffectedView:Landroid/view/View;

    .line 26
    return-void
.end method

.method protected static calculateRemainingDuration(FFFF)F
    .locals 2
    .parameter "duration"
    .parameter "from"
    .parameter "to"
    .parameter "current"

    .prologue
    .line 33
    sub-float v0, p3, p2

    mul-float/2addr v0, p0

    sub-float v1, p1, p2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;->mEffectedView:Landroid/view/View;

    return-object v0
.end method

.method public abstract onVisibilityChanged(I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
