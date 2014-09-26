.class Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$FlickerEffect;
.super Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;
.source "CellDynamic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlickerEffect"
.end annotation


# instance fields
.field private mOriginalAlpha:F


# direct methods
.method public constructor <init>(Landroid/view/View;J)V
    .locals 1
    .parameter "view"
    .parameter "delay"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;-><init>(Landroid/view/View;J)V

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$FlickerEffect;->mOriginalAlpha:F

    .line 191
    return-void
.end method


# virtual methods
.method protected getCurrentValue()F
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$FlickerEffect;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method protected getDestinationValue()F
    .locals 1

    .prologue
    .line 215
    const v0, 0x3e99999a

    return v0
.end method

.method protected getEffectedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$FlickerEffect;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getOriginalValue()F
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$FlickerEffect;->mOriginalAlpha:F

    return v0
.end method

.method protected getProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const-string v0, "alpha"

    return-object v0
.end method
