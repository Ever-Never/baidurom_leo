.class public Lcom/baidu/launcher/feedback/FeedBackPostInfo;
.super Ljava/lang/Object;
.source "FeedBackPostInfo.java"


# instance fields
.field private age:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private gender:I

.field private model:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private pname:Ljava/lang/String;

.field private qq:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private sysver:Ljava/lang/String;

.field private vercode:Ljava/lang/String;

.field private verno:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "baidulauncher"

    iput-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->pname:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->gender:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->pname:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getSysver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->sysver:Ljava/lang/String;

    return-object v0
.end method

.method public getVercode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->vercode:Ljava/lang/String;

    return-object v0
.end method

.method public getVerno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->verno:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->age:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->content:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->email:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 116
    iput p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->gender:I

    .line 117
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->model:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->phone:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setPname(Ljava/lang/String;)V
    .locals 0
    .parameter "pname"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->pname:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0
    .parameter "qq"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->qq:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->resolution:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSysver(Ljava/lang/String;)V
    .locals 0
    .parameter "sysver"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->sysver:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setVercode(Ljava/lang/String;)V
    .locals 0
    .parameter "vercode"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->vercode:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setVerno(Ljava/lang/String;)V
    .locals 0
    .parameter "verno"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->verno:Ljava/lang/String;

    .line 45
    return-void
.end method
