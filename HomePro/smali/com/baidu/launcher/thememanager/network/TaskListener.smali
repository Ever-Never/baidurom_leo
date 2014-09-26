.class public interface abstract Lcom/baidu/launcher/thememanager/network/TaskListener;
.super Ljava/lang/Object;
.source "TaskListener.java"


# virtual methods
.method public abstract taskCancelled(Lcom/baidu/launcher/thememanager/network/HttpTask;)V
.end method

.method public abstract taskCompleted(Lcom/baidu/launcher/thememanager/network/HttpTask;Lcom/baidu/launcher/thememanager/network/Response;)V
.end method

.method public abstract taskFailed(Lcom/baidu/launcher/thememanager/network/HttpTask;Ljava/lang/Throwable;)V
.end method

.method public abstract taskProgress(Lcom/baidu/launcher/thememanager/network/HttpTask;Lcom/baidu/launcher/thememanager/network/Progress;)V
.end method
