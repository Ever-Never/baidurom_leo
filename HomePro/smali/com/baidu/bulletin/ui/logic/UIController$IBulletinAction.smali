.class public interface abstract Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/logic/UIController$IAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/logic/UIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBulletinAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;
    }
.end annotation


# virtual methods
.method public abstract addSettingsView(Z)V
.end method

.method public abstract closeOpWebView()V
.end method

.method public abstract isOpWebViewShown()Z
.end method

.method public abstract isSettingsShown()Z
.end method

.method public abstract isShowingAnimation()Z
.end method

.method public abstract onClicked()V
.end method

.method public abstract onNotifyNewMessage(I)V
.end method

.method public abstract onNotifyPageChanged()V
.end method

.method public abstract onProcessing()V
.end method

.method public abstract onRest()V
.end method

.method public abstract onServiceStarted()V
.end method

.method public abstract onShow()V
.end method

.method public abstract showBulletinSpace(Z)V
.end method

.method public abstract showDetailing(Z)V
.end method

.method public abstract showEmptyPage(ZLcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;)V
.end method

.method public abstract showOpWebView()V
.end method

.method public abstract showPageImages(I)V
.end method

.method public abstract showSettings(Z)Z
.end method

.method public abstract syncCurrentPage()V
.end method
