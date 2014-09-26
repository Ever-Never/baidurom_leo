.class Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;
.super Landroid/os/AsyncTask;
.source "TransparentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/util/TransparentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/util/TransparentHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 154
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->index:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 158
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->index:I

    .line 159
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 165
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 161
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/util/TransparentHelper;->isBaiduLauncherOnTop()Z

    move-result v0

    .line 162
    .local v0, result:Z
    new-array v1, v2, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Boolean;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 170
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    const/16 v1, 0xff

    #calls: Lcom/android/systemui/statusbar/util/TransparentHelper;->animateTransparent(II)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/util/TransparentHelper;->access$300(Lcom/android/systemui/statusbar/util/TransparentHelper;II)V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    #getter for: Lcom/android/systemui/statusbar/util/TransparentHelper;->mPreHomeTransluentRate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/util/TransparentHelper;->access$400(Lcom/android/systemui/statusbar/util/TransparentHelper;)I

    move-result v1

    #calls: Lcom/android/systemui/statusbar/util/TransparentHelper;->animateTransparent(II)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/util/TransparentHelper;->access$300(Lcom/android/systemui/statusbar/util/TransparentHelper;II)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->onProgressUpdate([Ljava/lang/Boolean;)V

    return-void
.end method
