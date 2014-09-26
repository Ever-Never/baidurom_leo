.class public Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic;
.super Ljava/lang/Object;
.source "CellDynamic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$FlickerEffect;,
        Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;,
        Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;,
        Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method

.method public static ClickEffect(Landroid/view/View;)Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;
    .locals 1
    .parameter "view"

    .prologue
    .line 12
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static FlickerEffect(Landroid/view/View;J)Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;
    .locals 1
    .parameter "view"
    .parameter "delay"

    .prologue
    .line 16
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$FlickerEffect;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$FlickerEffect;-><init>(Landroid/view/View;J)V

    goto :goto_0
.end method
