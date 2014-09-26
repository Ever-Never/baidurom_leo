.class public interface abstract Lcom/baidu/launcher/ui/logic/IBaseView;
.super Ljava/lang/Object;
.source "IBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;
    }
.end annotation


# virtual methods
.method public abstract completeFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;Landroid/content/Intent;)V
.end method

.method public abstract getID()I
.end method

.method public abstract hide(ZLjava/lang/Object;)V
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onMenu(Landroid/view/View$OnClickListener;)Landroid/view/View;
.end method

.method public abstract onNewIntent(Z)V
.end method

.method public abstract onWorkspaceChanged(I)V
.end method

.method public abstract setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
.end method

.method public abstract show(ZLjava/lang/Object;)V
.end method
