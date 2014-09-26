.class public Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;
.super Landroid/widget/FrameLayout;
.source "PhotoView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoView"


# instance fields
.field private mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getPhoto()Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    return-object v0
.end method

.method public setPhoto(Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)V
    .locals 3
    .parameter "photo"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 30
    const-string v0, "PhotoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoto = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoView;->mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
