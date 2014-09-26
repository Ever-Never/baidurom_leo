.class Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$ProtectEyeTask;
.super Landroid/os/AsyncTask;
.source "ProtectEyesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProtectEyeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$ProtectEyeTask;->this$0:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$ProtectEyeTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 206
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$ProtectEyeTask;->this$0:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->access$300(Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "protect_eyes_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker$ProtectEyeTask;->this$0:Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;->access$300(Lcom/android/systemui/statusbar/switcher/ProtectEyesTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "protect_eyes"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
