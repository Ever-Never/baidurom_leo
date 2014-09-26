.class Lcom/baidu/launcher/ui/dragdrop/DragLayer$WallpaperObserver;
.super Landroid/content/BroadcastReceiver;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/dragdrop/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$WallpaperObserver;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$WallpaperObserver;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$WallpaperObserver;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->postInvalidate()V

    .line 111
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 112
    return-void
.end method
