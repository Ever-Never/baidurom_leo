.class final Lcom/android/server/power/ShutdownThread$3;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 167
    if-gez p2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, actions:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 173
    aget-object v1, v0, p2

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
