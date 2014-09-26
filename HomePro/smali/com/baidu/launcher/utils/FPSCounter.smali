.class public Lcom/baidu/launcher/utils/FPSCounter;
.super Ljava/lang/Object;
.source "FPSCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/utils/FPSCounter$FPSView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 39
    const v2, 0x198249

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, fps:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 42
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public static enable(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, -0x1

    .line 27
    const v3, 0x198249

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 28
    .local v1, fps:Landroid/view/View;
    if-nez v1, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    .local v0, decorView:Landroid/view/ViewGroup;
    new-instance v1, Lcom/baidu/launcher/utils/FPSCounter$FPSView;

    .end local v1           #fps:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/baidu/launcher/utils/FPSCounter$FPSView;-><init>(Landroid/content/Context;)V

    .line 31
    .restart local v1       #fps:Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 32
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v3, v1

    .line 33
    check-cast v3, Lcom/baidu/launcher/utils/FPSCounter$FPSView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 34
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 36
    .end local v0           #decorView:Landroid/view/ViewGroup;
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method
