.class Lcom/android/systemui/statusbar/switcher/NightModeTracker$NightModeTask;
.super Landroid/os/AsyncTask;
.source "NightModeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/NightModeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NightModeTask"
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/NightModeTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/NightModeTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$NightModeTask;->this$0:Lcom/android/systemui/statusbar/switcher/NightModeTracker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 199
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/NightModeTracker$NightModeTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 202
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 204
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$NightModeTask;->this$0:Lcom/android/systemui/statusbar/switcher/NightModeTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->access$300(Lcom/android/systemui/statusbar/switcher/NightModeTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_mode_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/NightModeTracker$NightModeTask;->this$0:Lcom/android/systemui/statusbar/switcher/NightModeTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/NightModeTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/NightModeTracker;->access$300(Lcom/android/systemui/statusbar/switcher/NightModeTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
