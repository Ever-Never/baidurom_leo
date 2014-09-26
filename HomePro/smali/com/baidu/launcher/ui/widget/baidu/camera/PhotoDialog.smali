.class public Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;
.super Landroid/app/Dialog;
.source "PhotoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoDialog"


# instance fields
.field private mCameraWidget:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

.field private mContext:Landroid/content/Context;

.field private mDeletionDialog:Landroid/app/AlertDialog;

.field private mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

.field private mPhotoDAOManager:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

.field private mPhotoImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V
    .locals 0
    .parameter "context"
    .parameter "theme"
    .parameter "photo"
    .parameter "cameraWidget"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 40
    iput-object p4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mCameraWidget:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    .line 41
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 46
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhotoDAOManager:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showDeleteDialog()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x5030031

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 106
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 107
    const v1, 0x7f0c02eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 108
    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 109
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    const v1, 0x7f0c00b6

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$2;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    const v1, 0x7f0c00b7

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$3;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$3;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mDeletionDialog:Landroid/app/AlertDialog;

    .line 136
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mDeletionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 137
    return-void
.end method

.method private showEditDialog()V
    .locals 4

    .prologue
    .line 91
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method private showSharedDialog()V
    .locals 4

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mDeletionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mDeletionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mCameraWidget:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateUI()V

    .line 146
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhotoDAOManager:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->setDefultFace(Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)V

    .line 73
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->dismiss()V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->showEditDialog()V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->showDeleteDialog()V

    goto :goto_0

    .line 85
    :pswitch_3
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->showSharedDialog()V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x7f08025d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v5, 0x7f0300bd

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->setContentView(I)V

    .line 53
    const v5, 0x7f08025c

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhotoImage:Landroid/widget/ImageView;

    .line 54
    const v5, 0x7f08025d

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v5, 0x7f08025e

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v5, 0x7f08025f

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v5, 0x7f080260

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 60
    .local v4, mPhotoImageWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 61
    .local v1, bitmapWidth:I
    int-to-float v5, v4

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 62
    .local v2, f:F
    invoke-static {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 63
    .local v3, imageBitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhotoImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhotoDAOManager:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    .line 66
    return-void
.end method
